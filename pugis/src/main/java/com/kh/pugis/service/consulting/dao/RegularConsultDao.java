package com.kh.pugis.service.consulting.dao;

import com.kh.pugis.service.consulting.domain.CustomerInfo;
import java.util.HashMap;
import java.util.List;

public interface RegularConsultDao
{

    int countSelect(CustomerInfo customerinfo);
    List selectCustomer(HashMap hashmap);
	 void saveSchedule();
}
