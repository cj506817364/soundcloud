package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface WhatService {

	List<Audio> findRandomSong12(int offset);

	List<Audio> findNewSong8();

	List<Audio> findTop5();

}
