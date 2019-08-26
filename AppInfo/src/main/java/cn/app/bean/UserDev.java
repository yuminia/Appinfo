package cn.app.bean;

import java.util.Date;
/**
 * 前台用户
 * @author Administrator
 *
 */
public class UserDev {
	private Integer id;			//int(30)
	private String devCode;		// varchar(50)
	private String devName;		// varchar(50)
	private String devPassword;	// varchar(50)
	private String devEmail;	// varchar(50)
	private String devInfo;		// varchar(500)
	private Integer createdBy;	// int(30)
	private Date creationDate;	// datetime
	private Integer modifyBy;	// int(30)
	private Date modifyDate;	// datetime
	
	public UserDev() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDevCode() {
		return devCode;
	}
	public void setDevCode(String devCode) {
		this.devCode = devCode;
	}
	public String getDevName() {
		return devName;
	}
	public void setDevName(String devName) {
		this.devName = devName;
	}
	public String getDevPassword() {
		return devPassword;
	}
	public void setDevPassword(String devPassword) {
		this.devPassword = devPassword;
	}
	public String getDevEmail() {
		return devEmail;
	}
	public void setDevEmail(String devEmail) {
		this.devEmail = devEmail;
	}
	public String getDevInfo() {
		return devInfo;
	}
	public void setDevInfo(String devInfo) {
		this.devInfo = devInfo;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Override
	public String toString() {
		return "UserDev [id=" + id + ", devCode=" + devCode + ", devName=" + devName + ", devPassword=" + devPassword
				+ ", devEmail=" + devEmail + ", devInfo=" + devInfo + ", createdBy=" + createdBy + ", creationDate="
				+ creationDate + ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + "]";
	}
	
}
