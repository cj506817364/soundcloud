package cn.ppj.springBoot.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.CityNum;

public interface VectorMapMapper {

	public List<CityNum> findAll();
	public List<CityNum> findTopAll();
	public CityNum findByCondition(@Param("colum")String colum,@Param("param")String param);
	public List<CityNum> findFriend(String userId);
}
