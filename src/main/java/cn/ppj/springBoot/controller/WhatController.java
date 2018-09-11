package cn.ppj.springBoot.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ppj.springBoot.pojo.Audio;
import cn.ppj.springBoot.service.GenresService;
import cn.ppj.springBoot.service.WhatService;

@Controller
@RequestMapping("/what/")
public class WhatController {
	@Autowired
	private WhatService whatService;
	@Autowired
	private GenresService genresService;

	@RequestMapping("/toWhat")
	public String toWhatView(Model model) {
		// 获取表中数据的长度
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
		List<Audio> newSongList = whatService.findNewSong8();// 8个
		List<Audio> topList = whatService.findTop5();// 5个

		// 添加图片路径
		if (randomAudioList != null) {
			for (int i = 0; i < randomAudioList.size(); i++) {
				String picUrl = randomAudioList.get(i).getPicUrl();
				String picName = randomAudioList.get(i).getPicName().split(",")[0];
				String url1 = picUrl + "/" + picName; // 斜杠陪在jsp页面更加易读
				randomAudioList.get(i).setPicUrl(url1); // 拼接后还是获取存在url中,这时候的url保存的是完整路径
			}
		}
		for (int i = 0; i < newSongList.size(); i++) {
			String picUrl = newSongList.get(i).getPicUrl();
			String picName = newSongList.get(i).getPicName().split(",")[2];
			String url1 = picUrl + "/" + picName; // 斜杠陪在jsp页面更加易读
			newSongList.get(i).setPicUrl(url1); // 拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		for (int i = 0; i < topList.size(); i++) {
			String picUrl = topList.get(i).getPicUrl();
			String picName = topList.get(i).getPicName().split(",")[2];
			String url1 = picUrl + "/" + picName; // 斜杠陪在jsp页面更加易读
			topList.get(i).setPicUrl(url1); // 拼接后还是获取存在url中,这时候的url保存的是完整路径
		}

		model.addAttribute("randomAudioList", randomAudioList);
		model.addAttribute("newSongList", newSongList);
		model.addAttribute("topList", topList);
		return "/index";
	}

}
