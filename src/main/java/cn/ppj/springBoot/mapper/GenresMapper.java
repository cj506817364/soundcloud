package cn.ppj.springBoot.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.Audio;

public interface GenresMapper {

	List<String> getAllGenres();

	List<Audio> getAllSong();

	List<Audio> getAllSong(@Param("pageNow")Integer pageNow, @Param("pageSize")Integer pageSize);
	
	Integer getPageRows();

	List<Audio> getGenresSong(@Param("pageNow")Integer pageNow, @Param("pageSize")Integer pageSize,@Param("genres")String genre);

	List<Audio> getOtherGenresSong(@Param("pageNow")Integer pageNow, @Param("pageSize")Integer pageSize);

	Integer getPageRowsByGenres(String genre);

	int updateClickNum(String audioId);

}
