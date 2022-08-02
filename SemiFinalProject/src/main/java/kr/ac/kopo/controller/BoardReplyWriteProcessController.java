package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.board.reply.service.BoardReplyService;
import kr.ac.kopo.board.reply.vo.BoardReplyVO;

public class BoardReplyWriteProcessController implements Controller{
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		BoardReplyService service = new BoardReplyService();
		BoardReplyVO boardReply = new BoardReplyVO();
		
		int no = Integer.parseInt(request.getParameter("no"));
		String reWriter = request.getParameter("reWriter");
		String reContent = request.getParameter("reContent");
		
		boardReply.setBoardNo(no);
		boardReply.setReWriter(reWriter);
		boardReply.setReContent(reContent);
				
		service.addBoardReply(boardReply);
		
		
		return "redirect:/board/detail.do?no="+no;
		
	}
	
}
