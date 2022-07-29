<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


<c:choose>

	<c:when test="${not empty userVO }">
	
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    
    <div class="container px-4 px-lg-5">
        
        <a class="navbar-brand" href="${ pageContext.request.contextPath }/">BK Bank</a>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
            
                <ul class= "navbar-nav ms-auto my-2 my-lg-0" role="menu">
                <li class=" nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/logoutProcess.do" >LogOut</a></li>
            </ul>
            
	<div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
        
          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Account
          </a>
          
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li class="dropdown-item"><a  href="${pageContext.request.contextPath }/account/writeForm.do">Account Open</a></li>
            <li class="dropdown-item"><a href="${pageContext.request.contextPath }/account/list.do">Account List</a></li>
            <li class="dropdown-item"><a href="${pageContext.request.contextPath }/account/writeForm.do">Account Transfer</a></li>
             <li class="dropdown-item"><a href="${pageContext.request.contextPath }/account/transactionList.do">Account Transaction History</a></li>
            
          </ul>
        </li>
      </ul>
    </div>            
            
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
            <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
            </ul>    
                
	 	</ul>
            
    </div>
</div>
    
</nav>

	</c:when>
	
	<c:otherwise>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5 ">
        <a class="navbar-brand"  href="${ pageContext.request.contextPath }/">BK Bank</a>
        
        <div class="collapse navbar-collapse " id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/login.do" >LogIn</a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/join/joinForm.do">SignUp</a></li>
                      
                                
                                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/account/writeForm.do">Account</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>
	
	</c:otherwise>

</c:choose>
