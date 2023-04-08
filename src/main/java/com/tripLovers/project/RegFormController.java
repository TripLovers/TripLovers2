package com.tripLovers.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tripLovers.project.repository.TripLoversDAO;
import com.tripLovers.project.service.RegFormService;
import com.tripLovers.project.service.RegFormServiceImp;

import domain.UserVO;

@Controller
public class RegFormController {
	
	@Autowired
	private RegFormService regFormService;

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String SignUpController(UserVO vo,Model model) {
		
		if(!vo.getPass().equals(request.getParameter("repass"))) {
			model.addAttribute("pass", "-1");
			return "regForm";
		}
		if(regFormService.idCheck(vo)!=null) {
			model.addAttribute("id", "-1");
			return "regForm";
		}
		
		
		if(regFormService.validate_SignUp(vo).equals("-1")) {
			model.addAttribute("phone", "-1");
			return "regForm";
		}
		
		return "tripLovers";
	}
}
