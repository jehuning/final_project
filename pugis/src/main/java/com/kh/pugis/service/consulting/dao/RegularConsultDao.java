package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.CustomerInfo;
import com.kh.pugis.service.consulting.domain.CustomerInfoListDto;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;

import java.util.HashMap;
import java.util.List;

public interface RegularConsultDao
{

    int countSelect(CustomerInfo customerinfo);
    List<CustomerInfo> selectCustomer(HashMap hashmap);
	 String saveSchedule(List<HashMap<String,String>> lm);
}
