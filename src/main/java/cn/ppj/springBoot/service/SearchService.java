package cn.ppj.springBoot.service;

import cn.ppj.springBoot.pojo.ResultList;

public interface SearchService {
	ResultList search(String keyword,int page) throws Exception;
}
