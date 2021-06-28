package com.kh.pugis.service.consulting.controller;

import com.kh.pugis.service.consulting.domain.*;
import com.kh.pugis.service.consulting.service.RegularConsultService;


import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/rconsult")
public class RegularConsultController
{
	@Autowired
    RegularConsultService rcs;

    public RegularConsultController()
    {
    }
	@RequestMapping(value = "/selectcustomer")
    public String selectCustomer(HttpServletRequest req, Model model)
    {
        int currentPage = 1;
        int pageListSize = 2;
        String address = "1";
        String grade = "1";
        CustomerInfo ci = new CustomerInfo();
        PageInfo pi = new PageInfo();
        ci.setCustomer_address(address);
        ci.setCustomer_grade(grade);
        pi.setPageListSize(pageListSize);
        pi.setCurrentPage(currentPage);
        ArrayList al = (ArrayList)rcs.selectCustomer(ci, pi);
        System.out.println(((CustomerInfo)al.get(0)).getCustomer_id());
        PageMoveInfo pmi = rcs.CustomerPageMove(ci, pi);
        pmi.setPi(pi);
        pmi.setCi(ci);
        model.addAttribute("customerList", al);
        model.addAttribute("pageList", pmi);
        return "service/consulting/customerList";
    }
	@RequestMapping(value = "/schedule")
    public String saveSchedule(HttpServletRequest req, Model model, CustomerInfoListDto cil)
    {
        RegularConsultSelectDate rcsd = new RegularConsultSelectDate();
        rcsd.setStart_date("2021-07-01");
        rcsd.setFinish_date("2021-07-31");
        System.out.println((new StringBuilder("\uACE0\uAC1D\uC544\uC774\uB514")).append(((CustomerInfo)cil.getSelecetedId().get(0)).getCustomer_id()).toString());
        rcs.saveSchedule();
        return "service/consulting/customerList";
    }

}
