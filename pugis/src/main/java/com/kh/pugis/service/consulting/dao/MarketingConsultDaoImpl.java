package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MarketingConsultDaoImpl
    implements MarketingConsultDao
{

	@Autowired
    private SqlSession sqlSession;


    public List<CustomerInfo> selectCustomer(int selectSize)
    {
        return sqlSession.selectList("Customer.randomList", selectSize);
    }


    public String saveSchedule(List<HashMap<String,String>> lm,String consult_code)
    {
    	int n = 0;
	    for(HashMap<String,String> hm:lm){
	    	hm.put("consult_code", consult_code);
	 	   n += sqlSession.insert("Consult.insertMcSche",hm);
	 	   System.out.println("sql실행결과:"+n);
	    }
	     if(n==lm.size()){
	     	return "스케줄저장성공";
	     }else{
	     	return "저장실패";
	     }
       
    }
    
}
