package kr.ac.kopo.transaction.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.transaction.vo.TransactionVO;
import kr.ac.kopo.util.ConnectionFactory;

public class TransactionDAO {
	
	public List<TransactionVO> selectTransactionList(String phonenumber) {

		List<TransactionVO> transactionList = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT TRAN_NUM, WITHRAWAL_ACCOUNT_NUM, DEPOSIT_ACCOUNT_NUM, WITHRAWAL_NAME, DEPOSIT_NAME, WITHRAWAL_BANK_CODE, DEPOSIT_BANK_CODE, WITHRAWAL_PHONE_NUMBER, DEPOSIT_PHONE_NUMBER, TRAN_AMOUNT, TRAN_DATE FROM TRANSACTION_HISTORY WHERE WITHRAWAL_PHONE_NUMBER = ? ORDER BY TRAN_NUM ASC");
		
		try(
				
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				
				) {
			
			pstmt.setString(1, phonenumber);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int tranNum = rs.getInt("TRAN_NUM"); 
				String withrawalAccountNum = rs.getString("WITHRAWAL_ACCOUNT_NUM");
				String depositAccountNum = rs.getString("DEPOSIT_ACCOUNT_NUM");
				String withrawalName = rs.getString("WITHRAWAL_NAME");
				String depositName = rs.getString("DEPOSIT_NAME");
				String withrawalBankCode = rs.getString("WITHRAWAL_BANK_CODE");
				String depositBankCode = rs.getString("DEPOSIT_BANK_CODE");
				String withrawalPhoneNum = rs.getString("WITHRAWAL_PHONE_NUMBER");
				String depositPhoneNum = rs.getString("DEPOSIT_PHONE_NUMBER");
				int tranAmount = rs.getInt("TRAN_AMOUNT");
				String tranDate = rs.getString("TRAN_DATE");

				TransactionVO transaction = new TransactionVO();
				
				transaction.setTranNum(tranNum);
				transaction.setWithrawalAccountNum(withrawalAccountNum);
				transaction.setDepositAccountNum(depositAccountNum);
				transaction.setWithrawalName(withrawalName);
				transaction.setDepositName(depositName);
				transaction.setDepositBankCode(depositBankCode);
				transaction.setWithrawalBankCode(withrawalBankCode);
				transaction.setTranAmount(tranAmount);
				transaction.setTranDate(tranDate);
				transaction.setWithrawalPhoneNum(withrawalPhoneNum);
				transaction.setDepositPhoneNum(depositPhoneNum);
				
				transactionList.add(transaction);
				} 
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return transactionList;	
		}


	public void insertTransaction(String userId, String cusPhonenumber, String senderAccountNumber, String receiverAccountNumber, String senderBankCode, String receiverBankCode, int transferAmount) {

		// JIHOON
		if (senderBankCode.equals('9')) {
			
			try (
					Connection conn = new ConnectionFactory().getConnection();
					CallableStatement cstmt = conn.prepareCall("{call transaction_history_park(?,?,?,?,?,?,?)}");
					) {
				
				cstmt.setString(1, userId);
				cstmt.setString(2, cusPhonenumber);
				cstmt.setString(3, senderAccountNumber);
				cstmt.setString(4, receiverAccountNumber);
				cstmt.setString(5, senderBankCode);
				cstmt.setString(6, receiverBankCode);
				cstmt.setInt(7, transferAmount);
				
				cstmt.executeUpdate();
				
			} catch  (Exception e) {
				e.printStackTrace();
			}
	
		} else if (senderBankCode.equals("14")) {
		// YOON			
			
						try (
								Connection conn = new ConnectionFactory().getConnection();
								CallableStatement cstmt = conn.prepareCall("{call transaction_history_yoon_2(?,?,?,?,?,?,?)}");
								) {
							
							cstmt.setString(1, userId);
							cstmt.setString(2, cusPhonenumber);
							cstmt.setString(3, senderAccountNumber);
							cstmt.setString(4, receiverAccountNumber);
							cstmt.setString(5, senderBankCode);
							cstmt.setString(6, receiverBankCode);
							cstmt.setInt(7, transferAmount);
							
							cstmt.executeUpdate();
							
						} catch  (Exception e) {
							e.printStackTrace();
						}
			
			
		} else if (senderBankCode.equals("20")) {
			// JO
						try (
								Connection conn = new ConnectionFactory().getConnection();
								CallableStatement cstmt = conn.prepareCall("{call transaction_history_JO_3(?,?,?,?,?,?,?)}");
								) {
							
							cstmt.setString(1, userId);
							cstmt.setString(2, cusPhonenumber);
							cstmt.setString(3, senderAccountNumber);
							cstmt.setString(4, receiverAccountNumber);
							cstmt.setString(5, senderBankCode);
							cstmt.setString(6, receiverBankCode);
							cstmt.setInt(7, transferAmount);
							
							cstmt.executeUpdate();
							
						} catch  (Exception e) {
							e.printStackTrace();
						}
						
		} else if (senderBankCode.equals("2")) {
			// BK
			try (
					Connection conn = new ConnectionFactory().getConnection();
					CallableStatement cstmt = conn.prepareCall("{call transaction_history_bk_8(?,?,?,?,?,?,?)}");
					) {
				
				cstmt.setString(1, userId);
				cstmt.setString(2, cusPhonenumber);
				cstmt.setString(3, senderAccountNumber);
				cstmt.setString(4, receiverAccountNumber);
				cstmt.setString(5, senderBankCode);
				cstmt.setString(6, receiverBankCode);
				cstmt.setInt(7, transferAmount);
				
				cstmt.executeUpdate();
				
			} catch  (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
