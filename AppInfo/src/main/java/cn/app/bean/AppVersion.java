package cn.app.bean;

import java.util.Date;

/**
 * App 版本
 * @author Administrator
 *
 */
public class AppVersion {
	/**int(30) 版本ID */
	private Integer id;			
	/**int(30) appID*/
	private Integer appId;		
	/**varchar(50) 版本号*/
	private String versionNo;	
	/**varchar(2000) 版本信息 */
	private String versionInfo;	
	/** int(30) 发表状态  1 ,预发布   2 已发布*/
	private Integer publishStatus;
	/**varchar(500) 下载链接*/
	private String downloadLink;
	/** decimal(20,2) 版本大小*/
	private Double versionSize;	
	/**int(30) 创建者ID*/
	private Integer createdBy;	
	/** datetime 创建时间*/
	private Date creationDate;
	/**int(30) 更新者ID*/
	private Integer modifyBy;	
	/**datetime 更新者时间 */
	private Date modifyDate;	
	/**varchar(500)apk安装包路径*/
	private String apkLocPath;	
	/**varchar(500) apk安装包文件名称*/
	private String apkFileName;	
	
	public AppVersion() {}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAppId() {
		return appId;
	}
	public void setAppId(Integer appId) {
		this.appId = appId;
	}
	public String getVersionNo() {
		return versionNo;
	}
	public void setVersionNo(String versionNo) {
		this.versionNo = versionNo;
	}
	public String getVersionInfo() {
		return versionInfo;
	}
	public void setVersionInfo(String versionInfo) {
		this.versionInfo = versionInfo;
	}
	public Integer getPublishStatus() {
		return publishStatus;
	}
	public void setPublishStatus(Integer publishStatus) {
		this.publishStatus = publishStatus;
	}
	public String getDownloadLink() {
		return downloadLink;
	}
	public void setDownloadLink(String downloadLink) {
		this.downloadLink = downloadLink;
	}
	public Double getVersionSize() {
		return versionSize;
	}
	public void setVersionSize(Double versionSize) {
		this.versionSize = versionSize;
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
	public String getApkLocPath() {
		return apkLocPath;
	}
	public void setApkLocPath(String apkLocPath) {
		this.apkLocPath = apkLocPath;
	}
	public String getApkFileName() {
		return apkFileName;
	}
	public void setApkFileName(String apkFileName) {
		this.apkFileName = apkFileName;
	}
	@Override
	public String toString() {
		return "AppVersion [id=" + id + ", appId=" + appId + ", versionNo=" + versionNo + ", versionInfo=" + versionInfo
				+ ", publishStatus=" + publishStatus + ", downloadLink=" + downloadLink + ", versionSize=" + versionSize
				+ ", createdBy=" + createdBy + ", creationDate=" + creationDate + ", modifyBy=" + modifyBy
				+ ", modifyDate=" + modifyDate + ", apkLocPath=" + apkLocPath + ", apkFileName=" + apkFileName + "]";
	}
	
	
}
