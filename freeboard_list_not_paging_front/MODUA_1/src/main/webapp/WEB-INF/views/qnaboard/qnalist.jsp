<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- qna link start -->
<link rel="stylesheet" href="/resources/css/css_qna/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/css_qna/style.css">
<link rel="stylesheet" href="/resources/css/css_qna/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/css_qna/owl.carousel.min.css">

</head>

<body>

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- page-header-start -->
<div class="page-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="page-section"> <span class="page-text">Frequently Ask Question</span>
          <h1 class="page-title">The Most Commonly Asked Questions</h1>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- page-header-close --> 
<!-- job_listing_area_start  -->
    <div class="job_listing_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="section_title">
                        <h3>QNA 게시판</h3>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="brouse_job text-right">
                        <a href="jobs.html" class="boxed-btn4">Browse More Job</a>
                    </div>
                </div>
            </div>
            <div class="job_lists">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/1.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문1</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>1</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="qnaRegister" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/2.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문2</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>
                                                2</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/3.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문3</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>
                                                3</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/4.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문4</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>
                                                4</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/5.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문5</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>
                                                5</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/1.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>질문6</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-lock" aria-hidden="true"></i>
                                                6</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-user" aria-hidden="true"></i>
                                                작성자</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Apply Now</a>
                                </div>
                                <div class="date">
                                    <p>Date line: 31 Jan 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->
    
<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

</body>

</html>