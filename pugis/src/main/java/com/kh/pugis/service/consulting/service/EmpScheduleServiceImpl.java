// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EmpScheduleServiceImpl.java

package com.kh.pugis.service.consulting.service;


import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.EmpScheduleDao;
import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.Schedule;

@Service
@Transactional
public class EmpScheduleServiceImpl
    implements EmpScheduleService
{
	@Autowired
	 EmpScheduleDao esd;
    public EmpScheduleServiceImpl()
    {
    }

    public void scheduleCalendar()
    {
        esd.scheduleCalendar();
    }

    public List<Schedule> empSchedule(Schedule s)
    {
    	LocalDate date = LocalDate.now();
    	String schedule_date = date.toString();
    	s.setSchedule_date(schedule_date);
    	//현재 날짜를 구함.
    	int l = date.lengthOfMonth();
    	String last = String.valueOf(l);
    	String a = schedule_date.substring(0, schedule_date.length()-2);
    	String lastDayOfMonth = a + last;
    	
    	System.out.println(lastDayOfMonth);
    	HashMap<String, String> hm = new HashMap<String,String>();
    	hm.put("sDate", schedule_date);
    	hm.put("fDate", lastDayOfMonth);
    	hm.put("emp_id", s.getEmp_id());
    	return esd.empSchedule(hm);
    }

    public void depSchedule()
    {
    }

   
}
