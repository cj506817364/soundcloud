package cn.ppj.springBoot.mapper.backend;

import cn.ppj.springBoot.pojo.UserInfo;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserInfoBackendMapper {
	/**
	 * 保存用户信息
	 * @param info
	 */
	public  void saveUserInfo(UserInfo info);

	public void deleteUserInfo(String[] userIds);

	public void updateUserInfo(UserInfo userInfo);
}
