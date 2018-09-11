package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.Video;

public interface VideoService {

	List<Video> getVideos(int i, int j);

	Integer getVideosRows();

	List<Video> getVideos8(int offset, int i);

	Video getVideoByVideoId(String videoId);

}
