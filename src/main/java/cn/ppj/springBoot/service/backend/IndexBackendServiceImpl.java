package cn.ppj.springBoot.service.backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.backend.IndexBackendMapper;
import cn.ppj.springBoot.pojo.BaseUser;

@Service
public class IndexBackendServiceImpl implements IndexBackendService {

	@Autowired
	private IndexBackendMapper indexBackendMapper;

	@Override
	public int findAllMusic() {
		return indexBackendMapper.findAllMusic();
	}

	@Override
	public int findAllVideo() {
		return indexBackendMapper.findAllVideo();
	}

	@Override
	public int findAllUser() {
		return indexBackendMapper.findAllUser();
	}

	@Override
	public int findAllNews() {
		return indexBackendMapper.findAllNews();
	}

	@Override
	public List<BaseUser> findBackendUserList() {
		return indexBackendMapper.findBackendUserList();
	}

	@Override
	public String findAllVIP() {
		return indexBackendMapper.findAllVIP();
	}

}
