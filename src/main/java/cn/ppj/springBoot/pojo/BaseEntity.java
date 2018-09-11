package cn.ppj.springBoot.pojo;

import java.io.Serializable;
import java.util.Date;

//抽象类
public abstract class BaseEntity implements Serializable{
	private String createBy;	//创建者
	private Date createTime;	//创建时间
	private String updateBy;	//更新者
	private Date updateTime;	//更新时间
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
}
