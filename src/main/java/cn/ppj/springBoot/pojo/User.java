package cn.ppj.springBoot.pojo;

import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
public class User extends BaseEntity {
	//一对多好友
	private List<User> list;

	//一对多消息
	private UserInfo userInfo;

	private String userId; //用户id
	private String username; //用户名
	private String password; //密码
	private String password2;

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	@Override
	public String toString() {
		return "User [list=" + list + ", userInfo=" + userInfo + ", userId=" + userId + ", username=" + username
				+ ", password=" + password + "]";
	}

}
