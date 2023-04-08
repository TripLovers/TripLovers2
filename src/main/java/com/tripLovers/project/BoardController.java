package com.tripLovers.project;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tripLovers.project.service.BoardService;

import domain.BoardCommentVO;
import domain.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardservice;
	
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String BoardListController(@RequestParam(value="pageNum", defaultValue= "0" ) int pageNum ,Model model,HttpSession session) {
		List<BoardVO> boardList = boardservice.getBoardList();
		model.addAttribute("boardList",boardList);
		
		int maxNum=10; // 아래 나타날 숫자의 최대값
		int totalNum=10; //한 화면에 나타날 게시물의 수
		int boardNum=boardList.size(); //총 게시물의 수
		int lastNum =0; // 페이징 처리될 숫자중 가장 큰 값
		if(boardNum%totalNum==0) {
			lastNum = (boardNum/totalNum);
		}else lastNum = (boardNum/totalNum+ 1);
	
		int firstNum = 1; // 페이징 처리될 숫자중 가장 작은 값
		if(pageNum==0) {
			pageNum=lastNum;
		}
		int forPaging =lastNum;
		
		if(maxNum>lastNum) {
			maxNum=lastNum;
		}
		if(maxNum!=0) {
			if((pageNum/maxNum)*maxNum!=lastNum) {
				forPaging= (pageNum/maxNum)*maxNum+maxNum;
				}
			if((pageNum%maxNum)==0) {
				forPaging= (pageNum/maxNum)*maxNum;
				}
		}
		
		//보여줘야 하는 게시판
		
		int firtstBoardNum = boardNum-(lastNum-pageNum+1)*totalNum; // 요청에 따른 화면에 나타날 게시물의 첫번호
		int lastBoardNum = boardNum-(lastNum-pageNum)*totalNum;
		
//		System.out.println("forPaging"+forPaging);
//		System.out.println("pageNum"+pageNum);
//		System.out.println("firtstBoardNum"+firtstBoardNum);
//		System.out.println("lastBoardNum"+lastBoardNum);
//		System.out.println("lastNum"+lastNum);
	
		model.addAttribute("forPaging",forPaging);
		model.addAttribute("maxNum",maxNum);
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("totalNum",totalNum);
		model.addAttribute("boardNum",boardNum);
		model.addAttribute("lastNum",lastNum);
		model.addAttribute("firstNum",firstNum);
		model.addAttribute("firtstBoardNum",firtstBoardNum);
		model.addAttribute("lastBoardNum",lastBoardNum);
		
		//세션
		System.out.println((String)session.getAttribute("sessionId"));
		session.setAttribute("sessionId", (String)session.getAttribute("sessionId")); 
		
		
		return "boardList";
	}
	@RequestMapping(value = "/boardForm", method = RequestMethod.GET)
	public String BoardFormController() {
		
		return "boardForm";
	}
	
	
	@RequestMapping(value = "/insertBoard", method = RequestMethod.POST)
	public String boardFormController(HttpServletRequest request,BoardVO vo) throws UnsupportedEncodingException {
		
		vo.setIp(request.getRemoteAddr());
		boardservice.insertBoard(vo);
		return"redirect:boardList";
	}
	
	@RequestMapping(value = "/getBoard", method = RequestMethod.GET)
	public String getBoard(@RequestParam("num") int num,@RequestParam(value="pageNum", defaultValue= "0" ) int pageNum , Model model) {
	
		boardservice.updateCnt(num);
		BoardVO board = boardservice.getBoard(num);
		model.addAttribute("board", board);
		
		//게시판 댓글
		List<BoardCommentVO> boardCommentList =boardservice.getBoardComment(num);
		model.addAttribute("boardCommentList",boardCommentList);
		
		//댓글 페이징
		int maxNum=10; // 아래 나타날 숫자의 최대값
		int totalNum=3; //한 화면에 나타날 게시물의 수
		int boardCommentNum=boardCommentList.size(); //총 게시물의 수
		int lastNum =0; // 페이징 처리될 숫자중 가장 큰 값
		if(boardCommentNum%totalNum==0) {
			lastNum = (boardCommentNum/totalNum);
		}else lastNum = (boardCommentNum/totalNum+ 1);
		int firstNum = 1; // 페이징 처리될 숫자중 가장 작은 값
		if(pageNum==0) {
			pageNum=lastNum;
		}
		int forPaging =lastNum;
		
		if(maxNum>lastNum) {
			maxNum=lastNum;
		}
		
		if(maxNum!=0) {
		if((pageNum/maxNum)*maxNum!=lastNum) {	
			forPaging= (pageNum/maxNum)*maxNum+maxNum;
		}
		
		if((pageNum%maxNum)==0) {
			forPaging= (pageNum/maxNum)*maxNum;
		}
		}
		
		
		//보여줘야 하는 게시판
		
		int firtstBoardNum = boardCommentNum-(lastNum-pageNum+1)*totalNum; // 요청에 따른 화면에 나타날 게시물의 첫번호
		int lastBoardNum = boardCommentNum-(lastNum-pageNum)*totalNum;
		
//		System.out.println("forPaging"+forPaging);
//		System.out.println("pageNum"+pageNum);
//		System.out.println("firtstBoardNum"+firtstBoardNum);
//		System.out.println("lastBoardNum"+lastBoardNum);
//		System.out.println("lastNum"+lastNum);
//		System.out.println("totalNum"+totalNum);
//		
		model.addAttribute("forPaging",forPaging);
		model.addAttribute("maxNum",maxNum);
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("totalNum",totalNum);
		model.addAttribute("boardCommentNum",boardCommentNum);
		model.addAttribute("lastNum",lastNum);
		model.addAttribute("firstNum",firstNum);
		model.addAttribute("firtstBoardNum",firtstBoardNum);
		model.addAttribute("lastBoardNum",lastBoardNum);
		
		
		return "getBoard";
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.GET)
	public String UpdateBoard(@RequestParam("num") int num, @RequestParam("pass") String pass,Model model) {
		
		if(boardservice.passCheck(pass).equals("-1")) {
			model.addAttribute("passCheck","-1");
			return "getBoard";
		}
		//System.out.println("테스트"+num);
		BoardVO board = boardservice.getBoard(num);
		model.addAttribute("board", board);
		return "updateBoard";
	}
	
	@RequestMapping(value = "/updateBoardProc", method = RequestMethod.POST)
	public String updateBoardProc(HttpServletRequest request,@RequestParam("num") int num, BoardVO vo, Model model) {
		vo.setIp(request.getRemoteAddr());
		boardservice.updateBoard(vo);
		return "redirect:boardList";
	}
	
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(@RequestParam("num") int num) {
		BoardVO vo = new BoardVO();
		vo.setNum(num);
		boardservice.deleteBoardCommnet(vo);
		boardservice.deleteBoard(num);
		return "redirect:boardList";
	}
	
	//게시판 댓글
	
	@RequestMapping(value = "/insertBoardComment", method = RequestMethod.POST)
	public String insertBoardComment(BoardCommentVO vo,RedirectAttributes redirectAttributes) {
		boardservice.insertBoardComment(vo);
		redirectAttributes.addAttribute("num",vo.getNum());
		return "redirect:getBoard";
	}
}
