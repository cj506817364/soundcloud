package cn.ppj.springBoot.mapper.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.Audio;

public interface MusicBackendMapper {

	public List<Audio> findMusicList();

	public void updateState(@Param("audioIds") String[] audioIds, @Param("state") int state);

	public Audio findMusicById(String audioId);

	public void deleteMusicById(String[] audioIds);

	public void saveAudio(Audio audio);

	public void updateAudio(Audio audio);

}
