package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MarketingConsultDaoImpl
    implements MarketingConsultDao
{

	@Autowired
    private SqlSession sqlSession;

    public void printEvent()
    {
    }

    public void selectEvent()
    {
        MarketingEventDate mei = new MarketingEventDate();
    }

    public void selectCustomer()
    {
        CustomerInfo ui = new CustomerInfo();
    }

    public void CustomerPageMove()
    {
    }

    public void saveSchedule()
    {
        MarketingEventDate mei = new MarketingEventDate();
        CustomerInfo ui = new CustomerInfo();
        MarketingConsult mc = new MarketingConsult();
    }
    
}
