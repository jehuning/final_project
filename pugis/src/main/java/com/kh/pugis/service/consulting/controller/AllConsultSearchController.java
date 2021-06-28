package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.AllConsultSearchService;

@Controller
@RequestMapping(value = "/consultsearch")
public class AllConsultSearchController
{
	@Autowired
	AllConsultSearchService acss;
    
    @RequestMapping(value = "/all")
    public void allConsultSearch()
    {
    }
    @RequestMapping(value = "/execute")
    public void executeConsult()
    {
    }

    
}
