package cn.app.bean;

import java.util.Date;
/**
 * 后台用户 实体类
 * @author Administrator
 */
public class UserBackend {
	/** int(30) 后台用户ID*/
	private Integer id;			
	/** varchar(50) 后台用户编码*/
	private String userCode;	
	/** varchar(50) 后台用户名称 */
	private String userName;	
	/** int(30) 后台用户类型*/
	private Integer userType;	
	/**int(30) 创建者ID*/
	private Integer createdBy;	
	/** datetime 创建时间*/
	private Date creationDate;
	/**int(30) 更新者ID*/
	private Integer modifyBy;	
	/** datetime 更新时间*/
	private Date modifyDate;	
	/** varchar(50) 后台用户密码*/
	private String userPassword;
	
	public UserBackend() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
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
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	@Override
	public String toString() {
		return "UserBackend [id=" + id + ", userCode=" + userCode + ", userName=" + userName + ", userType=" + userType
				+ ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy=" + modifyBy
				+ ", modifyDate=" + modifyDate + ", userPassword=" + userPassword + "]";
	}
	
}
