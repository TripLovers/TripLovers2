package com.tripLovers.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripLovers.project.repository.TripLoversDAO;

import domain.UserVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private TripLoversDAO tripLoversDAO;
	@Override
	public UserVO getUser(UserVO vo) {
		
		return tripLoversDAO.getUser(vo);
	}

	public void updateUser(UserVO vo){
		tripLoversDAO.updateUser(vo);
	}
	public void deleteUser(UserVO vo) {
		tripLoversDAO.deleteUser(vo);
	}

}
