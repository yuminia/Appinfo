package cn.app.bean;

import java.util.Date;
/**
 * 
 * @author Administrator
 *
 */
public class AppInfo {
	/**int(30) appID*/
	private Integer id;		
	/** varchar(50)软件名称*/
	private String softwareName;
	/** varchar(50)APK名称*/
	private String APKName;	
	/**varchar(50) 支持ROM*/
	private String supportROM;	
	/**varchar(50) 界面语言*/
	private String interfaceLanguage;	
	/**decimal(30,2) 软件大小*/
	private Double softwareSize;	
	/**date 更新时间*/
	private Date updateDate;
	/*** int(30) 开发者ID*/
	private Integer devId;			
	/** varchar(5000) APP简介*/
	private String appInfo;	
	/**int(30) APP状态<br>
	 * 1 待审核<br>
	 * 2 审核未通过<br>
	 * 3 审核通过<br>
	 * 4 已上架<br>
	 * 5 已下架*/
	private Integer status;	
	/**datetime 上架日期*/
	private Date onSaleDate;
	/** datetime 下架日期*/
	private Date offSaleDate;			
	/**int(30) 所属平台ID*/
	private Integer flatformId;	
	/**int(30) 一级分类*/
	private Integer categoryLevel1;	
	/** int(30) 二级分类*/
	private Integer categoryLevel2;	
	/** int(30) 三级分类*/
	private Integer categoryLevel3;	
	/**int(30)下载次数 */
	private Integer downloads;		
	/**int(30) 创建者ID*/
	private Integer createdBy;		
	/** datetime 创建时间*/
	private Date creationDate;		
	/**int(30)更新者ID*/
	private Integer modifyBy;			
	/**datetime 更新时间*/
	private Date modifyDate;
	/**varchar(500) logo图片*/
	private String logoPicPath;		
	/**varchar(500) logo图片路径 */
	private String logoLocPath;		
	/**int(30)版本信息id*/
	private Integer versionId;	
	
	private String categoryName1;
	private String categoryName2;
	private String categoryName3;
	private String flatformName;
	private String versionNo;
	private String publishStatus;
	
	
	public String getVersionNo() {
		return versionNo;
	}
	public void setVersionNo(String versionNo) {
		this.versionNo = versionNo;
	}
	public String getFlatformName() {
		return flatformName;
	}
	public void setFlatformName(String flatformName) {
		this.flatformName = flatformName;
	}
	public String getCategoryName1() {
		return categoryName1;
	}
	public void setCategoryName1(String categoryName1) {
		this.categoryName1 = categoryName1;
	}
	public String getCategoryName2() {
		return categoryName2;
	}
	public void setCategoryName2(String categoryName2) {
		this.categoryName2 = categoryName2;
	}
	public String getCategoryName3() {
		return categoryName3;
	}
	public void setCategoryName3(String categoryName3) {
		this.categoryName3 = categoryName3;
	}
	public AppInfo() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSoftwareName() {
		return softwareName;
	}
	public void setSoftwareName(String softwareName) {
		this.softwareName = softwareName;
	}
	public String getAPKName() {
		return APKName;
	}
	public void setAPKName(String aPKName) {
		APKName = aPKName;
	}
	public String getSupportROM() {
		return supportROM;
	}
	public void setSupportROM(String supportROM) {
		this.supportROM = supportROM;
	}
	public String getInterfaceLanguage() {
		return interfaceLanguage;
	}
	public void setInterfaceLanguage(String interfaceLanguage) {
		this.interfaceLanguage = interfaceLanguage;
	}
	public Double getSoftwareSize() {
		return softwareSize;
	}
	public void setSoftwareSize(Double softwareSize) {
		this.softwareSize = softwareSize;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Integer getDevId() {
		return devId;
	}
	public void setDevId(Integer devId) {
		this.devId = devId;
	}
	public String getAppInfo() {
		return appInfo;
	}
	public void setAppInfo(String appInfo) {
		this.appInfo = appInfo;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getOnSaleDate() {
		return onSaleDate;
	}
	public void setOnSaleDate(Date onSaleDate) {
		this.onSaleDate = onSaleDate;
	}
	public Date getOffSaleDate() {
		return offSaleDate;
	}
	public void setOffSaleDate(Date offSaleDate) {
		this.offSaleDate = offSaleDate;
	}
	public Integer getFlatformId() {
		return flatformId;
	}
	public void setFlatformId(Integer flatformId) {
		this.flatformId = flatformId;
	}
	public Integer getCategoryLevel1() {
		return categoryLevel1;
	}
	public void setCategoryLevel1(Integer categoryLevel1) {
		this.categoryLevel1 = categoryLevel1;
	}
	public Integer getCategoryLevel2() {
		return categoryLevel2;
	}
	public void setCategoryLevel2(Integer categoryLevel2) {
		this.categoryLevel2 = categoryLevel2;
	}
	public Integer getCategoryLevel3() {
		return categoryLevel3;
	}
	public void setCategoryLevel3(Integer categoryLevel3) {
		this.categoryLevel3 = categoryLevel3;
	}
	public Integer getDownloads() {
		return downloads;
	}
	public void setDownloads(Integer downloads) {
		this.downloads = downloads;
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
	public String getLogoPicPath() {
		return logoPicPath;
	}
	public void setLogoPicPath(String logoPicPath) {
		this.logoPicPath = logoPicPath;
	}
	public String getLogoLocPath() {
		return logoLocPath;
	}
	public void setLogoLocPath(String logoLocPath) {
		this.logoLocPath = logoLocPath;
	}
	public Integer getVersionId() {
		return versionId;
	}
	public void setVersionId(Integer versionId) {
		this.versionId = versionId;
	}
	@Override
	public String toString() {
		return "AppInfo [id=" + id + ", softwareName=" + softwareName + ", APKName=" + APKName + ", supportROM="
				+ supportROM + ", interfaceLanguage=" + interfaceLanguage + ", softwareSize=" + softwareSize
				+ ", updateDate=" + updateDate + ", devId=" + devId + ", appInfo=" + appInfo + ", status=" + status
				+ ", onSaleDate=" + onSaleDate + ", offSaleDate=" + offSaleDate + ", flatformId=" + flatformId
				+ ", categoryLevel1=" + categoryLevel1 + ", categoryLevel2=" + categoryLevel2 + ", categoryLevel3="
				+ categoryLevel3 + ", downloads=" + downloads + ", createdBy=" + createdBy + ", creationDate="
				+ creationDate + ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + ", logoPicPath="
				+ logoPicPath + ", logoLocPath=" + logoLocPath + ", versionId=" + versionId + "]";
	}
	public String getPublishStatus() {
		return publishStatus;
	}
	public void setPublishStatus(String publishStatus) {
		this.publishStatus = publishStatus;
	}
	
}
