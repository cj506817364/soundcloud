package cn.ppj.springBoot.pojo;

import java.io.Serializable;

public class SearchAudio  implements Serializable{
	private String audioId;		//音频id
	private String audioname;	//音频内容名称
	private String genre;		//流派
	private String special;		//专辑
	private String singer;		//歌手
	private String picUrl;	//音频图片存储路径
	private String picName;	//音频图片存储路径
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
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}

	
}
