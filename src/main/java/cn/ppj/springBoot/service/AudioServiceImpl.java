package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.AudioMapper;
import cn.ppj.springBoot.pojo.Audio;

@Service
public class AudioServiceImpl implements AudioService {
	@Autowired
	private AudioMapper audioMapper;

	@Override
	public Audio findAudioByName(String audioname) {

		return audioMapper.findAudioByName(audioname);
	}

	@Override
	public Audio findAudioById(String audioId) {

		return audioMapper.findAudioById(audioId);
	}

	@Override
	public void saveUserAudio(String userId, String audioId) {

		// 如果是通过点击歌曲进入此页面，那么将歌曲添加进用户播放列表
		if (audioId != null) {
			List<String> audioIds = audioMapper.findUserAudioByUserId(userId);
			if (audioIds != null) {//防止新用户列表为空，返回的list会报空指针异常
				// 判断用户是否已有该歌曲，如果没有才进行存入操作，如果有则不进行存入操作
				if (!audioIds.contains(audioId)) {
					audioMapper.saveUserAudio(userId, audioId);
					audioMapper.AddPlayNum(audioId);
				}
				
			}else {//如果用户播放列表为空，可以进行存入操作
				audioMapper.saveUserAudio(userId, audioId);
				audioMapper.AddPlayNum(audioId);
			}
		}
	}

	@Override
	public List<String> findUserAudioByUserId(String userId) {

		return audioMapper.findUserAudioByUserId(userId);
	}

	@Override
	public List<Audio> findAllByUserId(String userId) {

		return audioMapper.findAllByUserId(userId);
	}

	@Override
	public void deleteUserAudioByName(String userId,String audioname) {
		audioMapper.deleteUserAudioByName(userId,audioname);
	}

}
