package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.WhatMapper;
import cn.ppj.springBoot.pojo.Audio;

@Service
public class WhatServiceImpl implements WhatService {
	@Autowired
	private WhatMapper whatMapper;
	@Override
	public List<Audio> findRandomSong12(int offset) {
		// TODO Auto-generated method stub
		return whatMapper.findRandomSong12(offset);
	}

	@Override
	public List<Audio> findNewSong8() {
		// TODO Auto-generated method stub
		return whatMapper.findNewSong8();
	}

	@Override
	public List<Audio> findTop5() {
		// TODO Auto-generated method stub
		return whatMapper.findTop5();
	}
}
