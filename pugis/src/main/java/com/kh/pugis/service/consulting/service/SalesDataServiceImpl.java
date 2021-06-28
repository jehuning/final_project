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
	public ByTicketSales ticketSalesSummary() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TotalSales> totalSalesList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ByTicketSales> ticketlist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ByAgeSales> agelist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ByGenderSales> genderlist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ByFacilitySales> facilitylist() {
		// TODO Auto-generated method stub
		return null;
	}
}
