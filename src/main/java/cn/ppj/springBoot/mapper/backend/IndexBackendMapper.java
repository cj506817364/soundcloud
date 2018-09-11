package cn.ppj.springBoot.mapper.backend;

import java.util.List;

import cn.ppj.springBoot.pojo.BaseUser;

public interface IndexBackendMapper {
	
	public int findAllMusic();

	public int findAllVideo();

	public int findAllUser();

	public int findAllNews();

	public List<BaseUser> findBackendUserList();

	public String findAllVIP();

}
