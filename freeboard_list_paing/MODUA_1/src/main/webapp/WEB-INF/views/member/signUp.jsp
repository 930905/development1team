<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!-- header link include -->
<%@include file="../includes/header_link_include.jsp" %>

<!-- signUp link -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css/css_login/style_signUp.css">
</head>

<body class="img sBody" style="height: inherit !important ;">

<!-- header include -->
<%@include file="../includes/header_include.jsp"  %>

<!-- signUp start-->
<section class="ftco-section signUp_section" >
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 text-center mb-5">
        <h2 class="heading-section">MODUA</h2>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-4">
        <div class="login-wrap p-0">
          <h3 class="mb-4 text-center modua">모두아와 함께 힐링하시겠습니까?</h3>
          <form action="#" class="signin-form">
            <!-- userId start-->
            <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디를 입력하세요" required>
            </div>
            <!--userId close-->
            <!--userName start-->
            <div class="form-group">
              <input id="password-field" type="text" class="form-control" placeholder="사용하실 이름을 입력하세요" required>
            </div>
            <!--userName close-->
            <!--userEmail start-->
            <div class="form-group">
                <input id="password-field" type="text" class="form-control" placeholder="이메일을 입력하세요" required>
            </div>
            <!--userEmail close-->
            <!--userGender start-->
            <div class="form-group">
                <input id="password-field" type="text" class="form-control" placeholder="성별을 입력해주세요" required>
            </div>
            <!--userEmail close-->
            <!--userPassword start-->
            <div class="form-group">
              <input id="password-field" type="password" class="form-control" placeholder="비밀번호를 입력하세요" required>
              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
              </div>
            <!--userPassword close-->
            <hr class="line">
            <!--userAdress start-->
            <div class="form-group">
              <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
              <input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
              <input type="text" id="sample4_roadAddress" class="form-control" placeholder="도로명주소">
              <input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소">
              <span id="guide" style="color:#999;display:none"></span>
            </div>
            <!--userAdress close-->
            

            <hr class="line">

            <div class="form-group">
              <button type="submit" class="form-control btn btn-primary submit px-3">회원가입하기</button>
            </div>
            <!-- <div class="form-group d-md-flex">
              <div class="w-50">
                <label class="checkbox-wrap checkbox-primary">기억하기
                  <input type="checkbox" checked>
                  <span class="checkmark"></span>
                </label>
              </div>
              <div class="w-50 text-md-right">
                <a href="#" style="color: #C9E5D1">비밀번호 찾기</a>
              </div>
            </div> -->
          </form>
          <a href="login.html" class="w-100 text-center singUp">&mdash; 로그인 &mdash;</a>
          <!-- <div class="social d-flex text-center">
            <a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
            <a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- signUp close-->

<!-- footer&script include -->
<%@include file="../includes/footer_and_script_include.jsp"  %>

<!-- login script-->
<script src="/resources/js/js_login/jquery.min.js"></script>
<script src="/resources/js/js_login/popper.js"></script>
<script src="/resources/js/js_login/bootstrap.min.js"></script>
<script src="/resources/js/js_login/main.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
  
</body>

</html>