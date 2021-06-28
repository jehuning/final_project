package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SalesDataDaoImpl
    implements SalesDataDao
{

   
	@Autowired
    SqlSession sqlSession;

	@Override
	public ByTicketSales ticketSalesSummary() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TotalSales> totalSalseList() {
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
