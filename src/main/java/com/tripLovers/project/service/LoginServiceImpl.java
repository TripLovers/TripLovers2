package com.tripLovers.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripLovers.project.repository.TripLoversDAO;

import domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private TripLoversDAO tripLoversDAO;
	
	@Override
	public String login_IdCheck(String id) {
		
		UserVO vo = new UserVO();
		vo.setId(id);
		if(tripLoversDAO.idCheck(vo)==null) {
			return "-1";
		}
		
		return "1";
	}
	
	public String userPassCheck(UserVO vo) {
		
		//System.out.println(vo.getPass());
		//System.out.println(tripLoversDAO.userPassCheck(vo));
		if(!tripLoversDAO.userPassCheck(vo).equals( vo.getPass())) {
			System.out.println("확인");
			return "-1";
		}
		return tripLoversDAO.userPassCheck(vo);
	}
}
