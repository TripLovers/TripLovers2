package com.tripLovers.project.repository;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tripLovers.project.maprow.BoardRowMapper;

import domain.BoardVO;


@Repository
public class TripLoversDAO {

	
	private final String INSERT_BOARD ="insert into board(num, writer, pass, regdate, title, content ,ip) values((select nvl(max(num),0)+1 from board), ?, ?, ?, ?, ?, ? )";
	private final String GET_BOARDLIST ="select * from board ORDER BY num DESC";
	private final String GET_BOARD = "select * from board where num =?";
	private final String PASS_CHECK = "select count(pass) from board where pass =?";
	private final String UPDATE_CNT = "update board set cnt=cnt+1 where num = ?";
	private final String UPDATE_BOARD = "update board set writer=?, pass=?, title=?, regdate=?, content=?, ip=? where num=?";
	private final String DELETE_BOARD ="delete board where num=?";
	

	@Autowired(required = false)
	private JdbcTemplate jdbcTemplate;
	
	// 게시판
	public void insertBoard(BoardVO vo) {
		System.out.println("JDBC insertBoard");
		jdbcTemplate.update(INSERT_BOARD, vo.getWriter(), vo.getPass(), vo.getRegdate(), vo.getTitle(), vo.getContent(), vo.getIp());
	}
	
	public List<BoardVO> getBoardList(){
		System.out.println("JDBC getBoardList");
		return jdbcTemplate.query(GET_BOARDLIST, new BoardRowMapper()); 
	}
	
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("JDBC getBoard");
		Object[] args = {vo.getNum()};
		return jdbcTemplate.queryForObject(GET_BOARD, args, new BoardRowMapper());
	}
	
	public void updateCnt(BoardVO vo) {
		System.out.println("JDBC updateCnt");
		jdbcTemplate.update(UPDATE_CNT,vo.getNum());
	}
	
	
	public String passCheck(BoardVO vo) {
		System.out.println("JDBC passCheck");
		try {
			//System.out.println(jdbcTemplate.queryForObject(PASS_CHECK, String.class, vo.getPass()));
			
		return jdbcTemplate.queryForObject(PASS_CHECK, String.class, vo.getPass());
		}catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public void updateBoard(BoardVO vo) {
		System.out.println("JDBC updateBoard");
		jdbcTemplate.update(UPDATE_BOARD,vo.getWriter(),vo.getPass(),vo.getTitle(),vo.getRegdate(),vo.getContent(),vo.getIp(),vo.getNum());
	}
	
	public void deleteBoard(BoardVO vo) {
		System.out.println("JDBC deleteBoard");
		jdbcTemplate.update(DELETE_BOARD,vo.getNum());
	}
	
	
}
