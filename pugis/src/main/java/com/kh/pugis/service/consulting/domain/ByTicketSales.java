package com.kh.pugis.service.consulting.domain;


public class ByTicketSales {
    String sales_date;
    String ticket_name;
    int ticket_sales;
    int ticket_salesSum;
    
    public ByTicketSales()
    {
    }
    
	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getTicket_name() {
		return ticket_name;
	}
	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}
	public int getTicket_sales() {
		return ticket_sales;
	}
	public void setTicket_sales(int ticket_sales) {
		this.ticket_sales = ticket_sales;
	}
	public int getTicket_salesSum() {
		return ticket_salesSum;
	}
	public void setTicket_salesSum(int ticket_salesSum) {
		this.ticket_salesSum = ticket_salesSum;
	}
}
