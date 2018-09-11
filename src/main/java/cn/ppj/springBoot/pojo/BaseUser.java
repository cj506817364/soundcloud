package cn.ppj.springBoot.pojo;

public class BaseUser {
	private String username;
	private String nickname;
	private String email;
	private Integer vip;
	private String city;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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

	public Integer getVip() {
		return vip;
	}
	public void setVip(Integer vip) {
		this.vip = vip;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "BaseUser [username=" + username + ", nickname=" + nickname + ", email=" + email + ", vip=" + vip
				+ ", city=" + city + "]";
	}
	
	
}
