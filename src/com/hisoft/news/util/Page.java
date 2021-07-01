package com.hisoft.news.util;

import com.hisoft.news.javabean.News;

import java.util.List;

/**
 * @Created by IntelliJ IDEA.
 * @Author: XiaoMing
 * @Date: 2021/6/21
 * @Time: 10:14
 * Come on, boy
 **/
public class Page {
    private int currPageNo = 1;
    private int pageSize = 8;
    private int totalCount;     //记录总数
    private int totalPageCount; //总页数
    List<News> newsList;        //每页新闻集合

    public Page() {
    }

    public Page(int currPageNo, int pageSize, int totalCount, int totalPageCount, List<News> newsList) {
        this.currPageNo = currPageNo;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.totalPageCount = totalPageCount;
        this.newsList = newsList;
    }

    public int getCurrPageNo() {
        return currPageNo;
    }

    public void setCurrPageNo(int currPageNo) {
        this.currPageNo = currPageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        //计算总页数
        this.totalPageCount = totalCount%pageSize==0?totalCount/pageSize:totalCount/pageSize+1;
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;

    }

    public List<News> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }
}
