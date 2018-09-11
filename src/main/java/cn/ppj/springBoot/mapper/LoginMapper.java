package cn.ppj.springBoot.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface LoginMapper {

	/**
	 * 注册时查询用户是否已存在
	 * 
	 * @param username
	 * @return
	 */
	public User findUserName(String username);

	public User findUserByU_P(@Param("username") String username, @Param("password") String password);

	public int finUserState(String userId);

	public String findMailById(String userId);

	public User findUserById(String id);

	public User findUserById(@Param("userId") String id, @Param("username") String username);

	public void updateUserState(@Param("userId") String userId, @Param("state") int state);

	// hgy
	public List<UserInfo> getFriendsByuserId(String userId);

	public void updateLoginTime(@Param("userId") String userId,@Param("date") Date date);

}
