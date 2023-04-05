package com.tripLovers.project.repository;


<<<<<<< HEAD
import java.util.Date;
=======
>>>>>>> fb46fc259462b45b2a564cf4846423074438759d
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.tripLovers.project.maprow.BoardRowMapper;

import domain.BoardVO;
<<<<<<< HEAD
import domain.UserVO;
=======
>>>>>>> fb46fc259462b45b2a564cf4846423074438759d


@Repository
public class TripLoversDAO {
<<<<<<< HEAD
	
	private final String INSERT_USER = "insert into users(id, pass, sex, email, year, month, day, phone, time) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private final String ID_CHECK="select id from users where id = ?";
	
	//게시판
=======

	
>>>>>>> fb46fc259462b45b2a564cf4846423074438759d
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
	
<<<<<<< HEAD
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
=======
>>>>>>> fb46fc259462b45b2a564cf4846423074438759d
	
}
