package com.kh.pugis.service.consulting.domain;


public class ByFacilitySales {
    String sales_date;
    String facility_name;
    int facility_sales;
    int facility_salesSum;

    public ByFacilitySales() {
    }

	public String getSales_date() {
		return sales_date;
	}
	public void setSales_date(String sales_date) {
		this.sales_date = sales_date;
	}
	public String getFacility_name() {
		return facility_name;
	}
	public void setFacility_name(String facility_name) {
		this.facility_name = facility_name;
	}
	public int getFacility_sales() {
		return facility_sales;
	}
	public void setFacility_sales(int facility_sales) {
		this.facility_sales = facility_sales;
	}
	public int getFacility_salesSum() {
		return facility_salesSum;
	}
	public void setFacility_salesSum(int facility_salesSum) {
		this.facility_salesSum = facility_salesSum;
	}
}
