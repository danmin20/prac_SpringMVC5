package com.danmin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	// 로그인 빈이 필요할 때는 주입받아서 사용
//	@Resource(name = "loginUserBean")
//	private UserBean loginUserBean;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
//		System.out.println(loginUserBean);

		//System.out.println(request.getServletContext().getRealPath("/"));
		
		return "redirect:/main";
	}
}
