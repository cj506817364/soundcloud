package cn.ppj.springBoot.pojo;

import java.util.Date;

public class News {
	private String id;
	private String title;
	private String content;
	private String redirectUrl;
	private Date pupdate;
	private String imgLink;
	private String writer;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRedirectUrl() {
		return redirectUrl;
	}

	public void setRedirectUrl(String redirectUrl) {
		this.redirectUrl = redirectUrl;
	}

	public Date getPupdate() {
		return pupdate;
	}

	public void setPupdate(Date pupdate) {
		this.pupdate = pupdate;
	}

	public String getImgLink() {
		return imgLink;
	}

	public void setImgLink(String imgLink) {
		this.imgLink = imgLink;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", content=" + content + ", redirectUrl=" + redirectUrl
				+ ", pupdate=" + pupdate + ", imgLink=" + imgLink + ", writer=" + writer + "]";
	}

}
