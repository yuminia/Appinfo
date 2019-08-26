package cn.app.bean;

import java.util.Date;
/**
 * 数据字典
 * @author Administrator
 */
public class Dictionary {
	/**int(30)数据字典ID*/
	private Integer id;
	/** varchar(50) 类型编码 */
	private String typeCode;
	/** varchar(50) 类型名称*/
	private String typeName;
	/** int(30) */
	private Integer valueId;
	/** varchar(50) */
	private String valueName;
	/** int(30) 创建者ID */
	private Integer createdBy;
	/**datetime 创建时间*/
	private Date creationDate;
	/**int(30) 更新者ID*/
	private Integer modifyBy;
	/** datetime更新时间*/
	private Date modifyDate; 
	
	public Dictionary() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Integer getValueId() {
		return valueId;
	}
	public void setValueId(Integer valueId) {
		this.valueId = valueId;
	}
	public String getValueName() {
		return valueName;
	}
	public void setValueName(String valueName) {
		this.valueName = valueName;
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
		return "Dictionary [id=" + id + ", typeCode=" + typeCode + ", typeName=" + typeName + ", valueId=" + valueId
				+ ", valueName=" + valueName + ", createdBy=" + createdBy + ", creationDate=" + creationDate
				+ ", modifyBy=" + modifyBy + ", modifyDate=" + modifyDate + "]";
	}
	
}
