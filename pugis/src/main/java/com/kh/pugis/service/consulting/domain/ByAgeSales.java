package com.kh.pugis.service.consulting.domain;


public class ByAgeSales
{

    public ByAgeSales()
    {
    }

    String sales_date;
    String age_group;
    int age_ticketSales;
    int age_facilitySales;
    int age_salesSum;
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
}
