package cn.ppj.springBoot.controller.backend;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.ppj.springBoot.pojo.Video;
import cn.ppj.springBoot.service.backend.MovieBackendService;
import cn.ppj.springBoot.utils.UploadFile;

/**
 * 小电影的控制层,再也不担心找不到小电影了
 * @author ppj
 *
 */
@Controller
@RequestMapping("/backend/movie")
public class MovieBackendController {

	@Value("${movie}")
	private String movie;

	@Autowired
	private MovieBackendService movieBackendService;

	@RequestMapping("/movieList")
	public String toMovieList(Model model) {
		model.addAttribute("movieList", movieBackendService.findAllMovie());
		return "forward:/backend/movie/movieList.jsp";
	}

	@RequestMapping("/movieCreate")
	public String toMovieCreate() {
		return "redirect:/backend/movie/movieCreate.jsp";
	}

	@RequestMapping("/movieUpload")
	public String movieUpload(Video video, Model model, HttpServletRequest request,
			@RequestParam(value = "file") MultipartFile file) {
		video.setVideoId(UUID.randomUUID().toString());
		video.setUuidName(video.getVideoId());
		String UUIDName = video.getVideoId();

		UploadFile.uploadFile(movie,file,request,UUIDName);
		
		String fileName = file.getOriginalFilename();
		String[] names = fileName.split("\\.");
		video.setExpandedName(names[names.length - 1]);
		fileName = video.getVideoname() + "." + video.getExpandedName();
		video.setVideoUrl(request.getContextPath() + "/movie/" + video.getUuidName());
		video.setVideoname(fileName);
		video.setCreateTime(new Date());
		video.setUpdateTime(new Date());
		movieBackendService.addMovie(video);
		return "forward:/backend/movie/movieList";
	}

	@RequestMapping("/movieDelete")
	public String toMovieDelete(Model model,String videoId) {
		movieBackendService.deleteMovieById(videoId);
		model.addAttribute("movieList", movieBackendService.findAllMovie());
		return "forward:/backend/movie/movieDelete.jsp";
	}
	
	@RequestMapping("/movieView")
	public String toMovieView(Model model) {
		model.addAttribute("movieList", movieBackendService.findAllMovie());
		return "forward:/backend/movie/movieView.jsp";
	}
	
	@RequestMapping("/movieInfo")
	public String toMovieInfo(Model model,String videoId) {
		model.addAttribute("movie", movieBackendService.findMovieById(videoId));
		System.out.println( movieBackendService.findMovieById(videoId));
		return "forward:/backend/movie/movieInfo.jsp";
	}
	@RequestMapping("/movieToUpdate")
	public String toMovieUpdate(Model model) {
		model.addAttribute("movieList", movieBackendService.findAllMovie());
		return "forward:/backend/movie/movieToUpdate.jsp";
	}
	@RequestMapping("/movieUpdate")
	public String movieUpdate(Model model,String videoId) {
		model.addAttribute("movie", movieBackendService.findMovieById(videoId));
		return "forward:/backend/movie/movieUpdate.jsp";
	}
	
	@RequestMapping("/movieSaveUpdate")
	public String saveMovieUpdate(Video video) {
		video.setUpdateTime(new Date());
		System.out.println(video);
		System.out.println(video.getUpdateTime());
		movieBackendService.saveMovieUpdate(video);
		return "forward:/backend/movie/movieToUpdate";
	}
	
}
