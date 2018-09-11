package cn.ppj.springBoot.mapper;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface UserPlayListMapper {

	List<Audio> findAllByUserId(String userId);

	

}
