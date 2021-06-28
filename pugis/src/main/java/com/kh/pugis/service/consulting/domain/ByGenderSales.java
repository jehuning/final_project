package com.kh.pugis.service.consulting.domain;


public class ByGenderSales
{

    public ByGenderSales()
    {
    }

    String sales_date;
    String gender_group;
    int gender_ticketSales;
    int gender_facilitySales;
    int gender_salesSum;
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
}
