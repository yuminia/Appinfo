package cn.app.utils;

/**分页工具类*/
public class PageHelper {
	
	private Integer totalCount;//总条数	查数据库
	private Integer pageSize = 10;//每页条数
	private Integer currentPage = 1;//当前页
	private Integer totalPageCount;//总页数	= (总条数/每页条数 )上取整
	private Integer startNo;//起始位置 
	
	public PageHelper() {}
	
	public PageHelper(Integer totalCount, Integer pageSize, Integer currentPage, Integer totalPageCount) {
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalPageCount = totalPageCount;
		this.startNo = (currentPage - 1) * pageSize;
	}

	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {//查询总条数   并计算总页数
		this.totalCount = totalCount;
		if(totalCount%pageSize==0){
			totalPageCount = totalCount/pageSize;
		}else{
			totalPageCount = totalCount/pageSize + 1;
		}
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {//设置当前页码  并计算起始页
		this.currentPage = currentPage;
		this.startNo = (currentPage - 1) * pageSize;
	}
	public Integer getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(Integer totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public Integer getStartNo() {
		return startNo;
	}
	public void setStartNo(Integer startNo) {
		this.startNo = startNo;
	}
	
	
}
