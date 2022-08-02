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

<script >
	function writeForm(){
		location.href='${ pageContext.request.contextPath }/board/writeForm.do';
	}
</script>

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
                            
                                <thead>
                                    <tr>
                                        <th class="border-0 text-uppercase small font-weight-bold">No</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Writer</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">UserId</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Title</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Content</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">WriteDate</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">BoardType</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                	
                                	<c:forEach items="${list }" var="board" varStatus="loop">
                                		<tr>
                                			<td>${board.no}</td>
                                			<td>${board.writer}</td>
                                			<td>${board.userId}</td>
                                			<td>
                                			<a href="${pageContext.request.contextPath}/board/detail.do?no=${board.no}">
                                			${board.title}</a>
                                			</td>
                                			<td>${board.content}</td>
                                			<td>${board.writeDate}</td>
                                			<td>${board.boardType}</td>
                                		</tr>
                                	
                                	</c:forEach>
                              
                                </tbody>
                            
                            </table>
                        
                        </div>
                    </div>
                    
                    <div class="col text-center"><button class="btn btn-primary btn-xl" id="submitButton" type="submit" onclick="writeForm()">Write Q & A</button></div>
                    
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center small">by : <a class="text-light" target="_blank" href="http://totoprayogo.com">totoprayogo.com</a></div>

</div>


</body>
</html>





