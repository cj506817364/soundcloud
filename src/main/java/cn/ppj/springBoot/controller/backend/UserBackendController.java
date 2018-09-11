package cn.ppj.springBoot.controller.backend;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.ppj.springBoot.controller.NewsController;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;
import cn.ppj.springBoot.service.backend.UserBackendService;
import cn.ppj.springBoot.utils.POIPagingSheetExcel;

@Controller
@RequestMapping("/backend/user")
public class UserBackendController {

	@Autowired
	private UserBackendService userBackendService;

	// 用户信息列表查看
	@RequestMapping("/userList")
	public String userList(Model model) {

		List<User> userList = userBackendService.findUserList();

		model.addAttribute("userList", userList);

		return "forward:/backend/user/userList.jsp";
	}

	// 批量开通vip
	@RequestMapping("/startvip")
	public String startVip(@RequestParam("userId") String[] userIds) {
		int vipState = 1;

		userBackendService.updateVip(vipState, userIds);

		return "redirect:/backend/user/userList";
	}

	// 批量停用vip
	@RequestMapping("/stopvip")
	public String stopVip(@RequestParam("userId") String[] userIds) {
		int vip = 0;

		userBackendService.updateVip(vip, userIds);

		return "redirect:/backend/user/userList";
	}

	// 批量修改状态,解除禁用状态
	@RequestMapping("/startstate")
	public String startState(@RequestParam("userId") String[] userIds) {
		int state = 1;

		userBackendService.updateState(state, userIds);

		return "redirect:/backend/user/userList";
	}

	// 批量修改状态,开启禁用状态
	@RequestMapping("/stopstate")
	public String stopState(@RequestParam("userId") String[] userIds) {
		int state = 0;

		userBackendService.updateState(state, userIds);

		return "redirect:/backend/user/userList";
	}

	// 跳转查看单个用户信息页面
	@RequestMapping("/toview")
	public String view(String userId, Model model) {

		User user = userBackendService.findUserById(userId);
		model.addAttribute("user", user);

		return "forward:/backend/user/userView.jsp";
	}

	/*
	 * //跳转新增用户页面
	 * 
	 * @RequestMapping("/tocreate") public String tocreate() {
	 * 
	 * return "forward:/backend/user/userCreate.jsp"; }
	 */

	/*
	 * //新增之后用户信息列表查看
	 * 
	 * @RequestMapping("/save") public String save(User user) {
	 * 
	 * userBackendService.saveUser(user);
	 * 
	 * return "redirect:/backend/user/userList.jsp"; }
	 */

	// 批量删除用户
	@RequestMapping("/delete")
	public String delete(@RequestParam("userId") String[] userIds) {

		userBackendService.deleteUser(userIds);

		return "redirect:/backend/user/userList";
	}

	// 跳转用户修改页面
	@RequestMapping("/toupdate")
	public String toUpdate(String userId, Model model) {

		User user = userBackendService.findUserById(userId);
		model.addAttribute("user", user);
		return "forward:/backend/user/userUpdate.jsp";
	}

	// 修改之后查看用户信息列表
	@RequestMapping("/update")
	public String update(String userId, String username, String password, String nickname, String email, String gender,
			String birthday, Integer score, Integer vip, String remarks, Integer state, String city) throws Exception {

		User user = new User();
		user.setUserId(userId);
		user.setUsername(username);
		user.setPassword(password);

		UserInfo userInfo = new UserInfo();
		userInfo.setUserInfoId(userId);
		userInfo.setNickname(nickname);
		userInfo.setEmail(email);
		userInfo.setGender(gender);
		userInfo.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(birthday));
		userInfo.setScore(score);
		userInfo.setVip(vip);
		userInfo.setRemarks(remarks);
		userInfo.setState(state);
		userInfo.setCity(city);
		user.setUserInfo(userInfo);

		userBackendService.updateUser(user);

		return "redirect:/backend/user/userList";
	}

	@RequestMapping("/poi")
	public void poi(HttpServletResponse response) throws IOException {
		// 查询新闻信息列表
		List<User> userList = userBackendService.findUserList();

		// 设置表头内容
		String[] header = { "用户id", "用户名称", "用户昵称", "邮箱", "性别", "生日", "注册时间", "最近登录时间", "描述", "所在地", "状态" };

		String[][] dataAll = new String[userList.size()][header.length];

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// 在配置文件中读取生成的poi报表路径
		InputStream inputStream = NewsController.class.getClassLoader().getResourceAsStream("poiConfig.properties");
		Properties prop = new Properties();
		prop.load(inputStream);
		String path = prop.getProperty("userpath");
		int maxRow = Integer.parseInt(prop.getProperty("maxRow")); // 每页显示多少条数据

		// 设置表体数据
		for (int i = 0; i < userList.size(); i++) { // 初始化表格数据
			User user = userList.get(i);

			dataAll[i][0] = new Integer(i + 1).toString();
			dataAll[i][1] = user.getUsername();
			dataAll[i][2] = user.getUserInfo().getNickname();
			dataAll[i][3] = user.getUserInfo().getEmail();
			dataAll[i][4] = user.getUserInfo().getGender();
			dataAll[i][5] = sdf.format(user.getUserInfo().getBirthday());
			dataAll[i][6] = sdf.format(user.getUserInfo().getCreateTime());
			dataAll[i][7] = sdf.format(user.getUserInfo().getLastLoginTime());
			dataAll[i][8] = user.getUserInfo().getRemarks();
			dataAll[i][9] = user.getUserInfo().getCity();
		}

		// 创建excel
		POIPagingSheetExcel.createExcel(header, dataAll, maxRow, path);

		// 告知浏览器以附件下载的方式打开
		response.setHeader("Content-Disposition", "attachment;filename=user-poi.xls");
		// 处理文件内容的乱码
		response.setContentType("text/html;charset=gbk");
		InputStream in = new FileInputStream(path);
		OutputStream out = response.getOutputStream();

		int len = 0;
		while ((len = in.read()) != -1) {
			out.write(len);
		}
		in.close();
		out.close();
	}

}
