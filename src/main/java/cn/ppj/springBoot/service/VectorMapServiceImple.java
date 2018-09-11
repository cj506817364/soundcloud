package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.VectorMapMapper;
import cn.ppj.springBoot.pojo.CityNum;

@Service
public class VectorMapServiceImple implements VectorMapService {
	
	@Autowired
	private VectorMapMapper vectorMapMapper;

	@Override
	public List<CityNum> findAll() {
		
		
		return vectorMapMapper.findAll();
	}

	@Override
	public List<CityNum> findTopAll() {
		return vectorMapMapper.findTopAll();
	}

	@Override
	public CityNum findByCondition(String colum, String param) {
		return vectorMapMapper.findByCondition(colum, param);
	}

	@Override
	public List<CityNum> findFriend(String userId) {
		return vectorMapMapper.findFriend(userId);
	}
	
	
}
