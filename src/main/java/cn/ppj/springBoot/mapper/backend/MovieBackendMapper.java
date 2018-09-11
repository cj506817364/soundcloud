package cn.ppj.springBoot.mapper.backend;

import java.util.List;

import cn.ppj.springBoot.pojo.Video;
/**
 * 对小电影各种操作的最后一步啦,马上就能实现你想对小电影进行的任何操作
 * @author ppj
 *
 */
public interface MovieBackendMapper {

	public List<Video> findAllMovie();

	public void addMovie(Video video);

	public void deleteMovieById(String videoId);

	public void deleteMovie_UserById(String videoId);

	public Video findMovieById(String videoId);

	public void saveMovieUpdate(Video video);

}
