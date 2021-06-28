package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.CustomerSurveyService;


@Controller
@RequestMapping(value = "/survey")
public class CustomerSurveyController
{
	@Autowired
	CustomerSurveyService cs;

    @RequestMapping(value = "/save")
	public void saveSurvey(){
		cs.saveSurvey();
	}
	@RequestMapping(value = "/select")
	public void selectSurvey(){
		
	}
	@RequestMapping(value = "/selectcustomer")
	public void selectCustomer(){
		
	}
	@RequestMapping(value = "/customerpage")
	public void CustomerPageMove(){
		
	}
	@RequestMapping(value = "/distribute")
	public void distributeSurvey(){
		
	}

    
}
