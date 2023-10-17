<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


</head>

<body>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board(게시판)</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>

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
	<c:forEach items="${list}" var="board">
		<tr>
			<td><c:out value="${board.bno}"></c:out></td>
			<td><a href='/board/get?bno=<c:out value="${board.bno}"  />'><c:out
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


<script type="text/javascript">

</script>

<body>




