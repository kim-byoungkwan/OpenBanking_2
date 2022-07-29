package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.login.LoginVO;
import kr.ac.kopo.transaction.service.TransactionService;
import kr.ac.kopo.transaction.vo.TransactionVO;

public class TransactionListController implements Controller{
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		
		LoginVO user = (LoginVO)session.getAttribute("userVO");
		
		String userId = user.getCusId();
		String cusPhonenumber = user.getCusPhoneNum();
		
		TransactionService tranService = new TransactionService();
		List<TransactionVO> transactionList = new ArrayList<>();
		transactionList = tranService.selectTransactionList(cusPhonenumber);
		
// selectTransactionList 메소드에 문제가 있다.
// 그이전에 insertTransaction 자체가 안된다. 거래내역 테이블에 아무것도 존재하지 않으니까 select가 안되는 것이다.
// 즉 프로시져에 문제가 있는 것이다.		
		
		System.out.println("test: " + transactionList);
		
		request.setAttribute("transactionList", transactionList);
		
		return "/jsp/account/transactionList.jsp";
		
	}

}
