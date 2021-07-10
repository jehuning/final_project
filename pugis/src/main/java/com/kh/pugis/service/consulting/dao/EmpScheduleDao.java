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
     List<Schedule> depSchedule(HashMap<String,String> hm);
     List<RegularConsult> regularConSchedule(HashMap<String,String> hm);
     List<MarketingConsult>  marketingConSchedule(HashMap<String,String> hm);
}
