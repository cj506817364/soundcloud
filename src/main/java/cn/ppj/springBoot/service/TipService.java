package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.UserInfo;

public interface TipService {

	List<UserInfo> findNewFriend(String userId);

	void addFriends(String userInfoId,String userId);

}
