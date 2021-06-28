package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.SalesDataService;



@Controller
@RequestMapping(value = "/sales")
public class SalesDataController
{

    @Autowired
    SalesDataService sds;
    
	@RequestMapping(value = "/total")
    public void totalSalseData()
    {
        sds.totalSalesList();
    }

    @RequestMapping(value = "/tssummary")
	public String ticketSalesSummary(Model model){
		
		System.out.println("¼­ºí¸´½ÇÇà");
		
		model.addAttribute("ticketSalesSummary", sds.ticketSalesSummary());
		return "service/consulting/ticketsales";
	}
	
	@RequestMapping(value = "/ticketlist")
	public String ticketlist(Model model) {
		model.addAttribute("byticketsales", sds.ticketlist());
		return "consulting/ticketsales";
	}
	
	@RequestMapping(value = "/agelist")
	public String agelist(Model model) {
		model.addAttribute("byagesales", sds.agelist());
		return "consulting/agesales";
	}

	@RequestMapping(value = "/genderlist")
	public String genderlist(Model model) {
		model.addAttribute("bygendersales", sds.genderlist());
		return "consulting/gendersales";
	}
	
	@RequestMapping(value = "/facilitylist")
	public String facilitylist(Model model) {
		model.addAttribute("byfacilitysales", sds.facilitylist());
		return "consulting/facilitysales";
	}

    
}
