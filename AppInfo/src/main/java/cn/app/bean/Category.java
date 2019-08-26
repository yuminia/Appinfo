package cn.app.bean;
/**
 * 分类实体
 */
import java.util.Date;

public class Category {
	private Integer id;			//  int(30)
	private Integer parentId;	//  int(30)
	private Integer createdBy;	//  int(30)
	private Integer modifyBy;	//  int(30)
	private String categoryCode;//  varchar(50)
	private String categoryName;//  varchar(50)
	private Date creationTime;	//  datetime
	private Date modifyDate;	//  datetime
	
	public Category() {}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
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
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Date getCreationTime() {
		return creationTime;
	}
	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", parentId=" + parentId + ", createdBy=" + createdBy + ", modifyBy=" + modifyBy
				+ ", categoryCode=" + categoryCode + ", categoryName=" + categoryName + ", creationTime=" + creationTime
				+ ", modifyDate=" + modifyDate + "]";
	}
	
}
