package com.kh.pugis.service.consulting.controller;

import com.kh.pugis.service.consulting.service.EmpInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/emp")
public class EmpInfoController
{
	@Autowired
	EmpInfoService es;
    public EmpInfoController() { }
    
	@RequestMapping(value = "/summary")
    public String empInfoSummary(Model model)
    {
        model.addAttribute("empSummary", es.empInfoSummary());
        return "service/consulting/empInfo";
    }
	@RequestMapping(value = "/specific")
    public void empInfoSpecific()
    {
    }

   
}
