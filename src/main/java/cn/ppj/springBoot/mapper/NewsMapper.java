package cn.ppj.springBoot.mapper;

import java.util.List;

import cn.ppj.springBoot.pojo.News;

public interface NewsMapper {

	List<News> findAllNews();

	void addNews(News news);

}
