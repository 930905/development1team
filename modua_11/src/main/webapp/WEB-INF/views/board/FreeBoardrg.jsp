<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
    
<%@include file="../sts_includes/header_link_include.jsp" %>

    <link rel="stylesheet" href="./cssmk/bootstrap.min.css">
    <link rel="stylesheet" href="./cssmk/style.css">
    <link rel="stylesheet" href="./cssmk/font-awesome.min.css">
    <link rel="stylesheet" href="./cssmk/owl.carousel.min.css">
    
    
           </head>
<body> 
<%@include file="../sts_includes/header_include.jsp" %>

    
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
            <div class="row">
                <div class="col-lg-6">
                    <div class="section_title">
                        <h3>자유게시판</h3>
                    </div>
                    <!-- <select name="category">
                    <option data-display="날짜순">날짜순</option>
                    <option value="1">이름순</option>
                    <option value="2">인기순 </option>
                    <option value="4">카테고리순</option>
                </select> -->
                </div>
            </div>
        </div>
    </div>


    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="apply_job_form white-bg">
                        <h4>게시물 작성</h4>
                        <form action="#">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input_field">
                                        <input type="text" placeholder="Your name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input_field">
                                        <input type="text" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" placeholder="제목">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" placeholder="종목">
                                    </div>
                                </div>
                               
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <textarea name="#" id="" cols="30" rows="10" placeholder="글내용"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <button class="boxed-btn3 w-100" type="submit">등록하기</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    
    <%@include file="../sts_includes/footer_and_script_include.jsp" %>
    
    </body>
</html>