<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- freeboard link -->
<link rel="stylesheet" href="/resources/css/css_free/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/css_free/style.css">
<link rel="stylesheet" href="/resources/css/css_free/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/css_free/owl.carousel.min.css">

</head>

<body>

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- freeboard start -->
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
                </div>
            </div>
            <c:forEach items="${list}" var="board">
            <div class="col-lg-9">
                    <div class="job_lists m-0">
                        <div class="col-lg-12 col-md-12">
                            <div class="single_jobs white-bg d-flex justify-content-between">
                                <div class="jobs_left d-flex align-items-center">
                                    <div class="jobs_conetent">
	                                        <a href="job_details.html">
	                                       		<td><h2><a href='/freeboard/freeget?bno=<c:out value="${board.bno}"/>'><c:out value="${board.title}" /></a></h2></td>
	                                        </a>
	                                        <div class="links_locat d-flex align-items-center">
	                                            <div class="location">
	                                                <p> <i class="fa fa-map-marker"></i>
	                                               		<td><c:out value="${board.bno}"></c:out></td>
	                                                </p>
	                                            </div>
	                                            <div class="location">
	                                                <p> <i class="fa fa-clock-o"></i>
	                                               		<td><c:out value="${board.writer}"></c:out></td>
	                                                </p>
	                                            </div>
	                                        </div>
                                    </div>
                                </div>
                                <div class="jobs_right">
                                    <div class="apply_now">
                                        <a href="job_details.html" class="boxed-btn3">상세보기</a>
                                    </div>
                                    <div class="date">
                                        <p>
	                                   		<td><fmt:formatDate value="${board.regdate}"
												pattern="yyyy-MM-dd" />
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>

            <div class="search">
                <div class="search_area">
                    <div class="search_place">
                        <form action="#" id="searchForm" method="get">
                            <button class="search_btn">등록하기(register)</button>
                            <select name="type">
                                <option selected="selected">검색조건</option>
                                <option>제목</option>
                                <option>내용</option>
                                <option>작성자</option>
                                <option>제목 + 내용</option>
                                <option>제목 + 작성자</option>
                                <option>제목 + 내용 + 작성자</option>
                                <input type="text" name="keyword" value="검색어를 입력하세요">
                                <button class="search_btn">검색(Search)</button>
                            </select>
                        </form>
                        <!-- <button class="search_list" onclick="location.href='/board/list'">글목록보기(List)</button> -->
                    </div>
                </div>
            </div>
            <div class="pagination_wrap">
                <ul>
                    <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                    <li><a href="#"><span>01</span></a></li>
                    <li><a href="#"><span>02</span></a></li>
                    <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                    </ul>
              </div>
         </div>



    </div>
    <!-- job_listing_area_end -->
    <!-- freeboard close -->
    
<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

</body>

</html>