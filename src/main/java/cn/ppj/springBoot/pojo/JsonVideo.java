package cn.ppj.springBoot.pojo;

import lombok.Data;

public class JsonVideo {
	private String title;
	private String mkv;
	private String poster;
	private String ogv;
	private String webmv;
	private String mp4;
	
	
	public String getMkv() {
		return mkv;
	}
	public void setMkv(String mkv) {
		this.mkv = mkv;
	}
	public String getMp4() {
		return mp4;
	}
	public void setMp4(String mp4) {
		this.mp4 = mp4;
	}
	public String getOgv() {
		return ogv;
	}
	public void setOgv(String ogv) {
		this.ogv = ogv;
	}
	public String getWebmv() {
		return webmv;
	}
	public void setWebmv(String webmv) {
		this.webmv = webmv;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}

}
