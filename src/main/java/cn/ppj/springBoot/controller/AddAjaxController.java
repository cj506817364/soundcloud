package cn.ppj.springBoot.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.service.AudioService;




@Controller

public class AddAjaxController{
	@Autowired
	private AudioService audioService;
	@RequestMapping("/add_ajax")
	@ResponseBody
	public String listen(HttpSession session,String audioId,Model model,String audioname){
		//判断用户是否登录
		User user=(User) session.getAttribute("userSession");  
		if(user==null){
			//用户未登录
			
			//提示并转到登录页面
			return "false";
		}
		String userId = user.getUserId();
		//将歌曲添加进用户播放列表
		audioService.saveUserAudio(userId,audioId);
		
		return "true";
		
	}
}	