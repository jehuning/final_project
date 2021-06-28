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
		return sqlSession.selectList("Sales.getTotalSales");
	}
	
	@Override
	public List<ByTicketSales> ticketlist() {
		return sqlSession.selectList("Sales.getTicketSales");
	}
	
	@Override
	public List<ByAgeSales> agelist() {
		return sqlSession.selectList("Sales.getAgeSales");
	}
	
	@Override
	public List<ByGenderSales> genderlist() {
		return sqlSession.selectList("Sales.getGenderSales");
	}
	
	@Override
	public List<ByFacilitySales> facilitylist() {
		return sqlSession.selectList("Sales.getFacilitySales");
	}
	
	
	public TotalSales totalSalesSummary(){
		TotalSales ts = new TotalSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("TotalSales.getTotalSalesSum", 210622);
	}
	
	public ByTicketSales ticketSalesSummary(){
		ByTicketSales ts = new ByTicketSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("ByTicketSales.getTicketSalesSum", 210622);
	}
	
	public ByAgeSales ageSalesSummary(){
		ByAgeSales as = new ByAgeSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("ByAgeSales.getAgeSalesSum", 210622);
	}
	
	public ByGenderSales genderSalesSummary(){
		ByGenderSales gs = new ByGenderSales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("ByGenderSales.getGenderSalesSum", 210622);
	}
	
	public ByFacilitySales facilitySalesSummary(){
		ByFacilitySales fs = new ByFacilitySales();

		System.out.println("SqlSession ===> " + sqlSession);
			
		 return sqlSession.selectOne("ByFacilitySales.getFacilitySalesSum", 210622);
	}
}
