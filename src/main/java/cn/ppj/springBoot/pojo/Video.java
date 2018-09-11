package cn.ppj.springBoot.pojo;

public class Video extends BaseEntity{
	
	private String videoId;			//视频id
	private String videoname;		//视频的内容名称
	private String uuidName;		//视频的文件名称
	private Integer videotime;		//时长
	private String remarks;			//备注
	private String brief;			//简介
	private String videoUrl;		//视频存放路径
	private String state;			//是否被禁用,如果直接删除可以使用
	private String expandedName;	//扩展名
	
	public String getVideoId() {
		return videoId;
	}
	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}
	public String getVideoname() {
		return videoname;
	}
	public void setVideoname(String videoname) {
		this.videoname = videoname;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public Integer getVideotime() {
		return videotime;
	}
	public void setVideotime(Integer videotime) {
		this.videotime = videotime;
	}
	public String getRemaks() {
		return remarks;
	}
	public void setRemaks(String remarks) {
		this.remarks = remarks;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getExpandedName() {
		return expandedName;
	}
	public void setExpandedName(String expandedName) {
		this.expandedName = expandedName;
	}
	@Override
	public String toString() {
		return "Video [videoId=" + videoId + ", videoname=" + videoname + ", uuidName=" + uuidName + ", videotime="
				+ videotime + ", remarks=" + remarks + ", brief=" + brief + ", videoUrl=" + videoUrl + ", state=" + state
				+ ", expandedName=" + expandedName + "]";
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
