package cn.ppj.jsoup;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.ppj.springBoot.mapper.NewsMapper;
import cn.ppj.springBoot.pojo.News;

public class GetNews {

	@Autowired
	private NewsMapper newsMapper ;

	@Test
	public void test01() {
		List<News> newsList = NewsSpider.spiderNews();
		System.out.println(newsList);
		for (News news : newsList) {
			newsMapper.addNews(news);
		}
	}
}
