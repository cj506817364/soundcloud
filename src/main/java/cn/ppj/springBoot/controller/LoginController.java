package cn.ppj.springBoot.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.hutool.core.io.resource.ResourceUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;
import cn.ppj.springBoot.service.LoginService;
import cn.ppj.springBoot.utils.SendMail;

@Controller
@RequestMapping("/login")
public class LoginController {


	@Autowired
	private LoginService loginService;

	@RequestMapping("/unLogin")
	public String unLogin() {
		return "/userLogin";
	}

	@RequestMapping("/toLogin")
	public String toLogin() {
		return "/signin";
	}

	@RequestMapping("/login")
	public String loginUser(String username, String password, Model model, HttpSession session) {

		User user = loginService.findUserByU_P(username, new Md5Hash(password, username, 3).toString());
		// System.out.println(user);
		if (user == null) {
			model.addAttribute("login_msg", "用户名或密码错误");
			return "/signin";
		}
		int state = loginService.finUserState(user.getUserId());
		if (state == 0) {
			model.addAttribute("user", user);
			// System.out.println(user.getPassword());
			return "/sendEmail";
		}
	//	session.setAttribute("userSession", user);

		/* hgy:登录成功后需要获取好友信息 */
		/* 不随会话而丢失,添加到session中 */
		List<UserInfo> friendList = loginService.getFriendsByuserId(user.getUserId());
		session.setAttribute("friendList", friendList);
		session.setAttribute("friendNum", friendList.size());
		/* hgy:登录成功后需要获取好友信息 */

		Subject subject = SecurityUtils.getSubject();

		// token 票,令牌 作用:包装用户名和密码
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		try {
			// 如果用户登陆不正确 则Shiro会报错
			subject.login(token);

			// 获取用户真实信息
			user = (User) subject.getPrincipal();
			loginService.updateLoginTime(user.getUserId());
			// 将用户信息存入session
			session.setAttribute("userSession", user);
		//	System.out.println("存入session的user:" + user);
			// subject.getSession().setAttribute("userSession", user);
			return "redirect:/goHome";
		} catch (AuthenticationException e) {
			e.printStackTrace(); // 打印报错信息查看真实的报错
			// 进到这里表示用户名或密码为空
			model.addAttribute("login_msg", "用户名或密码不正确");

			// 跳转到用户登陆页面
			return "/login/toLogin";
		}

	}

	@RequestMapping("/sendMail")
	@ResponseBody
	public String sendMail(String username, String password, HttpServletRequest request) {
		User user = loginService.findUserByU_P(username, password);
		if (user != null) {

			String userMail = loginService.findMailById(user.getUserId());
			SendMail mail = new SendMail();
			InputStream is = ResourceUtil.getStream("file.properties");
			Properties prop = new Properties();
			try {
				prop.load(is);
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			String addr = prop.get("addr").toString();
//			String addr = request.getLocalAddr();
//			if ("0:0:0:0:0:0:0:1".equals(addr)) {
//				addr = "127.0.0.1";
//			}
			String port = ":" + request.getLocalPort();
//			String path = request.getContextPath();
			String url = "http://" + addr + port + "/login/Activation?" + "id=" + user.getUserId() + "&name="
					+URLEncoder.encode(user.getUsername()) ;
			// System.out.println(url);
			mail.sendMail(userMail, url);
		}
		return "true";
	}

	@RequestMapping("/Activation")
	public String userActivation(String id, String name, Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		User user = loginService.findUserById(id, URLDecoder.decode(name));
		if (user == null) {
			model.addAttribute("ac_msg", "激活失败，请重新登录");
			return "/signin";
		}
		int state = 1;
		loginService.updateUserState(user.getUserId(), state);
		session.setAttribute("userSession", user);
		response.setContentType("text/html;charset=utf-8");
		model.addAttribute("regist_msg", "恭喜你激活成功！");
		// 提示用户注册成功3秒之后将会跳转到主页
		// response.setHeader("refresh", "3;url=" + request.getContextPath() +
		// "/pages/index.jsp");
		return "/userActive";

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if(session != null) {
			System.out.println("logout TO kill Session begin!");
//			session.removeAttribute("friendList");
//			session.removeAttribute("friendNum");
			SecurityUtils.getSubject().logout();
		}
		System.out.println("logout TO kill Session over!");
		/* return "/signin"; */
		// hgy修改:登出后跳转首页,有问题,再改
		return "forword:/goHome";
	}

}
