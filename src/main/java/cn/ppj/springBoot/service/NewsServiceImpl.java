package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.ppj.springBoot.mapper.NewsMapper;
import cn.ppj.springBoot.pojo.News;

@Service
@Transactional 
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper newsMapper;
	
	@Override
	public List<News> findAllNews() {
		return newsMapper.findAllNews();
	}


}
