package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SalesDataDaoImpl implements SalesDataDao { 
	@Autowired
    SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<TotalSales> totallist() {
		return sqlSession.selectList("TotalSales.getTotalSales");
	}
	
	@Override
	public List<ByTicketSales> ticketlist() {
		return sqlSession.selectList("TicketSales.getTicketSales");
	}
	
	@Override
	public List<ByAgeSales> agelist() {
		return sqlSession.selectList("AgeSales.getAgeSales");
	}
	
	@Override
	public List<ByGenderSales> genderlist() {
		return sqlSession.selectList("GenderSales.getGenderSales");
	}
	
	@Override
	public List<ByFacilitySales> facilitylist() {
		return sqlSession.selectList("FacilitySales.getFacilitySales");
	}
	
	
	public TotalSales totalSalesSummary(){
		TotalSales ts = new TotalSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("TotalSales.getTotalSalesSum", 210622);
	}
	
	public ByTicketSales ticketSalesSummary(){
		ByTicketSales ts = new ByTicketSales();

		System.out.println("SqlSession ===> " + sqlSession);
			//티켓별 합계 금액이므로 selectlist로 받아야할듯.
		 return sqlSession.selectOne("TicketSales.getTicketSalesSum", 210622);
	}
	
	public ByAgeSales ageSalesSummary(){
		ByAgeSales as = new ByAgeSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("AgeSales.getAgeSalesSum", 210622);
	}
	
	public ByGenderSales genderSalesSummary(){
		ByGenderSales gs = new ByGenderSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("GenderSales.getGenderSalesSum", 210622);
	}
	
	public ByFacilitySales facilitySalesSummary(){
		ByFacilitySales fs = new ByFacilitySales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("FacilitySales.getFacilitySalesSum", 210622);
	}
}
