package cn.app.bean;
/**
 * 分类实体
 */
import java.util.Date;

public class Category {
	/**
	 * int(30) 类别ID
	 */
	private Integer id;		
	/**
	 * int(30) 父类ID
	 */
	private Integer parentId;	
	/**
	 *  int(30) 创建者ID
	 */
	private Integer createdBy;	
	/**
	 * int(30) 更新者ID
	 */
	private Integer modifyBy;	
	/**
	 * varchar(50) 类别编码
	 */
	private String categoryCode;
	/**
	 * varchar(50)类别名称
	 */
	private String categoryName;  
	/**
	 *  datetime创建时间
	 */
	private Date creationTime;	
	/**
	 * datetime 更新时间
	 */
	private Date modifyDate;	  
	
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
