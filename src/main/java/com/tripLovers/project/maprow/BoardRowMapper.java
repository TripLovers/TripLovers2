package com.tripLovers.project.maprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import domain.BoardVO;


public class BoardRowMapper implements RowMapper<BoardVO>{
	
	@Override
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		BoardVO board = new BoardVO();
		board.setNum(rs.getInt("num"));
		board.setWriter(rs.getString("writer"));
		board.setTitle(rs.getString("title"));
		board.setPass(rs.getString("pass"));
		board.setContent(rs.getString("content"));
		board.setIp(rs.getString("ip"));
		board.setRegdate(rs.getTimestamp("regdate"));
		board.setCnt(rs.getInt("cnt"));
		
		
		return board;
	}

}
