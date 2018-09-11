package cn.ppj.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.TipMapper;
import cn.ppj.springBoot.pojo.UserInfo;

@Service
public class TipServiceImpl implements TipService {
	@Autowired
	private TipMapper tipMapper;
	@Override
	public List<UserInfo> findNewFriend(String userId) {
		// TODO Auto-generated method stub
		return tipMapper.findNewFriend(userId);
	}
	@Override
	public void addFriends(String userInfoId,String userId) {
		// TODO Auto-generated method stub
		//本来不会出现重复插入,为了避免bug导致重新插入,先删除
		tipMapper.deleteMyBeFriend(userInfoId,userId);
		tipMapper.addFriends(userInfoId,userId);
	}

}
