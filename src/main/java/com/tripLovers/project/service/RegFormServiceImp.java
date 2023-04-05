package com.tripLovers.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripLovers.project.repository.TripLoversDAO;

import domain.UserVO;

@Service
public class RegFormServiceImp implements RegFormService {

	@Autowired
	private TripLoversDAO tripLoversDAO;
	
	public String idCheck(UserVO vo) {
		
		return tripLoversDAO.idCheck(vo);
	}
	
	
	public String validate_SignUp(UserVO vo) {
		
		if(vo.getPhone().indexOf("-")!=-1) {
			return "-1";
		}
		else {
		tripLoversDAO.insertUser(vo);
		}
		return "";
	}
}
