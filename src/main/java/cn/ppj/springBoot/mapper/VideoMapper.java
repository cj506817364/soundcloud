package cn.ppj.springBoot.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.Video;

public interface VideoMapper {

	List<Video> getVideos(@Param("offset")int offset, @Param("pageSize")int pageSize);

	Integer getVideosRows();

	List<Video> getVideos8(@Param("offset")int offset,@Param("i")int i);

	Video getVideoByVideoId(String videoId);
	
}
