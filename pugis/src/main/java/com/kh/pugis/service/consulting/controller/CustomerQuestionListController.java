package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.CustomerQuestionListService;



@Controller
@RequestMapping(value = "/qna")
public class CustomerQuestionListController
{	
	@Autowired
    CustomerQuestionListService cs;


	@RequestMapping(value = "/list")
	public void customerQuestionlist(){
	}
	@RequestMapping(value = "/detail")
	public void customerQuestionDetail(){
	
	}
	@RequestMapping(value = "/page")
	public void customerQuestionPageMove(){
		
	}
	@RequestMapping(value = "/search")
	public void customerQuestionSearch(){
		
	}

}
