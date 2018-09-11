package cn.ppj.springBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ppj.springBoot.pojo.Audio;
import cn.ppj.springBoot.service.AudioService;

@Controller
@RequestMapping("/listen")
public class AjaxAudioController {
	@Autowired
	private AudioService audioService;
	@RequestMapping("/ajax_audio")
	@ResponseBody
	public Audio ajaxAudio(String audioname){
		Audio audio=audioService.findAudioByName(audioname);		
		return audio;	
	}
	
	
}
