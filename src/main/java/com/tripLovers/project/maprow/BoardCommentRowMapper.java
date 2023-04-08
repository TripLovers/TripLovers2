package com.tripLovers.project.maprow;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import domain.BoardCommentVO;
import domain.BoardVO;

public class BoardCommentRowMapper implements RowMapper<BoardCommentVO>{
	
	@Override
	public BoardCommentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		BoardCommentVO boardComment = new BoardCommentVO();
		boardComment.setNum(rs.getInt("num"));
		boardComment.setComment_pass(rs.getString("pass"));
		boardComment.setComment_content(rs.getString("content"));
		boardComment.setSeq(rs.getInt("seq"));
		boardComment.setComment_id(rs.getString("id"));
		boardComment.setTime(rs.getTimestamp("time"));
		return boardComment;
	}
}
