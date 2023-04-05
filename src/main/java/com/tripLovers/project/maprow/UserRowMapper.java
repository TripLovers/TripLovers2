package com.tripLovers.project.maprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import domain.UserVO;

public class UserRowMapper implements RowMapper<UserVO> {
	@Override
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		UserVO user = new UserVO();
		
		
		user.setId(rs.getString("id"));
		user.setPass(rs.getString("pass"));
		user.setSex(rs.getString("sex"));
		user.setEmail(rs.getString("email"));
		user.setYear(rs.getString("year"));
		user.setMonth(rs.getString("month"));
		user.setDay(rs.getString("day"));
		user.setPhone(rs.getString("phone"));
		user.setTime(rs.getTimestamp("time"));
		
		
		return user;
	}
}
