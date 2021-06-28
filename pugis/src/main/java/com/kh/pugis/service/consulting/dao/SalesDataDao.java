package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;


public interface SalesDataDao
{

	TotalSales totalSalesSummary();
	ByTicketSales ticketSalesSummary();
	ByAgeSales ageSalesSummary();
	ByGenderSales genderSalesSummary();
	ByFacilitySales facilitySalesSummary();
	
	List<TotalSales> totallist();
	List<ByTicketSales> ticketlist();
	List<ByAgeSales> agelist();
	List<ByGenderSales> genderlist();
	List<ByFacilitySales> facilitylist();
}
