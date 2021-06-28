package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.*;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegularConsultDaoImpl
    implements RegularConsultDao
{
	 @Autowired
	 SqlSession sqlSession;
    

    public int countSelect(CustomerInfo ci)
    {
        return ((Integer)sqlSession.selectOne("Customer.countSelect", ci)).intValue();
    }

    public List selectCustomer(HashMap hm)
    {
        RegularConsultSelectDate rc = new RegularConsultSelectDate();
        System.out.println(hm.get("customer_address"));
        System.out.println(hm.get("customer_grade"));
        System.out.println(hm.get("page_begin"));
        System.out.println(hm.get("page_end"));
        return sqlSession.selectList("Customer.selectList", hm);
    }

    public void saveSchedule()
    {
        RegularConsultSelectDate rcsd = new RegularConsultSelectDate();
        CustomerInfo ui = new CustomerInfo();
        RegularConsult rc = new RegularConsult();
    }
   
}
