package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerQuestionListDaoImpl
    implements CustomerQuestionListDao
{

	 @Autowired
	    private SqlSession sqlSession;

    public void customerQuestionlist()
    {
        CustomerQuestion cl = new CustomerQuestion();
    }

    public void customerQuestionDetail()
    {
    }

    public void customerQuestionPageMove()
    {
    }

    public void customerQuestionSearch()
    {
    }

}
