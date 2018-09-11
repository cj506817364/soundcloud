package cn.ppj.springBoot.service;

import cn.ppj.springBoot.mapper.UserMapper;
import cn.ppj.springBoot.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findUserList() {

        return userMapper.findUserList();
    }

	@Override
	public User findUserByUsername(String username) {
		return userMapper.findUserByUsername(username);
	}

	
}
