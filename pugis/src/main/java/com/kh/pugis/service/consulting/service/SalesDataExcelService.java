package com.kh.pugis.service.consulting.service;

import javax.servlet.http.HttpServletResponse;

import com.kh.pugis.service.consulting.domain.TotalSales;

public interface SalesDataExcelService {
	
	void totalExcelDown(String date, HttpServletResponse resp) throws Exception;
	void facilityExcelDown(String date, HttpServletResponse resp) throws Exception;
	void ticketExcelDown(String date, HttpServletResponse resp) throws Exception;
	void genderExcelDown(String date, HttpServletResponse resp) throws Exception;
	void ageExcelDown(String date, HttpServletResponse resp) throws Exception;

}
