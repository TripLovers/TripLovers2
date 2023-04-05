package com.tripLovers.project.service;

import domain.UserVO;

public interface RegFormService {
	public String validate_SignUp(UserVO vo);
	public String idCheck(UserVO vo);
}
