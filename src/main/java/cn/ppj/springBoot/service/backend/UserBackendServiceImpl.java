package cn.ppj.springBoot.service.backend;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ppj.springBoot.mapper.backend.UserBackendMapper;
import cn.ppj.springBoot.mapper.backend.UserInfoBackendMapper;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

/**
 * Created by LYJ on 2017/10/17.
 */
@Service
public class UserBackendServiceImpl implements UserBackendService {

	@Autowired
	private UserBackendMapper userBackendMapper;

	@Autowired
	private UserInfoBackendMapper userInfoBackendMapper;

	@Override
	public List<User> findUserList() {

		return userBackendMapper.findUserList();
	}

	@Override
	public void updateVip(int vip, String[] userIds) {

		userBackendMapper.updateVip(vip, userIds);
	}

	@Override
	public void updateState(int state, String[] userIds) {

		userBackendMapper.updateState(state, userIds);

	}

	@Override
	public void saveUser(User user) {

		String userId = UUID.randomUUID().toString();
		user.setUserId(userId);
		user.setCreateTime(new Date());
		user.setUpdateTime(user.getCreateTime());

		UserInfo userInfo = user.getUserInfo();
		userInfo.setUserInfoId(userId);

		userBackendMapper.saveUser(user);
		userInfoBackendMapper.saveUserInfo(userInfo);

	}

	@Override
	public void deleteUser(String[] userIds) {

		userBackendMapper.deleteUser(userIds);
		userInfoBackendMapper.deleteUserInfo(userIds);

	}

	@Override
	public User findUserById(String userId) {
		return userBackendMapper.findUserById(userId);
	}

	@Override
	public void updateUser(User user) {

		user.setUpdateTime(new Date());

		userBackendMapper.updateUser(user);
		userInfoBackendMapper.updateUserInfo(user.getUserInfo());
		
	}

}
