package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;

public interface SalesDataDao {
	
	List<TotalSales> totallist(String date);
	List<ByTicketSales> ticketlist(String date);
	List<ByAgeSales> agelist(String date);
	List<ByGenderSales> genderlist(String date);
	List<ByFacilitySales> facilitylist(String date);

	
}