package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.board.dao.LoginDAO;
import kr.ac.kopo.login.LoginVO;

public class LoginProcessController implements Controller{
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setCusId(id);
		loginVO.setCusPw(password);

		LoginDAO dao = new LoginDAO();
		
		LoginVO userVO = dao.login(loginVO);
		
		if(userVO != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			return "redirect:/";
			
		}
		
		return "redirect:/login.do";
		
	}

}
