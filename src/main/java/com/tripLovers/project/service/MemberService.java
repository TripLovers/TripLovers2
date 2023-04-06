package com.tripLovers.project.service;

import domain.UserVO;

public interface MemberService {
	public UserVO getUser(UserVO vo);
	public void updateUser(UserVO vo);
	public void deleteUser(UserVO vo);
}
