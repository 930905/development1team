<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- searchId link -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css/css_login/search_style.css">
</head>

<body class="img" style=" height: 1025px;">

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- searchPw start -->
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
          <h3 class="mb-4 text-center modua">비밀번호를 잊으셨나요?</h3>
          <form action="#" class="signin-form">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디를 입력해주세요" required>
            </div>
            <div class="form-group">
              <input id="password-field" type="password" class="form-control" placeholder="이메일을 입력해주세요" required>
            </div>
            <div class="form-group">
              <button type="submit" class="form-control btn btn-primary submit px-3">비밀번호 찾기</button>
            </div>
            <div class="form-group d-md-flex">
              <div class="w-100 text-md-center">
                <a href="login.html" style="color: #C9E5D1">로그인창으로 돌아가기</a>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- searchPw close -->

<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

  <!-- login script-->
  <script src="/resources/js/js_login/jquery.min.js"></script>
  <script src="/resources/js/js_login/popper.js"></script>
  <script src="/resources/js/js_login/bootstrap.min.js"></script>
  <script src="/resources/js/js_login/main.js"></script>
</body>

</html>
