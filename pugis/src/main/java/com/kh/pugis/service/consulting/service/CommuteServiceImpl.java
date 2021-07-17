package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.CommuteDao;
import com.kh.pugis.service.consulting.domain.Commute;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CommuteServiceImpl
    implements CommuteService
{
	 @Autowired
	 CommuteDao cd;
    public CommuteServiceImpl()
    {
    }

    public void startWork(Commute c)
    {
    	LocalDate date = LocalDate.now();
    	String work_date = date.toString();
    	System.out.println(work_date);
    	c.setWork_date(work_date);
    	
        cd.startWork(c);
    }

    public void leaveWork(Commute c)
    {
//    	LocalDate date = LocalDate.now();
//    	String work_date = date.toString();
//    	System.out.println(work_date);
//    	c.setWork_date(work_date);
    	
        cd.leaveWork(c);
    }

    public List<Commute> commuteHistory(Commute c)
    {
    	LocalDate date = LocalDate.now();
    	String date2 = date.toString();
    	System.out.println(date2);
    	LocalDate dateMinus = date.minusDays(4);
    	String date1 = dateMinus.toString();
    	System.out.println(date1);
    	System.out.println(date2);
    	HashMap<String,String> hm = new HashMap<String, String>();
    	hm.put("sDate", date1);
    	hm.put("fDate", date2);
    	hm.put("emp_id", c.getEmp_id());
    	
    	for(Commute c1 :cd.commuteHistory(hm)){
    		System.out.println(c1.getWork_date());
    	}
    	return cd.commuteHistory(hm);
    	
    }
   
}
