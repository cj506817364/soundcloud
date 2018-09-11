package cn.ppj.springBoot.service;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.pojo.UserInfo;

public interface RegistService {

	public void saveUser(User user,UserInfo info);

}
