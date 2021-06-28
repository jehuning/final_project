package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.CustomerSurveyResultService;



@Controller
@RequestMapping(value = "/surveyresult")
public class CustomerSurveyResultController
{
	@Autowired
	CustomerSurveyResultService cs;
	
	@RequestMapping(value = "/select")
	public void selectCustomerSurvey(){
	}
	@RequestMapping(value = "/view")
	public void viewResult(){
		
	}
    
}
