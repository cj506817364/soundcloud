package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.VideoMapper;
import cn.ppj.springBoot.pojo.Video;

@Service
public class VideoServiceImpl implements VideoService{
	@Autowired
	private VideoMapper videoMapper;
	@Override
	public List<Video> getVideos(int offset,int pageSize) {
		// TODO Auto-generated method stub
		return videoMapper.getVideos(offset,pageSize);
	}
	@Override
	public Integer getVideosRows() {
		// TODO Auto-generated method stub
		return videoMapper.getVideosRows();
	}
	@Override
	public List<Video> getVideos8(int offset, int i) {
		// TODO Auto-generated method stub
		return videoMapper.getVideos8(offset,i);
	}
	@Override
	public Video getVideoByVideoId(String videoId) {
		// TODO Auto-generated method stub
		return videoMapper.getVideoByVideoId(videoId);
	}

}
