package cn.ppj.springBoot.service;

import cn.ppj.springBoot.pojo.User;

import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserService {
	public List<User> findUserList();

	public User findUserByUsername(String username);

}
