// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SalesDataService.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;


public interface SalesDataService
{
	ByTicketSales ticketSalesSummary();
	ByAgeSales ageSalesSummary();
	ByGenderSales genderSalesSummary();
	ByFacilitySales facilitySalesSummary();
	TotalSales totalSalesSummary();
	
	List<TotalSales> totallist();
	List<ByTicketSales> ticketlist();
	List<ByAgeSales> agelist();
	List<ByGenderSales> genderlist();
	List<ByFacilitySales> facilitylist();
}
