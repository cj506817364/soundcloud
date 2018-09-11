package cn.ppj.springBoot.mapper.backend;

import cn.ppj.springBoot.pojo.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserBackendMapper {
   
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

	//更改vip
	public void updateVip(@Param("vip")int vip, @Param("userIds")String[] userIds);

	//修改状态,是否被禁用
	public void updateState(@Param("state")int state, @Param("userIds")String[] userIds);

	//根据id删除用户
	public void deleteUser(String[] userIds);

	//根据用户id修改用户信息
	public User findUserById(String userId);

	//修改用户
	public void updateUser(User user);
}
