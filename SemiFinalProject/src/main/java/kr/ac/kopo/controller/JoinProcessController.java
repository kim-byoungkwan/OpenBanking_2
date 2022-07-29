package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.login.LoginVO;
import kr.ac.kopo.join.service.JoinService;

public class JoinProcessController implements Controller {
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String cusName = request.getParameter("name");
		String cusId = request.getParameter("id");
		String cusPassword = request.getParameter("password");
		String cusPhone = request.getParameter("phone");
		String cusEmail = request.getParameter("email");
		String cusOccupation = request.getParameter("occupation");
		String cusJoinpath = request.getParameter("joinpath");
		
		LoginVO userVO = new LoginVO();
		userVO.setCusName(cusName);
		userVO.setCusId(cusId);
		userVO.setCusPw(cusPassword);
		userVO.setCusPhoneNum(cusPhone);
		userVO.setCusEmailAddress(cusEmail);
		userVO.setCusOccupation(cusOccupation);
		userVO.setJoinPath(cusJoinpath);
				
		JoinService service = new JoinService();
		service.addMember(userVO);
		
		return "redirect:/";
	
	}

}
