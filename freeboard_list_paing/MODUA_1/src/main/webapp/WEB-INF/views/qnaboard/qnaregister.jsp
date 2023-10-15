<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- qna link start -->
<link rel="stylesheet" href="/resources/css_qna/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css_qna/style.css">
<link rel="stylesheet" href="/resources/css_qna/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css_qna/owl.carousel.min.css">

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
            <div class="leave-comments mt80">
                <h2 class="mb30">궁금하신 점</h2>
                <form>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="control-label sr-only" for="textarea"></label>
                        <textarea class="form-control" id="textarea" name="textarea" rows="6" placeholder="내용을 입력해 주세요."></textarea>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="control-label sr-only" for="name"></label>
                        <input id="name" name="name" type="text" class="form-control" placeholder="작성자">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="control-label sr-only" for="email"></label>
                        <input id="email" name="email" type="email" class="form-control" placeholder="비밀번호">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label class="control-label sr-only" for="website"></label>
                        <input id="website" name="website" type="text" class="form-control" placeholder="이메일">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary">제출하기</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->
    
<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

</body>

</html>