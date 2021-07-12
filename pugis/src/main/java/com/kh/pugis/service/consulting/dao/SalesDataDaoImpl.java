package com.kh.pugis.service.consulting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.pugis.service.consulting.domain.ByAgeSales;
import com.kh.pugis.service.consulting.domain.ByFacilitySales;
import com.kh.pugis.service.consulting.domain.ByGenderSales;
import com.kh.pugis.service.consulting.domain.ByTicketSales;
import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.TotalSales;

@Repository
public class SalesDataDaoImpl implements SalesDataDao {
	@Autowired
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<TotalSales> totallist(String date) {
		
		return sqlSession.selectList("TotalSales.getTotalSales", date);
	}
	
	@Override
	public List<ByTicketSales> ticketlist(String date) {
		return sqlSession.selectList("TicketSales.getTicketSales", date);
	}
	
	@Override
	public List<ByAgeSales> agelist(String date) {
		return sqlSession.selectList("AgeSales.getAgeSales", date);
	}
	
	@Override
	public List<ByGenderSales> genderlist(String date) {
		return sqlSession.selectList("GenderSales.getGenderSales", date);
	}
	
	@Override
	public List<ByFacilitySales> facilitylist(String date) {
		return sqlSession.selectList("FacilitySales.getFacilitySales", date);
	}
	
	// 엑셀 출력
	
		@Override
		public List<TotalSales> totalsalelist(String date) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("TotalSales.getTotalSales", date);
		}
		
		@Override
		public List<ByFacilitySales> facilitysalelist(String date) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("FacilitySales.getFacilitySales", date);
		}
		
		@Override
		public List<ByTicketSales> ticketsalelist(String date) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("TicketSales.getTicketSales", date);
		}
		
		@Override
		public List<ByGenderSales> gendersalelist(String date) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("GenderSales.getGenderSales", date);
		}
		
		@Override
		public List<ByAgeSales> agesalelist(String date) {
			// TODO Auto-generated method stub
			return sqlSession.selectList("AgeSales.getAgeSales", date);
		}
}
