<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

        <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/SemiFinalProject/resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />

        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/SemiFinalProject/resources/css/styles.css" rel="stylesheet" />
    </head>
    
<body id="page-top">
 
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5 ">
        <a class="navbar-brand text-dark"  href="${ pageContext.request.contextPath }/">BK Bank</a>
        
        <div class="collapse navbar-collapse text-dark" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link text-dark" href="${ pageContext.request.contextPath }/login.do" >LogIn</a></li>
                                <li class="nav-item"><a class="nav-link text-dark" href="${ pageContext.request.contextPath }/join/joinForm.do">SignUp</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#portfolio">Account</a></li>
                                <li class="nav-item"><a class="nav-link text-dark" href="#portfolio">Contact</a></li>

            </ul>
        </div>
    </div>
</nav>
	
       <section class="page-section" id="services">
            
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">Account List</h2>
                <hr class="divider" />
                
                <div class="row gx-4 gx-lg-5">
                    
                    <c:forEach items="${accountList}" var="account" varStatus="loop">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">BK Bank Account</h3>
                            <p class="text-muted mb-0">Owner's NAME : ${userVO.cusName}</p>
                            <p class="text-muted mb-0">Owner's ID : ${userVO.cusId}</p>
                            <p class="text-muted mb-0">Owner's Account Number : ${account.accountNumber}</p>
                            <p class="text-muted mb-0">Owner's Phone Number : ${account.phoneNumber}</p>
                            <p class="text-muted mb-0">Account Opening Date : ${account.bankRegDate}</p>
                            <p class="text-muted mb-0">Account Balance : ${account.balance}</p>
                            <p class="text-muted mb-0">Account Alias : ${account.bankAlias}</p>
                            <p class="text-muted mb-0">Bank Code : ${account.bankCode}</p>
                            
                            <div class="d-flex">
                            <a class="btn btn-primary btn-xl" href="${ pageContext.request.contextPath }/account/transferForm.do?accountNumber=${account.accountNumber}&senderBankCode=${account.bankCode}&cusName=${userVO.cusName}"  >Transfer Account</a>
                            </div>
                            
                        </div>
                    </div>
                    </c:forEach>
                    
                    <!-- jihoon bank account list --> 
                    <c:forEach items="${jihoonAccountList}" var="account" varStatus="loop">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">JH Bank Account</h3>
                            <p class="text-muted mb-0">Owner's NAME : ${userVO.cusName}</p>
                            <p class="text-muted mb-0">Owner's ID : ${userVO.cusId}</p>
                            <p class="text-muted mb-0">Owner's Account Number : ${account.accountNumber}</p>
                            <p class="text-muted mb-0">Owner's Phone Number : ${account.phoneNumber}</p>
                            <p class="text-muted mb-0">Account Opening Date : ${account.bankRegDate}</p>
                            <p class="text-muted mb-0">Account Balance : ${account.balance}</p>
                            <p class="text-muted mb-0">Account Alias : ${account.bankAlias}</p>
                            <p class="text-muted mb-0">Bank Code : ${account.bankCode}</p>
                            
                            <div class="d-flex">
                            <a class="btn btn-primary btn-xl" href="${ pageContext.request.contextPath }/account/transferForm.do?accountNumber=${account.accountNumber}&senderBankCode=${account.bankCode}&cusName=${userVO.cusName}"  >Transfer Account</a>
                            </div>
                            
                        </div>
                    </div>
                    </c:forEach>
                    
                    <!-- jo bank account list -->
                    <c:forEach items="${joAccountList}" var="account" varStatus="loop">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">J Investment Account</h3>
                            <p class="text-muted mb-0">Owner's NAME : ${userVO.cusName}</p>
                            <p class="text-muted mb-0">Owner's ID : ${userVO.cusId}</p>
                            <p class="text-muted mb-0">Owner's Account Number : ${account.accountNumber}</p>
                            <p class="text-muted mb-0">Owner's Phone Number : ${account.phoneNumber}</p>
                            <p class="text-muted mb-0">Account Opening Date : ${account.bankRegDate}</p>
                            <p class="text-muted mb-0">Account Balance : ${account.balance}</p>
                            <p class="text-muted mb-0">Account Alias : ${account.bankAlias}</p>
                            <p class="text-muted mb-0">Bank Code : ${account.bankCode}</p>
                            
                            <div class="d-flex">
                            <a class="btn btn-primary btn-xl" href="${ pageContext.request.contextPath }/account/transferForm.do?accountNumber=${account.accountNumber}&senderBankCode=${account.bankCode}&cusName=${userVO.cusName}"  >Transfer Account</a>
                            </div>
                            
                        </div>
                    </div>
                    </c:forEach>
                    
                    <!-- yoon bank account list -->
                    <c:forEach items="${yoonAccountList}" var="account" varStatus="loop">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Berry Bank Account</h3>
                            <p class="text-muted mb-0">Owner's NAME : ${userVO.cusName}</p>
                            <p class="text-muted mb-0">Owner's ID : ${userVO.cusId}</p>
                            <p class="text-muted mb-0">Owner's Account Number : ${account.accountNumber}</p>
                            <p class="text-muted mb-0">Owner's Phone Number : ${account.phoneNumber}</p>
                            <p class="text-muted mb-0">Account Opening Date : ${account.bankRegDate}</p>
                            <p class="text-muted mb-0">Account Balance : ${account.balance}</p>
                            <p class="text-muted mb-0">Account Alias : ${account.bankAlias}</p>
                            <p class="text-muted mb-0">Bank Code : ${account.bankCode}</p>
                            
                            <div class="d-flex">
                            <a class="btn btn-primary btn-xl" href="${ pageContext.request.contextPath }/account/transferForm.do?accountNumber=${account.accountNumber}&senderBankCode=${account.bankCode}&cusName=${userVO.cusName}"  >Transfer Account</a>
                            </div>
                            
                        </div>
                    </div>
                    </c:forEach>
                    
                    
                    
                </div>
                
            </div>
            
        </section>
        
        
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2022 - Company Name</div></div>
        </footer>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>

        <script src="/SemiFinalProject/resources/js/scripts.js"></script>

        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>

</html>