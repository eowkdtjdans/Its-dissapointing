 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>비밀번호 수정</title>

<script>
	//로그인 값이 있던 없던 그냥 넘어가니까 JSON을 사용해서 데이터베이스에 있는지 체크하기.
	function ModifyPwd(frm) {
	
	 	var str = $("#ModifyPwd").serialize();
		alert("str : " + str); 
		/*  var m_pwd = $("#m_pwd").val();
		alert("m_pwd : " + m_pwd);  */
		$.ajax({
			async : true,
			type : "POST",
			dataType : "json",
			data : str,
			url : "../../MemberModifyPwdJson.do",
			success : function(data) {
				alert("data.cnt : " + data.cnt);
				
				if (data.cnt > 0) {
					alert("변경 완료");
					 frm.action = "../../ModifyPwdMember.do";
				 	frm.submit();   
				 	return false;
				} else {
					alert("변경 실패");
					frm.m_pwd.value = "";
					frm.modifyM_pwd.value = "";
					frm.m_pwd.focus();
				}
			}
		})
		

	};

		
</script>

	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>비밀번호 변경 페이지</title>
	<link rel="stylesheet" type="text/css" href="views/bootstrapModal/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="views/cssModal/my-login.css">
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title" style="text-align : center;">로그인</h4>
							<form method="POST" class="my-login-validation" id="ModifyPwd">
								<div class="form-group">
									<label for="password">아이디</label>
									<input id="m_id" type="text" class="form-control" name="m_id" value="${member.m_id }" required autofocus>
								</div>
								<div class="form-group">
									<label for="password">기존 비밀번호</label>
									<input id="m_pwd" type="password" class="form-control" name="m_pwd" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">변경할 비밀번호</label>
									<input id="modifyM_pwd" type="password" class="form-control" name="modifyM_pwd" required data-eye>
								</div>
									
							<!-- 	<div class="form-group">
									<label for="password">변경할 비밀번호 확인</label>
									<input id="modifyM_pwd2" type="password" class="form-control" name="modifyM_pwd2" required data-eye>
								</div> -->
								
								<div class="form-group m-0">
									<button type="button" class="btn btn-primary btn-block" onclick="ModifyPwd(this.form)">
										비밀번호 변경
									</button>
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