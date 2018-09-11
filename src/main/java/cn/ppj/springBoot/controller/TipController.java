package cn.ppj.springBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;
import cn.ppj.springBoot.service.LoginService;
import cn.ppj.springBoot.service.TipService;

@Controller
@RequestMapping("/Tip/")
public class TipController {
	@Autowired
	private TipService tipService;
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/addFriendsView")
	public String addFriendsView(Model model,HttpSession session){
		User user = (User)session.getAttribute("userSession");
		
		List<UserInfo> newFriendList = tipService.findNewFriend(user.getUserId());
		model.addAttribute("newFriendList", newFriendList);
		model.addAttribute("newFriendNum", newFriendList.size());
		return "/invoice";
	}
	@RequestMapping("/addFriends")
	public String addFriends(String userInfoId,HttpSession httpSession){
		User user = (User) httpSession.getAttribute("userSession");
		tipService.addFriends(userInfoId,user.getUserId());//userInfoId属于好友id
		//更新session中的好友信息
		List<UserInfo> friendList = loginService.getFriendsByuserId(user.getUserId());
		httpSession.setAttribute("friendList", friendList);
		httpSession.setAttribute("friendNum", friendList.size());
		return "redirect:/what/toWhat";
	}
}
