package cn.ppj.springBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ppj.springBoot.pojo.Audio;
import cn.ppj.springBoot.service.GenresService;

@Controller
@RequestMapping("/genres/")
public class GenresController {
	private Integer pageSize = 12;
	private Integer pageRows = -1; //通过数据库查询获取到
	private Integer pageCount = pageRows/pageSize;//通过pageRows计算到
	private Integer pageNow = 1;
	private Integer pageButtonNum = 5;//显示多少个按钮
	@Autowired
	private GenresService genresService; 
	@RequestMapping("/getAllGenres")
	public String getAllGenresAndAllSong(Model model){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getAllSong(pageNow,pageSize);
		pageRows = genresService.getPageRows();//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", "所有流派");//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
	
		return "/genres";
	}
	
	@RequestMapping("/getGenres")
	public String getGenresSong(String genres,Model model){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getGenresSong(pageNow,pageSize,genres);
		pageRows = genresService.getPageRowsByGenres(genres);//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", genres);//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
		return "/genres";
	}
	
	@RequestMapping("/getOtherGenres")
	public String getOtherGenres(Model model){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getOtherGenresSong(pageNow,pageSize);
		pageRows = genresService.getPageRowsByGenres("其他");//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", "其他");//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
		return "/genres";
	}
	
	@RequestMapping("/getAllGenresPage")
	public String getAllGenresAndAllSongPage(Model model,Integer pageNow){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getAllSong(pageNow,pageSize);
		pageRows = genresService.getPageRows();//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", "所有流派");//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
	
		return "/genres";
	}
	
	@RequestMapping("/getGenresPage")
	public String getGenresSongPage(String genres,Model model,Integer pageNow){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getGenresSong(pageNow,pageSize,genres);
		pageRows = genresService.getPageRowsByGenres(genres);//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", genres);//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
		return "/genres";
	}
	
	@RequestMapping("/getOtherGenresPage")
	public String getOtherGenresPage(Model model,Integer pageNow){
		List<String> genresList = genresService.getAllGenres();
		List<Audio> audioList = genresService.getOtherGenresSong(pageNow,pageSize);
		pageRows = genresService.getPageRowsByGenres("其他");//前台不需要的数据
		pageCount = (pageRows-1)/pageSize+1;//向上取整
		for (int i =0;i <audioList.size();i++ ) {
			String picUrl = audioList.get(i).getPicUrl();
			String picName = audioList.get(i).getPicName().split(",")[2];
			String url1 = picUrl+"/"+picName; //斜杠陪在jsp页面更加易读
			audioList.get(i).setPicUrl(url1); //拼接后还是获取存在url中,这时候的url保存的是完整路径
		}
		model.addAttribute("currentGenres", "其他");//当前流派
		model.addAttribute("genresList", genresList);
		model.addAttribute("audioList", audioList);	
		model.addAttribute("pageCount", pageCount);	
		model.addAttribute("pageNow", pageNow);	
		model.addAttribute("pageSize", pageSize);	
		model.addAttribute("pageButtonNum", pageButtonNum);	
		return "/genres";
	}
	
	@RequestMapping("/addClickNum")
	public @ResponseBody String addClickNum(@RequestBody String audioId){
		int rows = genresService.updateClickNum(audioId);
		return "success";
	}
	
	
}
