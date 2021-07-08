package com.kh.pugis.service.consulting.dao;

import java.util.HashMap;
import java.util.List;

import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.Schedule;

public interface EmpScheduleDao
{

     void scheduleCalendar();

     List<Schedule> empSchedule(HashMap<String,String> hm);

     void depSchedule();
}
