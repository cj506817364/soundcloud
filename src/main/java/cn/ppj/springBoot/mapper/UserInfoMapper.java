package cn.ppj.springBoot.mapper;

import cn.ppj.springBoot.pojo.UserInfo;

/**
 * Created by LYJ on 2017/10/17.
 */
public interface UserInfoMapper {
	/**
	 * 保存用户信息
	 * @param info
	 */
	public  void saveUserInfo(UserInfo info);
}
