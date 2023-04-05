package com.tripLovers.project.service;

import java.util.List;

import domain.BoardVO;

public interface BoardService {
	
	public void insertBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public BoardVO getBoard(int num);
	public String passCheck(String pass);
	public void updateCnt(int num);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(int num);
	
}
