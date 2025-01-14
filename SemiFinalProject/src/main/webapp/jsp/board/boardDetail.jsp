<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../../resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />

        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../resources/css/styles.css" rel="stylesheet" />

</head>

<body>'
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                            <img src="http://via.placeholder.com/400x90?text=logo">
                        </div>

                    </div>

                    <hr class="my-5">

                    <div class="row p-5">
                        <div class="col-md-12">
                            
                            <table class="table">
                                                            
                                <tbody>
                                	<tr>
                                		<th scope="row">No</th>
                                		<td>${board.no}</td>
                                	</tr>
                                	
                                	<tr>
                                		<th scope="row">Writer</th>
                                		<td>${board.writer}</td>
                                	</tr>

                                	<tr>
                                		<th scope="row">User ID</th>
                                		<td>${board.userId}</td>
                                	</tr>                                	

                                	<tr>
                                		<th scope="row">Title</th>
                                		<td>${board.title}</td>
                                	</tr>

                                	<tr>
                                		<th scope="row">Contents</th>
                                		<td>${board.content}</td>
                                	</tr>                                	

                                	<tr>
                                		<th scope="row">WriteDate</th>
                                		<td>${board.writeDate}</td>
                                	</tr>                                	
                              
                                </tbody>
                            
                            </table>

							<form
								action="${ pageContext.request.contextPath }/boardReply/writeProcess.do?no=${board.no}"
								method="post">
								
								<div class="form-floating mb-3">
                                <input class="form-control" name="reWriter" id="name"  value=${userVO.cusName} type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Writer : </label>
                            	</div>

								<div class="form-floating mb-3">
                                <input class="form-control" name="userId" id="name"  value=${userVO.cusId} type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">User Id : </label>
                            	</div>
                            	
								<div class="form-floating mb-3">
                                <input class="form-control" name="reContent" id="name"  type="text" placeholder="Enter your name..." data-sb-validations="required"/>
                                <label for="name">Re Content : </label>
                            	</div>
                            	
                            	<button type="submit">
											Write Re Comment
								</button>
							</form>
							
							<c:forEach items="${boardReplyList}" var="boardReply" varStatus="loop">
								<span style="margin-top: 10px; font-size: 20px">↪</span>
								<span>${boardReply.reWriter} : </span>
								<span>${boardReply.reContent} </span>
								<span>[ ${boardReply.reWriteDate } ]</span>
								<br>

<!-- 
								<form
								action="${ pageContext.request.contextPath }/boaredReply/writeProcess.do?no=${board.no}"
								method="post">

								<div class="form-floating mb-3">
                                <input class="form-control" name="reNo" id="name"  value="${boardReply.reNo}"  type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Re Number : </label>
                            	</div>
								
								<div class="form-floating mb-3">
                                <input class="form-control" name="reWriter" id="name"  value="${boardReply.reWriter}" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Writer : </label>
                            	</div>
                            	
								<div class="form-floating mb-3">
                                <input class="form-control" name="reContent" id="name"  type="text" placeholder="Enter your name..." data-sb-validations="required"/>
                                <label for="name">Re Content : </label>
                            	</div>
                            	
                            	<button type="submit">
                            		Write Re Comment
								</button>
                            	
							</form>
 -->								

					
							</c:forEach>                            
                           
                        </div>
                    </div>
                    
                    <div class="col text-center"><button class="btn btn-primary btn-xl" id="submitButton" type="submit" onclick="writeForm()">Write Q & A</button></div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>