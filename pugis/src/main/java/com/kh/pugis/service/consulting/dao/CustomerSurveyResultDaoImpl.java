package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.CustomerSurveyInfo;
import com.kh.pugis.service.consulting.domain.CustomerSurveyResult;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerSurveyResultDaoImpl
    implements CustomerSurveyResultDao
{

	 @Autowired
	 private SqlSession sqlSession;

    public void selectCustomerSurvey()
    {
        CustomerSurveyInfo ci = new CustomerSurveyInfo();
    }

    public void viewResult()
    {
        CustomerSurveyResult cr = new CustomerSurveyResult();
    }

}
