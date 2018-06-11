package com.youtx.rent.logins.Bean;

import com.youtx.rent.entity.User;

import java.util.List;

/**
 * 分页数据包装类
 * @author smile
 *
 */
public class PageBean {

	//每页数据量
	public static final int PAGE_SIZE = 3;
	//分页数据
	private List<User> data;
	//总页数
	private int totalPages ;
	//当前的页面数
	private int currentPage;

	public static int getPageSize() {
		return PAGE_SIZE;
	}

	public List<User> getData() {
		return data;
	}

	public void setData(List<User> data) {
		this.data = data;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
