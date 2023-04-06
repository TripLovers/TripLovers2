package com.tripLovers.project.service;

import domain.UserVO;

public interface LoginService {

	public String login_IdCheck(String id);
	public String userPassCheck(UserVO vo);
}
