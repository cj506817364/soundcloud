package cn.ppj.springBoot.controller;


import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ppj.springBoot.pojo.Audio;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.service.AudioService;
import cn.ppj.springBoot.service.GenresService;
import cn.ppj.springBoot.service.WhatService;
import cn.ppj.springBoot.utils.UpdateUserPlayList;

@Controller
public class HomeController {
	@Autowired
	private WhatService whatService;
	@Autowired
	private AudioService audioService;
	@Autowired
	private GenresService genresService; 
	// 拦截用户输入的任何地址
	@RequestMapping("/goHome")
	public String index(Model model,HttpSession session, HttpServletRequest request) {

		String userId;

		User user = (User) session.getAttribute("userSession");
		if (user != null) {
			// 用户登陆后获取用户id
			userId = user.getUserId();
		} else {
			// 用户未登录情况下，获取缺省userId,列表获取默认音乐
			userId = "666";
		}
		// 调用工具类方法，更新并获取用户播放列表
		UpdateUserPlayList.updateList(session, request, userId, audioService);

		// 跳转回主界面
		
		//登出
		
		//hgy:index界面的数据
		//获取表中数据的长度
		int rows = genresService.getPageRows();
		List<Audio> randomAudioList = null;
		if (rows == 0) {
			randomAudioList = null;
		} else if (rows < 12) {
			// int offset = new Random().nextInt(rows);
			randomAudioList = whatService.findRandomSong12(0);// 12个,discover
		} else {
			int offset = new Random().nextInt(rows - 12) + 12;
			randomAudioList = whatService.findRandomSong12(offset);// 12个,discover
		}
		List<Audio> newSongList = whatService.findNewSong8();//8个
		List<Audio> topList = whatService.findTop5();//5个
		
		//添加图片路径
		for (int i =0;i <randomAudioList.size();i++ ) {
			String picUrl = randomAudioList.get(i).getPicUrl();
			String picName = randomAudioList.get(i).getPicName().split(",")[0];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			randomAudioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		for (int i =0;i <newSongList.size();i++ ) {
			String picUrl = newSongList.get(i).getPicUrl();
			String picName = newSongList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			newSongList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		for (int i =0;i <topList.size();i++ ) {
			String picUrl = topList.get(i).getPicUrl();
			String picName = topList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			topList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		
		model.addAttribute("randomAudioList", randomAudioList);
		model.addAttribute("newSongList", newSongList);
		model.addAttribute("topList", topList);
		//hgy:index界面的数据
		return "/index";
	}
	
}
