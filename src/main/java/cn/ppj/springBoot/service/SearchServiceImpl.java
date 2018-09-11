package cn.ppj.springBoot.service;

import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.dao.SearchDao;
import cn.ppj.springBoot.pojo.ResultList;
@Service
public class SearchServiceImpl implements SearchService {
	
	private SearchDao searchDao = new  SearchDao();
	@Override
	public ResultList search(String keyword, int page) throws Exception{
		//创建一个SolrQuery对象
		SolrQuery query = new SolrQuery();
		//设置查询条件
		query.setQuery(keyword);
		//设置分页条件
		query.setStart((page - 1) * 10);
		//设置rows
		query.setRows(10);
		//设置默认搜索域
		query.set("df", "audio_keywords");
	/*	//设置高亮显示
		query.setHighlight(true);
		query.addHighlightField("item_title");s
		query.setHighlightSimplePre("<em style=\"color:red\">");
		query.setHighlightSimplePost("</em>");*/
		//执行查询
		ResultList resultList = searchDao.search(query);
		//计算总页数
		int recourdCount =(int)resultList.getRecourdCount();
		int pages = recourdCount / 10;
		if (recourdCount % 10 > 0) pages++;
		//设置到返回结果
		resultList.setTotalPages(pages);
		return resultList;
	}
	}
