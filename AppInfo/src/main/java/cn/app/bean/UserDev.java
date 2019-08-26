package cn.app.bean;

import java.util.Date;
/**
 * 开发者
 * @author Administrator
 *
 */
public class UserDev {
	/** int(30) 开发者ID*/
	private Integer id;	
	/** varchar(50)开发者编码*/
	private String devCode;		
	/** varchar(50) 开发者名称*/
	private String devName;	
	/**varchar(50) 开发者密码*/
	private String devPassword;	
	/**varchar(50) 开发者邮箱*/
	private String devEmail;	
	/** varchar(500) 开发者信息*/
	private String devInfo;		
	/**int(30) 创建者ID*/
	private Integer createdBy;	
	/** datetime 创建时间*/
	private Date creationDate;	
	/** int(30) 更新者ID*/
	private Integer modifyBy;	
	/** datetime 更新时间*/
	private Date modifyDate;	
	
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
