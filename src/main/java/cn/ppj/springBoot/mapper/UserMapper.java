package cn.ppj.springBoot.mapper;

import cn.ppj.springBoot.pojo.User;

import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserMapper {
   
	public List<User> findUserList();


	/**
	 * 保存用户信息
	 * @param user
	 */
	public void saveUser(User user);
	
   
    /**
     * 注册时查询用户是否已存在
     * @param username
     * @return
     */
	public User findUserByUsername(String username);
}
