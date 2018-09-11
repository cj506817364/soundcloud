package cn.ppj.springBoot.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.Audio;

public interface AudioMapper {

	Audio findAudioByName(String audioname);

	Audio findAudioById(String audioId); 

	void saveUserAudio(@Param("userId")String userId, @Param("audioId")String audioId);

	List<String> findUserAudioByUserId(String userId);

	List<Audio> findAllByUserId(String userId);

	void deleteUserAudioByName(@Param("userId")String userId,@Param("audioname")String audioname);

	void AddPlayNum(String audioId);

}
