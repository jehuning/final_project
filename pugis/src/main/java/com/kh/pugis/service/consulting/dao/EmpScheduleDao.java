package com.kh.pugis.service.consulting.dao;

import java.util.HashMap;
import java.util.List;

import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.MarketingConsult;
import com.kh.pugis.service.consulting.domain.RegularConsult;
import com.kh.pugis.service.consulting.domain.Schedule;

public interface EmpScheduleDao
{

     void scheduleCalendar();

     List<Schedule> empSchedule(HashMap<String,String> hm);

     String getDept(Schedule s);
     List<Schedule> deptSchedule(HashMap<String,String> hm);
     List<RegularConsult> regularConSchedule(String s);
     List<MarketingConsult>  marketingConSchedule(String s);
}
