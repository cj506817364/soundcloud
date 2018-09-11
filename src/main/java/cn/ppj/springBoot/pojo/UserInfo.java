package cn.ppj.springBoot.pojo;

import java.util.Date;

public class UserInfo extends BaseEntity {
	private String userInfoId; // 用户id,接收者id
	private String infoId; // 消息id
	private String nickname; // 昵称
	private String email;    //邮箱
	private String gender; // 性别
	private Date birthday; // 生日
	private Integer score; // 用户积分
	private Date lastLoginTime;// 最近登录时间
	private Integer vip; // 等级
	private String remarks; // 备注
	private Integer state; // 状态,是否被禁用
	private String city; // 城市
	
	public String getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}
	public String getInfoId() {
		return infoId;
	}
	public void setInfoId(String infoId) {
		this.infoId = infoId;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public Integer getVip() {
		return vip;
	}
	public void setVip(Integer vip) {
		this.vip = vip;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "UserInfo [userInfoId=" + userInfoId + ", infoId=" + infoId + ", nickname=" + nickname + ", email="
				+ email + ", gender=" + gender + ", birthday=" + birthday + ", score=" + score + ", lastLoginTime="
				+ lastLoginTime + ", vip=" + vip + ", remarks=" + remarks + ", state=" + state + ", city=" + city + "]";
	}
	
	
	
	
}
