<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	
<table>
  <thead>
    <tr>
      <th>Transaction Number</th>
      <th>Withdrawal Account Number</th>
      <th>Deposit Account Number</th>
      <th>Withdrawal Name</th>
      <th>Deposit Name</th>
      <th>Withdrawal Bank Code</th>
      <th>Deposit Bank Code</th>
      <th>Withdrawal Phone Number</th>
      <th>Deposit Phone Number</th>
      <th>Transaction Amount</th>
      <th>Transaction Date</th>
     </tr>
  </thead>
 
  <tbody>
    <c:forEach items="${ transactionList }" var="transaction" varStatus="loop">
		<tr>
			<td>${ transaction.tranNum }</td>
			<td>${ transaction.withrawalAccountNum }</td>
			<td>${ transaction.depositAccountNum }</td>
			<td>${ transaction.withrawalName }</td>
			<td>${ transaction.depositName }</td>
			<td>${ transaction.withrawalBankCode }</td>
			<td>${ transaction.depositBankCode }</td>
			<td>${ transaction.withrawalPhoneNum }</td>
			<td>${ transaction.depositPhoneNum}</td>
			<td>${ transaction.tranAmount }</td>
			<td>${ transaction.tranDate }</td>									
		</tr>
		</c:forEach>
  </tbody>

</table>


</body>
</html>