<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="views/bootstrapModal/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="views/cssModal/my-login.css">
	<title>회원가입</title>
	
	
	
 <script>
 function register(frm) {
		if(confirm("회원가입을 하시겠습니까?")){
	        if(idck==0){
	            alert('아이디 중복체크를 해주세요');
	            return false;
	        }else{
	        alert("회원가입을 축하합니다");
	    	frm.action = "../../insertMember.do"; //로그인 작업 처리
			frm.submit();
	        }
	    }
	
	};
	
  function idCheck(frm) {
	 var m_id = $('#m_id').val();
	
	$.ajax({
		async: true,
		type : 'POST',
		dataType : "json",
		data : m_id,
	    contentType: "application/json; charset=UTF-8",
		url : '../../checkMember.do',
		
		   success : function(data) {
			   console.log(data);
               if (data.cnt > 0) {
                   
                   alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                   $("#m_id").focus();
                   $("#m_id").val("");
                   
               
               } else {
                   alert("사용가능한 아이디입니다.");
                   //아이디가 중복하지 않으면  idck = 1 
                   idck = 1;
               }
           },
           error : function(error) {
               
               alert("error : " + error);
           }
       });
}; 
var placeSearch, autocomplete;
function initAutocomplete() {
  autocomplete = new google.maps.places.Autocomplete((document.getElementById('autocomplete')),{types: ['geocode']});
  autocomplete.addListener('place_changed', fillInAddress);
}
function fillInAddress() { //lat 와 lng 값을 넘겨줄 input 태그에 값 넣어주기
	var place = autocomplete.getPlace();
	document.getElementById("lat").value=place.geometry.location.lat();
	document.getElementById("lng").value=place.geometry.location.lng();
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?v=3&sensor=false&libraries=places&callback=initAutocomplete&key=AIzaSyAfB2qQnvAuU2YFFqi8hrPWfjJNyxl5kWc" async defer></script>
	
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title" style="text-align : center;">회원가입</h4>
							<form method="POST" class="my-login-validation">
								<div class="form-group">
									<label for="email">아이디</label>
									<input id="m_id" type="email" class="form-control" name="m_id" required autofocus>
								</div>
								
									<div class="form-group m-0"> <!-- onclick="idCheck(this.form)" -->
									<button type="button" class="btn btn-default btn-block" onclick="idCheck(this.form)" >
										아이디 중복확인
									</button>
								</div>
								

								<div class="form-group">
									<label for="password">비밀번호</label>
									<input id="m_pwd" type="password" class="form-control" name="m_pwd" required data-eye>
								</div>
						
								<div class="form-group">
									<label for="name">성함</label>
									<input id="m_name" type="text" class="form-control" name="m_name" required data-eye>
								</div>
						
								<div class="form-group">
									<label for="phone">핸드폰</label>
									<input id="m_phone" type="text" class="form-control" name="m_phone" required data-eye>
								</div>
						
						         <div class="form-group" style="text-algin : center; margin : 0 auto">
						            <div class="btn-group" data-toggle="buttons">
						               <label class="btn btn-default active"> 
						                  <input type="radio" name="m_gender" autocomplete="off" value="남자" checked/>남자
						               </label>
						               
						               <label class="btn btn-default">
						                  <input type="radio" name="m_gender" autocomplete="off" value="여자"/>여자
						               </label>
						            </div>
						         </div>
						
								<div class="form-group">
									<label for="birthday">생년월일</label>
									<input id="m_birthday" type="text" class="form-control" name="m_birthday" required data-eye> 
								</div>
						
								<!-- <div class="form-group">
									<label for="phone">주소</label>
									<input id="m_address" type="text" class="form-control" name="m_address" required data-eye>
								</div> -->
								
								<div id="locationField" class="form-group">
									<label for="address">주소</label>
									<input id="autocomplete" type="text" class="form-control" name="m_address" required data-eye>
									<input class="field" id="lat" type="hidden" class="form-control" name="lat"/>
									<input class="field" id="lng" type="hidden" class="form-control" name="lng"/>
								</div>
						
								 <div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="agree" id="agree" class="custom-control-input">
										<label for="agree" class="custom-control-label">사이트 가입 하시겠습니까? <a href="#">가입약관</a></label>
										<div class="invalid-feedback">
											You must agree with our Terms and Conditions
										</div>
									</div>
								</div> 

								<div class="form-group m-0">
									<button type="button" class="btn btn-primary btn-block" onclick="register(this.form)">
										회원가입
									</button>
								</div>
								<div class="mt-4 text-center">
									사이트 회원이십니까? <a href="../../loginMember.do">로그인</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2018 &mdash; 국봉쓰
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/my-login.js"></script>
</body>
</html>