package com.tripLovers.project.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripLovers.project.repository.TripLoversDAO;

import domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private TripLoversDAO tripLoverDAO;
	
	public void insertBoard(BoardVO vo) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());	
		vo.setRegdate(timestamp);
		tripLoverDAO.insertBoard(vo);
	}
	
	public List<BoardVO> getBoardList(){
		SimpleDateFormat sd = new SimpleDateFormat("YY-MM-dd hh:mm:ss"); 
		List<BoardVO> boardList =tripLoverDAO.getBoardList();
		for(int i=0;i<boardList.size(); i++) {
			boardList.get(i).setSimpleTime(sd.format(boardList.get(i).getRegdate())); 		
			}
		return boardList;
	}
	
	public BoardVO getBoard(int num) {
		BoardVO vo = new BoardVO();
		vo.setNum(num);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		vo =tripLoverDAO.getBoard(vo);
		vo.setSimpleTime(sd.format(timestamp));
		return vo;
	}
	
	public void updateCnt(int num) {
		BoardVO vo = new BoardVO();
		vo.setNum(num);
		tripLoverDAO.updateCnt(vo);
	}
	
	public String passCheck(String pass) {
		BoardVO vo = new BoardVO();
		vo.setPass(pass);
		if(tripLoverDAO.passCheck(vo)==null) {
			return "-1";
		}else {
			return tripLoverDAO.passCheck(vo);
		}
	}
	public void updateBoard(BoardVO vo) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());	
		vo.setRegdate(timestamp);
		tripLoverDAO.updateBoard(vo);
	}
	public void deleteBoard(int num) {
		BoardVO vo = new BoardVO();
		vo.setNum(num);
		tripLoverDAO.deleteBoard(vo);
	}
	
	
}
