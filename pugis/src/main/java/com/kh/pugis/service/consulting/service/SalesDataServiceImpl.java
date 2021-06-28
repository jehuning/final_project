// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SalesDataServiceImpl.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.dao.SalesDataDao;
import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SalesDataServiceImpl implements SalesDataService{
	@Autowired
    SalesDataDao sdd;

	@Override
	public TotalSales totalSalesSummary(){
		
		return 	sdd.totalSalesSummary();

	}
	
	@Override
	public ByTicketSales ticketSalesSummary(){
		
		return 	sdd.ticketSalesSummary();

	}
	
	@Override
	public ByAgeSales ageSalesSummary(){
		
		return 	sdd.ageSalesSummary();

	}
	
	@Override
	public ByGenderSales genderSalesSummary(){
		
		return 	sdd.genderSalesSummary();

	}
	
	@Override
	public ByFacilitySales facilitySalesSummary(){
		
		return 	sdd.facilitySalesSummary();

	}
	
	@Override
	public List<TotalSales> totallist()
	{
		return sdd.totallist();
	}
	
	@Override
	public List<ByTicketSales> ticketlist()
	{
		return sdd.ticketlist();
	}
	
	@Override
	public List<ByAgeSales> agelist()
	{
		return sdd.agelist();
	}

	
	@Override
	public List<ByGenderSales> genderlist()
	{
		return sdd.genderlist();
	}
	
	
	@Override
	public List<ByFacilitySales> facilitylist()
	{
		return sdd.facilitylist();
	}
}
