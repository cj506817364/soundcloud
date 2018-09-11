package cn.ppj.springBoot.mapper;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface WhatMapper {

	List<Audio> findRandomSong12(int offset);

	List<Audio> findNewSong8();

	List<Audio> findTop5();

}
