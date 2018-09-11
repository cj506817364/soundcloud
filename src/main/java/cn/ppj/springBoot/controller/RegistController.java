package cn.ppj.springBoot.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;
import cn.ppj.springBoot.service.RegistService;
import cn.ppj.springBoot.utils.Md5Pw;

@Controller
@RequestMapping("/regist/")
public class RegistController<EventArgs> {

	@Autowired
	private RegistService registService;

	@RequestMapping("/toRegist")
	public String toRegist() {
		return "/signup";
	}

	@RequestMapping("/regist")
	public String registerUser(String username,String password, String nickname, String birthday, String city, String email, String citys,
			Model model,HttpServletResponse response, HttpServletRequest request) throws IOException, ParseException {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		// 验证接收的用户信息是否为空
		if (StringUtils.isEmpty(user.getUsername())) {
			model.addAttribute("name", "用户名不能为空!");
		}
		if (StringUtils.isEmpty(user.getPassword())) {
			model.addAttribute("pw", "密码不能为空!");
		}
		if (StringUtils.isEmpty(user.getPassword2())) {
			model.addAttribute("pw2", "密码不能为空!");
		}
		if (user.getPassword().equals(user.getPassword2())) {
			model.addAttribute("pw2", "两次密码不一致!!");
		}
		if (StringUtils.isEmpty(nickname)) {
			model.addAttribute("nickname", "昵称不能为空!");
		}
		if (StringUtils.isEmpty(birthday)) {
			model.addAttribute("birthday", "生日不能为空!");
		}
		if(StringUtils.isEmpty(city)){
			model.addAttribute("city", "城市不能为空!");
		}
		if (StringUtils.isEmpty(email)) {
			model.addAttribute("email", "邮箱不能为空!");
		}
		// >>邮箱格式是否正确
		if (!email.matches("^\\w+@\\w+(\\.\\w+)+$")) {
			model.addAttribute("email", "邮箱格式不正确!");
		}
		
		// 进行密码Md5加密

		user.setPassword(Md5Pw.getMd5HPW(user.getPassword(), user.getUsername()));
		UserInfo info = new UserInfo();
		info.setNickname(nickname);
		info.setEmail(email);
		info.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(birthday));
		
		if(city.contains("市") || city.contains("县")){
			if(city.endsWith("市")){
				city = city.substring(0,city.lastIndexOf("市"));
				info.setCity(city);
			}
			
			info.setCity(citys);
			
		}else{
			info.setCity(city);
		}
		// 用户信息存进数据库中
		registService.saveUser(user, info);
	
		model.addAttribute("regist_msg", "恭喜你注册成功...");	
		return "/userRegist";
	}


}
