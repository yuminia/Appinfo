package cn.app.bean;

public class Flatform {
	
	private Integer id;
	private String FlatformName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFlatformName() {
		return FlatformName;
	}
	public void setFlatformName(String flatformName) {
		FlatformName = flatformName;
	}
	@Override
	public String toString() {
		return "Flatform [id=" + id + ", FlatformName=" + FlatformName + "]";
	}
	
}
