package cn.ppj.springBoot.dao;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import cn.ppj.springBoot.pojo.ResultList;
import cn.ppj.springBoot.pojo.SearchAudio;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Repository;

@Repository
	public class SearchDao {

		
		public ResultList search(SolrQuery query) throws Exception {
			
			Properties prop = new Properties();
			String path = SearchDao.class.getClassLoader().getResource("solraddress.properties").getPath();
			prop.load(new FileInputStream(path));
			SolrServer solrServer = new HttpSolrServer("http://"+prop.getProperty("address")+":"+prop.getProperty("port")+"/solr");
			//根据查询条件查询索引库
			QueryResponse queryResponse = solrServer.query(query);
			//取查询结果总记录数
			SolrDocumentList solrDocumentList = queryResponse.getResults();
			long numFound = solrDocumentList.getNumFound();
			//创建一个返回结果对象
			ResultList result = new ResultList();
			result.setRecourdCount((int) numFound);
			//创建一个音频列表对象
			List<SearchAudio> audioList = new ArrayList<>();
			
			//取高亮后的结果
			/*Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();*/
			for (SolrDocument solrDocument : solrDocumentList) {
				//取音频信息
				SearchAudio searchAudio = new SearchAudio();
				searchAudio.setAudioId((String) solrDocument.get("id"));
			    searchAudio.setAudioname((String) solrDocument.get("audioname"));
				searchAudio.setGenre((String) solrDocument.get("genre"));
				searchAudio.setSpecial((String) solrDocument.get("special"));
				searchAudio.setSinger((String) solrDocument.get("singer"));
					String str=(String)solrDocument.get("picName");
					String [] picNameArrs =str.split(",");
					String picUrl=(String) solrDocument.get("picUrl")+"/"+picNameArrs[0];
				searchAudio.setPicUrl(picUrl);
				/*searchAudio.setPicUrl((String) solrDocument.get("picUrl"));
				searchAudio.setPicName((String) solrDocument.get("picName"));*/
				//添加到音频列表
				audioList.add(searchAudio);
			}
			//把列表添加到返回结果对象中
			result.setAudioList(audioList);
			return result;
		}
	}
