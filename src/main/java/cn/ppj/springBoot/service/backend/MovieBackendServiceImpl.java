package cn.ppj.springBoot.service.backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.backend.MovieBackendMapper;
import cn.ppj.springBoot.pojo.Video;
@Service
public class MovieBackendServiceImpl implements MovieBackendService {
	
	@Autowired
	private MovieBackendMapper movieBackendMapper;
	@Override
	public List<Video> findAllMovie() {
		return movieBackendMapper.findAllMovie();
	}
	@Override
	public void addMovie(Video video) {
		movieBackendMapper.addMovie(video);
	}
	@Override
	public void deleteMovieById(String videoId) {
		movieBackendMapper.deleteMovie_UserById(videoId);
		movieBackendMapper.deleteMovieById(videoId);
	}
	@Override
	public Video findMovieById(String videoId) {
		return movieBackendMapper.findMovieById(videoId);
	}
	@Override
	public void saveMovieUpdate(Video video) {
		movieBackendMapper.saveMovieUpdate(video);
	}

}
