package cn.ppj.springBoot.service.backend;

import java.util.List;

import cn.ppj.springBoot.pojo.Video;
/**
 * 小电影的service接口,再也不担心找不到小电影了
 * @author ppj
 *
 */
public interface MovieBackendService {
	//查询所有小电影
	public List<Video> findAllMovie();
	//添加小电影
	public void addMovie(Video video);
	//删除小电影
	public void deleteMovieById(String videoId);
	//查询你需要的小电影
	public Video findMovieById(String videoId);
	//保存你修改的小电影信息
	public void saveMovieUpdate(Video video);

}
