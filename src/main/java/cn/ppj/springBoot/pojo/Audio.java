package cn.ppj.springBoot.pojo;

import java.util.Date;

public class Audio  extends BaseEntity{
	private String audioId;		//音频id
	private String audioname;	//音频内容名称
	private String uuidName;	//音频的文件名称
	private String genre;		//流派
	private String special;		//专辑
	private String singer;		//歌手
	private String writeWords;	//作词
	private String compose;		//作曲
	private Date releaseTime;	//发布时间频
	private String picName;		//图片的包含扩展名频
	private String picUrl;		//图片的存储路径
	private Integer playNum;	//播放次数
	private String expandedName;//扩展名
	private Integer state;		//是否被禁用,如果直接删除可以使用
	private String remarks;		//简介
	private String audioUrl;	//音频存储路径
	public String getAudioId() {
		return audioId;
	}
	public void setAudioId(String audioId) {
		this.audioId = audioId;
	}
	public String getAudioname() {
		return audioname;
	}
	public void setAudioname(String audioname) {
		this.audioname = audioname;
	}
	
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getWriteWords() {
		return writeWords;
	}
	public void setWriteWords(String writeWords) {
		this.writeWords = writeWords;
	}
	public String getCompose() {
		return compose;
	}
	public void setCompose(String compose) {
		this.compose = compose;
	}
	public Date getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public Integer getPlayNum() {
		return playNum;
	}
	public void setPlayNum(Integer playNum) {
		this.playNum = playNum;
	}
	public String getExpandedName() {
		return expandedName;
	}
	public void setExpandedName(String expandedName) {
		this.expandedName = expandedName;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getAudioUrl() {
		return audioUrl;
	}
	public void setAudioUrl(String audioUrl) {
		this.audioUrl = audioUrl;
	}
	@Override
	public String toString() {
		return "Audio [audioId=" + audioId + ", audioname=" + audioname + ", uuidName=" + uuidName + ", genre=" + genre
				+ ", special=" + special + ", singer=" + singer + ", writeWords=" + writeWords + ", compose=" + compose
				+ ", releaseTime=" + releaseTime + ", picName=" + picName + ", picUrl=" + picUrl + ", playNum="
				+ playNum + ", expandedName=" + expandedName + ", state=" + state + ", remarks=" + remarks
				+ ", audioUrl=" + audioUrl + "]";
	}
	
	
	
}
