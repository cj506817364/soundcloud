package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.Audio;

public interface GenresService {

	List<String> getAllGenres();

	List<Audio> getAllSong(Integer pageNow, Integer pageSize);
	
	Integer getPageRows();

	List<Audio> getGenresSong(Integer pageNow, Integer pageSize, String genres);

	List<Audio> getOtherGenresSong(Integer pageNow, Integer pageSize);

	Integer getPageRowsByGenres(String string);

	int updateClickNum(String aduioId);
	
}
