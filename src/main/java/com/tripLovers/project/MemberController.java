package com.tripLovers.project;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tripLovers.project.service.MemberService;
import com.tripLovers.project.service.RegFormService;

import domain.UserVO;

@Controller
public class MemberController {
	
		@Autowired
		private MemberService memberService;
		
		@Autowired
		private RegFormService regFormService; 
		//회원 정보 수정
		@RequestMapping(value = "/updateUser", method = RequestMethod.GET)
		public String userUpdate(HttpSession session, Model model) {
			
			UserVO vo = new UserVO();
			vo.setId((String)session.getAttribute("sessionId"));
			model.addAttribute("user",memberService.getUser(vo));
			
			return "updateUser";
		}
		
		@RequestMapping(value = "/updateUserproc", method = RequestMethod.POST)
		public String userUpdate(UserVO vo,Model model,HttpSession session) {
			
//			if(regFormService.idCheck(vo)!=null) {
//				model.addAttribute("messageId", "-1");
//				model.addAttribute("user",memberService.getUser(vo));
//				return "updateUser";
//			}
			
			if(vo.getPhone().indexOf("-")!=-1) {
				model.addAttribute("messagePhone", "-1");
				model.addAttribute("user",memberService.getUser(vo));
				return "updateUser";
			}
			memberService.updateUser(vo);
			session.setAttribute("sessionId", vo.getId()); 
			return "tripLovers";
		}
		@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
		public String deleteUser(UserVO vo,HttpSession session) {
			vo.setId((String)session.getAttribute("sessionId"));
			memberService.deleteUser(vo);
			session.invalidate();
			return "tripLovers";
		}
}
