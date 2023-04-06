package com.tripLovers.project;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tripLovers.project.service.LoginService;

import domain.UserVO;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO vo, Model model, HttpSession session) {
		
		
		
		if(loginService.login_IdCheck(vo.getId()).equals("-1")) {
			model.addAttribute("login_id","-1");
			return "loginForm";
		}
	
		if(loginService.userPassCheck(vo).equals("-1")) {

			model.addAttribute("login_pass","-1");
			return "loginForm";
		}
		//System.out.println(loginService.userPassCheck(vo));
		session.setAttribute("sessionId", vo.getId()); 
		
		return "tripLovers";
	}
	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public String logOut(HttpSession session) {
		
		session.invalidate();
		return "tripLovers";
	}
	
}
