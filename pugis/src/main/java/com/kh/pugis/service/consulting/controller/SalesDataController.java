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
    
	@RequestMapping(value = "/ttssummary")
	public String totalSalesSummary(Model model){
		
		System.out.println("서블릿실행");
		
		model.addAttribute("totalSalesSummary", sds.totalSalesSummary());
		return "service/consulting/totalsales";
	}
	
	@RequestMapping(value = "/tssummary")
	public String ticketSalesSummary(Model model){
		
		System.out.println("서블릿실행");
		
		model.addAttribute("ticketSalesSummary", sds.ticketSalesSummary());
		return "service/consulting/totalticketsales";
	}
	
	@RequestMapping(value = "/assummary")
	public String ageSalesSummary(Model model){
		
		System.out.println("서블릿실행");
		
		model.addAttribute("ageSalesSummary", sds.ageSalesSummary());
		return "service/consulting/totalagesales";
	}
	
	@RequestMapping(value = "/gssummary")
	public String genderSalesSummary(Model model){
		
		System.out.println("서블릿실행");
		
		model.addAttribute("genderSalesSummary", sds.genderSalesSummary());
		return "service/consulting/totalgendersales";
	}
	
	@RequestMapping(value = "/fssummary")
	public String facilitySalesSummary(Model model){
		
		System.out.println("서블릿실행");
		
		model.addAttribute("facilitySalesSummary", sds.facilitySalesSummary());
		return "service/consulting/totalfacilitysales";
	}
	
	
	@RequestMapping(value = "/totallist")
	public String totallist(Model model) {
		model.addAttribute("totalsales", sds.totallist());
		return "consulting/totalsales";
	}
	
	@RequestMapping(value = "/ticketlist")
	public String ticketlist(Model model) {
		model.addAttribute("byticketsales", sds.ticketlist());
		return "consulting/totalticketsales";
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
