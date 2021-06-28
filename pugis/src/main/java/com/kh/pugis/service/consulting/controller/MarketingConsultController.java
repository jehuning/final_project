package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.MarketingConsultService;




@Controller
@RequestMapping(value = "/mconsult")
public class MarketingConsultController
{

	@Autowired
	MarketingConsultService mcs;
	
	@RequestMapping(value = "/event")
	public void printEvent(){
		
	}
	@RequestMapping(value = "/selectevent")
	public void selectEvent(){
		
	}
	@RequestMapping(value = "/selectcustomer")
	public void selectCustomer(){
		mcs.selectCustomer();
	}
	@RequestMapping(value = "/save")
	public void saveSchedule(){
	
	}
}
