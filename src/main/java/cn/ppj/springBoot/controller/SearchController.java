package cn.ppj.springBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.ppj.springBoot.pojo.ResultList;
import cn.ppj.springBoot.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/search")
	public String search(String search,@RequestParam(defaultValue="1") Integer page, Model model) throws Exception {
		//需要转码
	  //keyword = new String(keyword.getBytes("iso8859-1"), "utf-8");
		//调用Service查询歌曲信息 
		ResultList result = searchService.search(search, page);
		//把结果传递给jsp页面
		model.addAttribute("query", search);
		/*model.addAttribute("totalPages", result.getTotalPages());
		model.addAttribute("recourdCount", result.getRecourdCount());
		model.addAttribute("page", page);
		model.addAttribute("audioList", result.getAudioList());*/
		model.addAttribute("result", result);
		
		//返回逻辑视图
		return "/searchlist";
	}
		
}
