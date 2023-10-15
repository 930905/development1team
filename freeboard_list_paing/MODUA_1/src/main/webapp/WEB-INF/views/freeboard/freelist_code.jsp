<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board(게시판)</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				자유게시판
				<button id="regBtn" type="button" class="btn btn-xs pull-right">Register
					New Board</button>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<table width="100%"
					class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<!-- Model에 담긴 데이터 출력 : '/board/list'를
                                                                      실행했을 때 앞서 BoardController는 Model을 이용해서
                                                                      게시물의 목록을 'list'라는 이름으로 담아서 전달했으므로
                                     list.jsp에서는 이것을 출력합니다.
                                                                       출력은 JSTL을 이용해서 처리합니다.-->
					<c:forEach items="${list}" var="board">
						<tr>
							<td><c:out value="${board.bno}"></c:out></td>
							<td><a href='/freeboard/freeget?bno=<c:out value="${board.bno}"  />'><c:out
										value="${board.title}" /></a></td>
							<td><c:out value="${board.writer}"></c:out></td>
							<td><fmt:formatDate value="${board.regdate}"
									pattern="yyyy-MM-dd" />
							<td><fmt:formatDate value="${board.updateDate}"
									pattern="yyyy-MM-dd" />
						</tr>
					</c:forEach>

				</table>
				<!-- /.table-responsive -->
				
				<!-- Page308 pagination 붙여넣기 적용 후에 Ctrl + Shift + F 클릭 적용해 줌 -->
				<div class='pull-right'>
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${ pageMaker.startPage -1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<li class="paginate_button"><a href="${num}">${num}</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a href="${ pageMaker.endPage +1}">Next</a></li>
						</c:if>				
					</ul>
				</div> <!-- end Pagination -->
				
				<!-- Page311 : 실제 페이지를 클릭하면 동작을 하는 부분은 별도의 form 태그를 이용해서 처리하도록 합니다! -->
				<form action="/freeboard/freelist" id="actionForm" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type}"/>"/>
					<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>"/>
				</form>

			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

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


