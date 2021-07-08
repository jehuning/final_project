package com.kh.pugis.service.consulting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.pugis.service.consulting.service.SalesDataService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/sales")
public class SalesDataController {
	@Autowired
	SalesDataService sds;
	
	@RequestMapping(value = "/totallist")
	public String totallist(HttpServletRequest req, Model model) {
		String date;
		date = (String) req.getAttribute("search_date");	// 화면에서 받아온 날짜

		// date = "210707"; // 테스트용 날짜 지정
		
		model.addAttribute("totalSales", sds.totallist(date));
		model.addAttribute("totalSalesSum", sds.totalSum(date));
		
		return "service/consulting/totalsales_back";
	}
	
	@RequestMapping(value = "/ticketlist")
	public String ticketlist(HttpServletRequest req, Model model) {
		String date;
		date = (String) req.getAttribute("search_date");	// 화면에서 받아온 날짜
		
		// date = "210622"; // 테스트용 날짜 지정
		
		model.addAttribute("ticketSales", sds.ticketlist(date));
		model.addAttribute("ticketSalesSum", sds.ticketSum(date));
		
		return "service/consulting/ticketsales_back";
	}
	
	@RequestMapping(value = "/agelist")
	public String agelist(HttpServletRequest req, Model model) {
		String date;
		date = (String) req.getAttribute("search_date");	// 화면에서 받아온 날짜
		
		//date = "210622"; // 테스트용 날짜 지정
		
		model.addAttribute("ageSales", sds.agelist(date));
		model.addAttribute("totalSalesSum", sds.ageSum(date));
		
		return "service/consulting/agesales_back";
	}

	@RequestMapping(value = "/genderlist")
	public String genderlist(HttpServletRequest req, Model model) {
		String date;
		date = (String) req.getAttribute("search_date");	// 화면에서 받아온 날짜
		
		// date = "210622"; // 테스트용 날짜 지정
		
		model.addAttribute("genderSales", sds.genderlist(date));
		model.addAttribute("totalSalesSum", sds.genderSum(date));
		
		return "service/consulting/gendersales_back";
	}
	
	@RequestMapping(value = "/facilitylist")
	public String facilitylist(HttpServletRequest req, Model model) {
		String date;
		date = (String) req.getAttribute("search_date");	// 화면에서 받아온 날짜
		
		// date = "210622"; // 테스트용 날짜 지정
		
		model.addAttribute("facilitySales", sds.facilitylist(date));
		model.addAttribute("facilitySalesSum", sds.facilitySum(date));
		return "service/consulting/facilitysales_back";
	}
}
