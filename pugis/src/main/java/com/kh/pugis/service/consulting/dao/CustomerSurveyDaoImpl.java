package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerSurveyDaoImpl
    implements CustomerSurveyDao
{

	 @Autowired
	    private SqlSession sqlSession;

    public void saveSurvey()
    {
        CustomerSurveyInfo ci = new CustomerSurveyInfo();
    }

    public void selectSurvey()
    {
        CustomerSurveyInfo ci = new CustomerSurveyInfo();
    }

    public void selectCustomer()
    {
        CustomerInfo ui = new CustomerInfo();
    }

    public void CustomerPageMove()
    {
    }

    public void distributeSurvey()
    {
        CustomerSurveyDistribution cd = new CustomerSurveyDistribution();
    }

}
