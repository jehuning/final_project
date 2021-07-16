package com.kh.pugis.service.consulting.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.service.EmpLoginService;

@Controller
@RequestMapping(value = "/emplogin")
public class EmpLoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	EmpLoginService els;

	@RequestMapping(value = "/login", method = {RequestMethod.POST, RequestMethod.GET})
	public String login(Employee emp, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		// logger.info("post login");
		
		HttpSession session = req.getSession();
		Employee login = els.login(emp);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "service/consulting/login_back";
	}
	
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "service/consulting/login_back";
	}
}
