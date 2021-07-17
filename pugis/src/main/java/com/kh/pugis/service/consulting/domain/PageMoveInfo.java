package com.kh.pugis.service.consulting.domain;


public class PageMoveInfo
{	
	int selectedSize;
	int totalList;
    int totalPage;
    int pageNumfirst;
    int pageNumlast;
    boolean prevPage;
    boolean nextPage;
    PageInfo pi;
    CustomerInfo ci;
    
    public PageMoveInfo()
    {
    }

    public CustomerInfo getCi()
    {
        return ci;
    }

    public void setCi(CustomerInfo ci)
    {
        this.ci = ci;
    }

    public PageInfo getPi()
    {
        return pi;
    }

    public void setPi(PageInfo pi)
    {
        this.pi = pi;
    }
    
    public int getSelectedSize() {
		return selectedSize;
	}

	public void setSelectedSize(int selectedSize) {
		this.selectedSize = selectedSize;
	}

	public int getTotalList()
    {
        return totalList;
    }

    public void setTotalList(int totalList)
    {
        this.totalList = totalList;
    }

    public int getTotalPage()
    {
        return totalPage;
    }

    public void setTotalPage(int totalPage)
    {
        this.totalPage = totalPage;
    }

    public int getPageNumfirst()
    {
        return pageNumfirst;
    }

    public void setPageNumfirst(int pageNumfirst)
    {
        this.pageNumfirst = pageNumfirst;
    }

    public int getPageNumlast()
    {
        return pageNumlast;
    }

    public void setPageNumlast(int pageNumlast)
    {
        this.pageNumlast = pageNumlast;
    }

    public boolean isPrevPage()
    {
        return prevPage;
    }

    public void setPrevPage(boolean prevPage)
    {
        this.prevPage = prevPage;
    }

    public boolean isNextPage()
    {
        return nextPage;
    }

    public void setNextPage(boolean nextPage)
    {
        this.nextPage = nextPage;
    }

    
}
