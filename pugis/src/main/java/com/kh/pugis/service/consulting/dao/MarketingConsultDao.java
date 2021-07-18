package com.kh.pugis.service.consulting.dao;

import java.util.HashMap;
import java.util.List;

import com.kh.pugis.service.consulting.domain.CustomerInfo;

public interface MarketingConsultDao
{


	List<CustomerInfo> selectCustomer(int selectSize);


   String saveSchedule(List<HashMap<String,String>> lm,String consult_code);
}
