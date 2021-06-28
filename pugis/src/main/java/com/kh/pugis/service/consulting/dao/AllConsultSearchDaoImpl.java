package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AllConsultSearchDaoImpl
    implements AllConsultSearchDao
{

	 @Inject
    private SqlSession sqlSession;

    public void allConsultSearch()
    {
        RegularConsultSelectDate rcsd = new RegularConsultSelectDate();
        MarketingEventDate mei = new MarketingEventDate();
        CustomerInfo ui = new CustomerInfo();
        MarketingConsult mc = new MarketingConsult();
        RegularConsult rc = new RegularConsult();
    }

    public void executeConsult()
    {
    }

}
