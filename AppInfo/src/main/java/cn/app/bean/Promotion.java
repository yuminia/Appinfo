package cn.app.bean;

import java.util.Date;

public class Promotion {//推销，促销
	private Integer id;			//int
	private Integer appId;		// int(30)
	private Integer adPV;		// int(50)
	private Integer carouselPosition;// int(30)
	private Integer createdBy;	// int(30)
	private Integer modifyBy;	// int(30)
	private String adPicPath;	// varchar(100)
	private Date startTime;		// datetime
	private Date endTime;		// datetime
	private Date creationDate;	// datetime
	private Date modifyDate;	// datetime
	
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
