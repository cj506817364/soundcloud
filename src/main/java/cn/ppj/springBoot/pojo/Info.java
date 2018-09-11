package cn.ppj.springBoot.pojo;

public class Info {

	private String infoId ;
	private String userId;
	private String infoname; //消息名称
	private String infoContent;//消息内容
	private String sendUserId; //发送者id
	private String updateTime;
	private Integer isread;//状态0为读取 ，1 为已读取
	public String getInfoId() {
		return infoId;
	}
	public void setInfoId(String infoId) {
		this.infoId = infoId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getInfoname() {
		return infoname;
	}
	public void setInfoname(String infoname) {
		this.infoname = infoname;
	}
	public String getInfoContent() {
		return infoContent;
	}
	public void setInfoContent(String infoContent) {
		this.infoContent = infoContent;
	}
	public String getSendUserId() {
		return sendUserId;
	}
	public void setSendUserId(String sendUserId) {
		this.sendUserId = sendUserId;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getIsread() {
		return isread;
	}
	public void setIsread(Integer isread) {
		this.isread = isread;
	}
	@Override
	public String toString() {
		return "Info [infoId=" + infoId + ", userId=" + userId + ", infoname=" + infoname + ", infoContent="
				+ infoContent + ", sendUserId=" + sendUserId + ", updateTime=" + updateTime + ", isread=" + isread
				+ "]";
	}
	
	
	
}
