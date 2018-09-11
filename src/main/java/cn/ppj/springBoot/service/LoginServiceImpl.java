package cn.ppj.springBoot.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.LoginMapper;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper loginMapper;

	public User findUserName(String username) {

		return loginMapper.findUserName(username);
	}

	@Override
	public void saveUser(User user) {
		// 生成随机用户Id
		String userId = UUID.randomUUID().toString();
		user.setUserId(userId);

		UserInfo info = user.getUserInfo();
		int score = 0;// 注册用户积分为0分
		info.setScore(score);
		int vip = 0; // 注册用户初始等级0级
		info.setVip(vip);

	}

	@Override
	public User findUserByU_P(String username, String password) {
		return loginMapper.findUserByU_P(username, password);
	}

	@Override
	public int finUserState(String userId) {
		return loginMapper.finUserState(userId);

	}

	@Override
	public String findMailById(String userId) {
		return loginMapper.findMailById(userId);
	}

	@Override
	public User findUserById(String id, String username) {
		return loginMapper.findUserById(id,username);
	}

	@Override
	public void updateUserState(String userId, int state) {
		loginMapper.updateUserState(userId,state);
	}

	@Override
	public List<UserInfo> getFriendsByuserId(String userId) {
		// TODO Auto-generated method stub
		return loginMapper.getFriendsByuserId(userId);
	}

	@Override
	public void updateLoginTime(String userId) {
		
		loginMapper.updateLoginTime(userId,new Date());
	}




	
}
