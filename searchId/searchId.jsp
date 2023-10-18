<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- searchId link -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css_login/search_style.css">

<script src="/resources/js_login/jquery.min.js"></script>
<script type="text/javascript">
	var path = "${pageContext.request.contextPath }";
	
	$(document).ready(function() {
	var msg = "${msg}";
	if(msg != ""){
	alert(msg);    
	}
	});
	 
	 
	function fnSubmit() {
	 
	var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var tel_rule = /^\d{2,3}-\d{3,4}-\d{4}$/;
	 
	if ($("#name").val() == null || $("#name").val() == "") {
	alert("이름을 입력해주세요.");
	$("#name").focus();
	 
	return false;
	}
	 
	if ($("#email").val() == null || $("#email").val() == "") {
	alert("이메일을 입력해주세요.");
	$("#email").focus();
	 
	return false;
	}
	 
	 
	if (confirm("아이디를 찾으시겠습니까?")) {
	 
	$("#createForm").submit();
	 
	return false;
	}
</script>
</head>

<form commandName="memberVO" id="createForm" action="${path}/member/resultId" method="post" class="signin-form">
<body class="img" style=" height: 1025px;">

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- searchId start -->
<section class="ftco-section " >
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 text-center mb-5">
        <h2 class="heading-section">MODUA</h2>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-4">
        <div class="login-wrap p-0">
          <h3 class="mb-4 text-center modua">아이디를 잊으셨나요?</h3>
            <div class="form-group">
              <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요" required>
            </div>
            <div class="form-group">
              <button type="submit" class="form-control btn btn-primary submit px-3"
              		  onclick="location.href='/member/resultId?name=<c:out value="${searchVO.name}" /> '">아이디 찾기</button>
              <a href="javascript:void(0)" onclick="fnSubmit(); return false;" class="form-control btn btn-primary submit px-3">아이디 찾기</a>
            </div>
            <div class="form-group d-md-flex">
              <div class="w-100 text-md-center">
                <a href="login" style="color: #C9E5D1">로그인창으로 돌아가기</a>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- searchId close -->

<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

<!-- login script-->
<!-- 
<script src="/resources/js_login/jquery.min.js"></script>
 -->
<script src="/resources/js_login/popper.js"></script>
<script src="/resources/js_login/bootstrap.min.js"></script>
<script src="/resources/js_login/main.js"></script>


</body>

</form>
</html>

