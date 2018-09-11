package cn.ppj.springBoot.service;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.UserInfoMapper;
import cn.ppj.springBoot.mapper.UserMapper;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

@Service
public class RegistServiceImpl implements RegistService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserInfoMapper userInfoMapper;
	
	
	@Override
	public void saveUser(User user,UserInfo info) {
		//生成随机用户Id
		String userId = UUID.randomUUID().toString();
		user.setUserId(userId);
		user.setCreateTime(new Date());
		user.setUpdateTime(user.getCreateTime());
		
		int score = 0;//注册用户积分为0分
		info.setScore(score);
		int vip = 0; //注册用户初始等级0级
		info.setVip(vip);
		info.setState(0);
		info.setUserInfoId(userId);//用户扩展表id
		info.setUpdateTime(user.getUpdateTime());//更新时间
		
		userMapper.saveUser(user);
		userInfoMapper.saveUserInfo(info);
		
		
	}


}
