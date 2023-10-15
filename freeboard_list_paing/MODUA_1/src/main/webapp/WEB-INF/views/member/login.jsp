<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- login link -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

 <link rel="stylesheet" href="/resources/css/css_login/style_login.css">
</head>

<body class="img lBody" style=" height: inherit;">

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- login start-->
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
          <h3 class="mb-4 text-center modua"></h3>
          <form action="#" class="signin-form">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Username" required>
            </div>
            <div class="form-group">
              <input id="password-field" type="password" class="form-control" placeholder="Password" required>
              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
            </div>
            <div class="form-group">
              <button type="submit" class="form-control btn btn-primary submit px-3">로그인</button>
            </div>
            <div class="form-group d-md-flex">
              <div class="w-50">
                <label class="checkbox-wrap checkbox-primary">기억하기
                  <input type="checkbox" checked>
                  <span class="checkmark"></span>
                </label>
              </div> 
              <div class="w-50 text-md-right">
                <a href="searchId" style="color: #C9E5D1">아이디 찾기</a>
              </div>
              <div class="w-50 text-md-right">
                <a type="submit" href="searchPw" style="color: #C9E5D1">비밀번호 찾기</a>
              </div>
            </div>
          </form>
          <a href="signUp" class="w-100 text-center singUp">&mdash; 회원가입 &mdash;</a>
          <div class="social d-flex text-center">
            <a href="https://www.facebook.com/?locale=ko_KR" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
            <a href="https://twitter.com/" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- login close-->

<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

<!-- login script link -->
<!-- login script-->
<script src="/resources/js/js_login/jquery.min.js"></script>
<script src="/resources/js/js_login/popper.js"></script>
<script src="/resources/js/js_login/bootstrap.min.js"></script>
<script src="/resources/js/js_login/main.js"></script>
</body>

</html>