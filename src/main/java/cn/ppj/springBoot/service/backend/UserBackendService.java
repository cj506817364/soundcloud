package cn.ppj.springBoot.service.backend;

import cn.ppj.springBoot.pojo.User;

import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserBackendService {
	public List<User> findUserList();

	public void updateVip(int vip, String[] userIds);

	public void updateState(int state, String[] userIds);

	public void saveUser(User user);

	public void deleteUser(String[] userIds);

	public User findUserById(String userId);

	public void updateUser(User user);

}
