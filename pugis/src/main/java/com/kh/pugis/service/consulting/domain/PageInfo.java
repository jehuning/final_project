package com.kh.pugis.service.consulting.domain;


public class PageInfo
{
	int currentPage;
    int pageListSize;
    
    public PageInfo()
    {
    }

    public int getCurrentPage()
    {
        return currentPage;
    }

    public void setCurrentPage(int currentPage)
    {
        this.currentPage = currentPage;
    }

    public int getPageListSize()
    {
        return pageListSize;
    }

    public void setPageListSize(int pageListSize)
    {
        this.pageListSize = pageListSize;
    }

    
}
