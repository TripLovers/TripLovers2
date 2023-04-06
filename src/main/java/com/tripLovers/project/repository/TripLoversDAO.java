package com.tripLovers.project.repository;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tripLovers.project.maprow.BoardRowMapper;
import com.tripLovers.project.maprow.UserRowMapper;

import domain.BoardVO;
import domain.UserVO;


@Repository
public class TripLoversDAO {

	
	private final String INSERT_USER = "insert into users(id, pass, sex, email, year, month, day, phone, time) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private final String ID_CHECK="select id from users where id = ?";
	
	//게시판
	private final String INSERT_BOARD ="insert into board(num, writer, pass, regdate, title, content ,ip) values((select nvl(max(num),0)+1 from board), ?, ?, ?, ?, ?, ? )";
	private final String GET_BOARDLIST ="select * from board ORDER BY num DESC";
	private final String GET_BOARD = "select * from board where num =?";
	private final String PASS_CHECK = "select count(pass) from board where pass =?";
	private final String UPDATE_CNT = "update board set cnt=cnt+1 where num = ?";
	private final String UPDATE_BOARD = "update board set writer=?, pass=?, title=?, regdate=?, content=?, ip=? where num=?";
	private final String DELETE_BOARD ="delete board where num=?";
	
	//로그인
	private final String USER_PASSCHECK ="select pass from users where id = ?";
	//회원조회
	private final String GET_USER="select * from users where id = ?";
	//회원 정보 수정
	private final String UPDATE_USER="update users set pass=?, sex=?, email=?, year=?, month=?, day=?, phone=? where id =?";
	//회원 삭제
	private final String DELETE_USER="delete users where id =?";

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
	

	public void insertUser(UserVO vo) {
		System.out.println("JDBC inserteUser()");	
		//System.out.println(vo.getId()+vo.getPass()+vo.getSex()+ vo.getEmail()+ vo.getYear()+vo.getMonth()+ vo.getDay()+ vo.getPhone()+ new Date());
		jdbcTemplate.update(INSERT_USER, vo.getId(),vo.getPass(),vo.getSex(), vo.getEmail(), vo.getYear(), vo.getMonth(), vo.getDay(), vo.getPhone(), new Date());
	}
	
	public String idCheck(UserVO vo) {
		System.out.println("JDBC idCheck");
		try {
			//System.out.println(jdbcTemplate.queryForObject(ID_CHECK, String.class, vo.getId()));
		return jdbcTemplate.queryForObject(ID_CHECK, String.class, vo.getId());
		}catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	//회원조회
		public UserVO getUser(UserVO vo) {
			System.out.println("JDBC getUser");
			Object[] args = {vo.getId()};
			return jdbcTemplate.queryForObject(GET_USER, args, new UserRowMapper());
		}
		
		//회원 정보 수정
		public void updateUser(UserVO vo) {
			System.out.println("JDBC updateUser");
			jdbcTemplate.update(UPDATE_USER, vo.getPass(), vo.getSex(), vo.getEmail(), vo.getYear(), vo.getMonth(), vo.getDay(), vo.getPhone(),vo.getId());
		}
		//회원 탈퇴
		public void deleteUser(UserVO vo) {
			System.out.println("JDBC deleteUser");
			jdbcTemplate.update(DELETE_USER,vo.getId());
		}	
	
		public String userPassCheck(UserVO vo) {
			System.out.println("JDBC userpassCheck");
			
			try {
				return jdbcTemplate.queryForObject(USER_PASSCHECK,String.class ,vo.getId() );
			} catch (Exception e) {
				return "-1";
			}
			
		}
}
