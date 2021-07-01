package com.kh.pugis.service.consulting.service;

// import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.SalesDataDao;
import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.TotalSales;

@Service
@Transactional
public class SalesDataServiceImpl implements SalesDataService{
	@Autowired
	SalesDataDao sdd;
	
	@Override
	public List<TotalSales> totallist(String date)
	{
		/*	출력 확인용 테스트코드
		List<TotalSales> l = new ArrayList<TotalSales>();
		l = sdd.totallist(date);
		System.out.println(l.get(0).getCustomer_id());
		return l;
		*/
		
		return sdd.totallist(date);
	}
	
	@Override
	public List<ByTicketSales> ticketlist(String date)
	{
		
		return sdd.ticketlist(date);
	}
	
	@Override
	public List<ByAgeSales> agelist(String date)
	{
		return sdd.agelist(date);
	}

	
	@Override
	public List<ByGenderSales> genderlist(String date)
	{
		return sdd.genderlist(date);
	}
	
	
	@Override
	public List<ByFacilitySales> facilitylist(String date)
	{
		return sdd.facilitylist(date);
	}
	
}
