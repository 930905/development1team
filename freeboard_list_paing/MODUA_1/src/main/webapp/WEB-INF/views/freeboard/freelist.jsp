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
			
			<!-- paging start -->
           <div class="pagination_wrap" style="padding-bottom: 7em;">
               <ul>
                    <c:if test="${pageMaker.prev}">
						<li class="paginate_button previous"><a href="${ pageMaker.startPage -1}">Prev</a></li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button"><a href="${num}">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next"><a href="${ pageMaker.endPage +1}">Next</a></li>
					</c:if>	
               </ul>
            </div>
             
            <!-- Page311 : 실제 페이지를 클릭하면 동작을 하는 부분은 별도의 form 태그를 이용해서 처리하도록 합니다! -->
			<form action="/freeboard/freelist" id="actionForm" method="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type}"/>"/>
				<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>"/>
			</form>
            <!-- paging close -->
         </div>



    </div>
    <!-- job_listing_area_end -->
    <!-- freeboard close -->
    
<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

<script type="text/javascript">
	$(document).ready(
			function() {
				var actionForm = $("#actionForm");
				
				$(".paginate_button a").on("click", function(e) {
					
					e.preventDefault();
					
					console.log('click');
					
					actionForm.find("input[name='pageNum']").val($(this).attr("href"));
					actionForm.submit();
				});
				
				// Page315 : list.jsp 게시물 조회를 위한 이벤트 처리 추가
				$(".move").on("click", function(e) {
					e.preventDefault();
					actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
					actionForm.attr("action", "/freeboard/freeget");
					actionForm.submit();
				});
				
		}); //page342 자바스크립트 소스 코딩 끝
</script>

</body>

</html>