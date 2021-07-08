package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.dao.SalesDataDao;
import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;

public interface SalesDataService {
	List<TotalSales> totallist(String date);
	List<ByTicketSales> ticketlist(String date);
	List<ByAgeSales> agelist(String date);
	List<ByGenderSales> genderlist(String date);
	List<ByFacilitySales> facilitylist(String date);
	
	// 일일 총 매출 계산
	TotalSales totalSum(String date);
	ByAgeSales ageSum(String date);
	ByGenderSales genderSum(String date);
	ByTicketSales ticketSum(String date);
	ByFacilitySales facilitySum(String date);
}
