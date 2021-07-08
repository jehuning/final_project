package com.kh.pugis.service.consulting.domain;


public class ByGenderSales {
    String sales_date;
    String gender_group;
    int gender_ticketSales;
    int gender_facilitySales;
	int	gender_sales;
	int	gender_salesSum;
	int fsum;
	int tsum;


    public ByGenderSales() {
    }
    
	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getGender_group() {
		return gender_group;
	}
	public void setGender_group(String gender_group) {
		this.gender_group = gender_group;
	}
	public int getGender_ticketSales() {
		return gender_ticketSales;
	}
	public void setGender_ticketSales(int gender_ticketSales) {
		this.gender_ticketSales = gender_ticketSales;
	}
	public int getGender_facilitySales() {
		return gender_facilitySales;
	}
	public void setGender_facilitySales(int gender_facilitySales) {
		this.gender_facilitySales = gender_facilitySales;
	}
	public int getGender_salesSum() {
		return gender_salesSum;
	}
	public void setGender_salesSum(int gender_salesSum) {
		this.gender_salesSum = gender_salesSum;
	}
	public int getGender_sales() {
		return gender_sales;
	}
	public void setGender_sales(int gender_sales) {
		this.gender_sales = gender_sales;
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
