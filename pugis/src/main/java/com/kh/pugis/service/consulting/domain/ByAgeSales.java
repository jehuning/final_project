package com.kh.pugis.service.consulting.domain;


public class ByAgeSales {
	String sales_date;
    String age_group;
    int age_ticketSales;
    int age_facilitySales;
	int age_sales;
	int age_salesSum;
	int fsum;
	int tsum;
    
    public ByAgeSales() {
    }
    
	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getAge_group() {
		return age_group;
	}
	public void setAge_group(String age_group) {
		this.age_group = age_group;
	}
	public int getAge_ticketSales() {
		return age_ticketSales;
	}
	public void setAge_ticketSales(int age_ticketSales) {
		this.age_ticketSales = age_ticketSales;
	}
	public int getAge_facilitySales() {
		return age_facilitySales;
	}
	public void setAge_facilitySales(int age_facilitySales) {
		this.age_facilitySales = age_facilitySales;
	}
	public int getAge_salesSum() {
		return age_salesSum;
	}
	public void setAge_salesSum(int age_salesSum) {
		this.age_salesSum = age_salesSum;
	}
	public int getAge_sales() {
		return age_sales;
	}
	public void setAge_sales(int age_sales) {
		this.age_sales = age_sales;
	}
	public int getFsum() {
		return fsum;
	}
	public void setFsum(int fsum) {
		this.fsum = fsum;
	}
	public int getTsum() {
		return tsum;
	}
	public void setTsum(int tsum) {
		this.tsum = tsum;
	}
}
