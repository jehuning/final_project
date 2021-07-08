package com.kh.pugis.service.consulting.domain;


public class TotalSales {
	String sales_date;
	String customer_id;
	int customer_ticketSales;
	int customer_facilitySales;
	int customer_salesSum;
	int total_sales;
	int fsum;
	int tsum;

	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getCustomer_ticketSales() {
		return customer_ticketSales;
	}
	public void setCustomer_ticketSales(int customer_ticketSales) {
		this.customer_ticketSales = customer_ticketSales;
	}
	public int getCustomer_facilitySales() {
		return customer_facilitySales;
	}
	public void setCustomer_facilitySales(int customer_facilitySales) {
		this.customer_facilitySales = customer_facilitySales;
	}
	public int getCustomer_salesSum() {
		return customer_salesSum;
	}
	public void setCustomer_salesSum(int customer_salesSum) {
		this.customer_salesSum = customer_salesSum;
	}
	public int getTotal_sales() {
		return total_sales;
	}
	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
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