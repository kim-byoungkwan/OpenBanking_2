<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

<body id="page-top">

        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">Q & A</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">If you have any questions about BK Bank, <br>please Write Down your questions</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                      
                        <form action="${ pageContext.request.contextPath }/board/writeProcess.do" method="post" id="contactForm" data-sb-form-api-token="API_TOKEN">
                               
                            <div class="form-floating mb-3">
                                <input class="form-control" name="writer" id="name"  value=${userVO.cusName} type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Writer : </label>
                            </div>
                            
                            <div class="form-floating mb-3">
                                <input class="form-control" name="userId" id="name"  value=${userVO.cusId} type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">User Id : </label>
                            </div>
                            
                            <div class="form-floating mb-3">
                                <input class="form-control" name="title" type="text" placeholder="Enter title" data-sb-validations="required" />
                                <label for="title">Title :</label>
                                <div class="invalid-feedback" data-sb-feedback="id:required">Title is required.</div>
                            </div>
 
                             <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" name="content" placeholder="Enter your content" style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="content">content</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">contents are required.</div>
                            </div>
                            
                            <div class="form-floating mb-3">
                                     <div class="form-floating">
                                        <select class="form-select" name="boardType" id="floatingSelect" aria-label="Financial Consultancy">
                                            <option selected="">Select Public or Private :</option>
                                            <option name="01" value="A">Public</option>
                                            <option name="02" value="P">Private</option>
                                <label for="boardType">Select Board Type </label>	
                                        </select>
                                    </div>
                                </div>
                            
                            <div class="col text-center"><button class="btn btn-primary btn-xl " id="submitButton" type="submit">Submit Q & A</button></div>
                            
                        </form>
                    </div>
                </div>
                
            </div>
        </section>

</body>








    
    
    