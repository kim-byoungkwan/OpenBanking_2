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

<body>

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


        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">SignUp</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">If you want to make more money, Enjoy BK Bank</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">

                        <form action="${pageContext.request.contextPath }/loginProcess.do" method="post" id="contactForm" data-sb-form-api-token="API_TOKEN">
                            
                            <!-- Name input-->
                            
                            
                            <div class="form-floating mb-3">
                                <input class="form-control" name="id" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="id">ID</label>
                                <div class="invalid-feedback" data-sb-feedback="id:required">ID is required.</div>
                            </div>
                            
                            <div class="form-floating mb-3">
                                <input class="form-control"  name="password" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="password">Password</label>
                                <div class="invalid-feedback" data-sb-feedback="password:required">Password is required.</div>
                            </div>
                            
                            <!-- Submit Button-->
                            <div class="d-grid">
                            <button class="btn btn-primary btn-xl " id="submitButton"  type="submit" >LogIn
                            </button>
                            <br>
                            
                            <input class="btn btn-primary btn-xl " id="submitButton"  type="button" value="SignUp" onclick="location.href='${ pageContext.request.contextPath }/join/joinForm.do'">
                            
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>

        <script src="/SemiFinalProject/resources/js/scripts.js"></script>

        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>


