package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface AudioService {

	Audio findAudioByName(String audioname);

	Audio findAudioById(String audioId);

	void saveUserAudio(String userId, String audioId);

	List<String> findUserAudioByUserId(String userId);

	List<Audio> findAllByUserId(String userId);

	void deleteUserAudioByName(String userId,String audioname);
	
	
}
