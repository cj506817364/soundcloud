package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.GenresMapper;
import cn.ppj.springBoot.pojo.Audio;

@Service
public class GenresServiceImpl implements GenresService {
	@Autowired
	private GenresMapper genresMapper;

	@Override
	public List<String> getAllGenres() {
		// TODO Auto-generated method stub
		return genresMapper.getAllGenres();
	}


	@Override
	public List<Audio> getAllSong(Integer pageNow, Integer pageSize) {
		// TODO Auto-generated method stub
		return genresMapper.getAllSong((pageNow-1)*pageSize,pageSize);//先计算好offset
	}


	@Override
	public Integer getPageRows() {
		// TODO Auto-generated method stub
		return genresMapper.getPageRows();
	}


	@Override
	public List<Audio> getGenresSong(Integer pageNow, Integer pageSize, String genres) {
		// TODO Auto-generated method stub
		return genresMapper.getGenresSong((pageNow-1)*pageSize,pageSize,genres);
	}


	@Override
	public List<Audio> getOtherGenresSong(Integer pageNow, Integer pageSize) {
		// TODO Auto-generated method stub
		return genresMapper.getOtherGenresSong((pageNow-1)*pageSize,pageSize);
	}


	@Override
	public Integer getPageRowsByGenres(String genre) {
		// TODO Auto-generated method stub
		return genresMapper.getPageRowsByGenres(genre);
	}


	@Override
	public int updateClickNum(String audioId) {
		// TODO Auto-generated method stub
		return genresMapper.updateClickNum(audioId);
	}
	
}
