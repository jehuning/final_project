package com.kh.pugis.service.consulting.domain;


public class TotalSales
{
	String sales_date;
    String user_id;
    int user_ticketSales;
    int user_facilitySalse;
    int user_salesSum;
    int total_sales;
    public TotalSales()
    {
    }
	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getUser_ticketSales() {
		return user_ticketSales;
	}
	public void setUser_ticketSales(int user_ticketSales) {
		this.user_ticketSales = user_ticketSales;
	}
	public int getUser_facilitySalse() {
		return user_facilitySalse;
	}
	public void setUser_facilitySalse(int user_facilitySalse) {
		this.user_facilitySalse = user_facilitySalse;
	}
	public int getUser_salesSum() {
		return user_salesSum;
	}
	public void setUser_salesSum(int user_salesSum) {
		this.user_salesSum = user_salesSum;
	}
	public int getTotal_sales() {
		return total_sales;
	}
	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
	}

   
}
