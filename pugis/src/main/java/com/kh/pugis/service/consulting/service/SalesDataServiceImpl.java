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

	// 전체 매출 리스트 출력
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
	
	// 전체 매출의 총합 계산
	@Override
	public TotalSales totalSum(String date)
	{
		List<TotalSales> tssl = sdd.totallist(date);
		int fsum = 0;
		int tsum = 0;
		for(TotalSales t : tssl) { 
			fsum += t.getCustomer_facilitySales();
			tsum += t.getCustomer_ticketSales();
		}
		
		int customer_salesSum = fsum + tsum;
		TotalSales tss = new TotalSales();
		tss.setFsum(fsum);
		tss.setTsum(tsum);
		tss.setCustomer_salesSum(customer_salesSum);
		
		return tss;
	}
	
	// 연령별 매출 리스트 출력
	@Override
	public List<ByAgeSales> agelist(String date)
	{
		return sdd.agelist(date);
	}
	
	// 연령별 매출 총합 계산
	@Override
	public ByAgeSales ageSum(String date)
	{
		List<ByAgeSales> assl = sdd.agelist(date);
		int fsum = 0;
		int tsum = 0;
		for(ByAgeSales a : assl) {
			 
			fsum += a.getAge_facilitySales();
			tsum += a.getAge_ticketSales();
		}
		int age_salesSum = fsum + tsum;
		ByAgeSales ass = new ByAgeSales();
		ass.setFsum(fsum);
		ass.setTsum(tsum);
		ass.setAge_salesSum(age_salesSum);
		
		return ass;
	}

	// 성별별 매출 리스트 출력
	@Override
	public List<ByGenderSales> genderlist(String date)
	{
		return sdd.genderlist(date);
	}
	
	// 성별별 매출 리스트 총합
	@Override
	public ByGenderSales genderSum(String date)
	{
		List<ByGenderSales> gssl = sdd.genderlist(date);
		int fsum = 0;
		int tsum = 0;
		for(ByGenderSales g : gssl) {
			
			fsum += g.getGender_facilitySales();
			tsum += g.getGender_ticketSales();
		}
		int gender_salesSum = fsum + tsum;
		ByGenderSales gss = new ByGenderSales();
		gss.setFsum(fsum);
		gss.setTsum(tsum);
		gss.setGender_salesSum(gender_salesSum);
		
		return gss;
	}
	
	// 티켓 매출 리스트 출력
	@Override
	public List<ByTicketSales> ticketlist(String date)
	{
		return sdd.ticketlist(date);
	}
	
	// 티켓 매출의 총합 계산
	@Override
	public ByTicketSales ticketSum(String date)
	{
		List<ByTicketSales> tsl = sdd.ticketlist(date);
		int tsum = 0;
		for(ByTicketSales t : tsl) { 
			tsum += t.getTicket_sales();
		}
		
		ByTicketSales tss = new ByTicketSales();
		tss.setTicket_salesSum(tsum);
		
		return tss;
	}
	
	// 부대시설 매출 리스트 출력
	@Override
	public List<ByFacilitySales> facilitylist(String date)
	{
		return sdd.facilitylist(date);
	}

	// 부대시설 매출의 총합 계산
	@Override
	public ByFacilitySales facilitySum(String date)
	{
		List<ByFacilitySales> fsl = sdd.facilitylist(date);
		int fsum = 0;
		for(ByFacilitySales t : fsl) { 
			fsum += t.getFacility_sales();
		}
		
		ByFacilitySales fss = new ByFacilitySales();
		fss.setFacility_salesSum(fsum);
		
		return fss;
	}
}
