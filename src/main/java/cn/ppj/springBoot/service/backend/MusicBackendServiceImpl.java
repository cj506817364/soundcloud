package cn.ppj.springBoot.service.backend;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.backend.MusicBackendMapper;
import cn.ppj.springBoot.pojo.Audio;

@Service
public class MusicBackendServiceImpl implements MusicBackendService {

	@Autowired
	private MusicBackendMapper musicBackendMapper;

	@Override
	public List<Audio> findMusicList() {

		return musicBackendMapper.findMusicList();
	}

	@Override
	public void updateState(String[] audioIds, int state) {
		musicBackendMapper.updateState(audioIds, state);
	}

	@Override
	public void deleteMusicById(String[] audioIds) {

		musicBackendMapper.deleteMusicById(audioIds);
	}

	@Override
	public void saveAudio(Audio audio) {
		String audioId = UUID.randomUUID().toString();
		audio.setAudioId(audioId);
		audio.setUuidName(audioId);
		audio.setCreateTime(new Date());

		audio.setUpdateTime(audio.getCreateTime());
		
		musicBackendMapper.saveAudio(audio);
		
	}

	@Override
	public Audio findMusicById(String audioId) {
		
		return musicBackendMapper.findMusicById(audioId);
	}

	@Override
	public void updateAudio(Audio audio) {
		audio.setUuidName(audio.getAudioId());
		audio.setUpdateTime(new Date());
		musicBackendMapper.updateAudio(audio);
	}

}
