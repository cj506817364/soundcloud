package cn.ppj.springBoot.service.backend;

import java.util.List;

import cn.ppj.springBoot.pojo.BaseUser;

/**
 * 用于查询所有的后台主页数据
 * @author ppj
 *
 */
public interface IndexBackendService {
	//查询所有音乐
	public int findAllMusic();
	//查询所有视频
	public int findAllVideo();
	//查询所有用户
	public int findAllUser();
	//查询今日注册用户
	public int findAllNews();
	public List<BaseUser> findBackendUserList();
	public String findAllVIP();

}
