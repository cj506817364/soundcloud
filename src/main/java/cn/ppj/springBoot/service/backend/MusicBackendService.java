package cn.ppj.springBoot.service.backend;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface MusicBackendService {

	public List<Audio> findMusicList();

	public void updateState(String[] audioIds, int state);

	public void deleteMusicById(String[] audioIds);

	public void saveAudio(Audio audio);

	public Audio findMusicById(String audioId);

	public void updateAudio(Audio audio);

	
	
}