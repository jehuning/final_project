package com.kh.pugis.service.consulting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.CommuteService;

@Controller
@RequestMapping(value = "/commute")
public class CommuteController
{
	@Autowired
	CommuteService cs;

    @RequestMapping(value = "/start")
    public void startWork()
    {
        cs.startWork();
    }
    @RequestMapping(value = "/leave")
    public void leaveWork()
    {
    }
    @RequestMapping(value = "/history")
    public void commuteHistory()
    {
    }

   
}
