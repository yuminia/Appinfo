package cn.app.bean;

import java.util.Date;

public class Promotion {//推销，促销
	/**int 主键 */
	private Integer id;	
	/**int(30)  APP ID*/
	private Integer appId;		
	/**int(50)页面浏览量*/
	private Integer adPV;		
	/** int(30) 上传平台*/
	private Integer carouselPosition;
	/**int(30) 创建者ID */
	private Integer createdBy;	
	/**int(30) 更新者ID*/
	private Integer modifyBy;	
	/** varchar(100)图片路径*/
	private String adPicPath;	
	/** datetime 更新开始时间*/
	private Date startTime;		
	/** datetime 结束时间*/
	private Date endTime;	
	/** datetime 创建时间*/
	private Date creationDate;	
	/** datetime 更新时间*/
	private Date modifyDate;	
	
	public Promotion() {}
	
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
	public Integer getAdPV() {
		return adPV;
	}
	public void setAdPV(Integer adPV) {
		this.adPV = adPV;
	}
	public Integer getCarouselPosition() {
		return carouselPosition;
	}
	public void setCarouselPosition(Integer carouselPosition) {
		this.carouselPosition = carouselPosition;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public Integer getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(Integer modifyBy) {
		this.modifyBy = modifyBy;
	}
	public String getAdPicPath() {
		return adPicPath;
	}
	public void setAdPicPath(String adPicPath) {
		this.adPicPath = adPicPath;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Override
	public String toString() {
		return "Promotion [id=" + id + ", appId=" + appId + ", adPV=" + adPV + ", carouselPosition=" + carouselPosition
				+ ", createdBy=" + createdBy + ", modifyBy=" + modifyBy + ", adPicPath=" + adPicPath + ", startTime="
				+ startTime + ", endTime=" + endTime + ", creationDate=" + creationDate + ", modifyDate=" + modifyDate
				+ "]";
	}
	
}
