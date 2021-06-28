package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.EmpScheduleService;



@Controller
@RequestMapping(value = "/Schedule")
public class EmpScheduleController
{

	@Autowired 
	EmpScheduleService empScheduleService;
	
	@RequestMapping(value = "/calendar")
	public void scheduleCalendar(){
		
		empScheduleService.scheduleCalendar();
	}
	@RequestMapping(value = "/emp")
	public void empSchedule(){}
	@RequestMapping(value = "/dep")
	public void depSchedule(){}
}
