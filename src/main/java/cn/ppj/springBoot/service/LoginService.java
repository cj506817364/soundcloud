package cn.ppj.springBoot.service;

import java.util.List;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

public interface LoginService {
	

	/**
	 * 保存用户信息
	 * @param user
	 */
	public void saveUser(User user);

	public User findUserByU_P(String username, String password);

	public int finUserState(String userId);

	public String findMailById(String userId);


	public User findUserById(String id, String username);

	public void updateUserState(String userId,int state);

	//hgy
	public List<UserInfo> getFriendsByuserId(String userId);

	public void updateLoginTime(String userId);
	
	
}
