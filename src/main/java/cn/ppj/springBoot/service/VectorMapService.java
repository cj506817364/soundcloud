package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.CityNum;

public interface VectorMapService {

	public List<CityNum> findAll();

	public List<CityNum> findTopAll();
	
	public CityNum findByCondition(String colum,String param);

	public List<CityNum> findFriend(String userId);
}
