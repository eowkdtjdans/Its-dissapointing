<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 이미지 수정</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="views/bootstrapModal/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="views/cssModal/my-login.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script>
	$(function(){
		$("#uploadProfileImg").click(function(){
			location
		});
	});
</script>

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
							<h4 class="card-title" style="text-align : center;">Photo</h4>
								
							<div>
								<label for="profile_img" style="text-align : center;">프로필 이미지 수정</label>
								<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#profile" >ADD PROFILE IMG+</button>
							</div>
							
							<form id="frm" name="frm" enctype="multipart/form-data">
							<div class="modal fade" id="profile">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h4>Upload File</h4>
											<button type="button" class="close" data-dismiss="modal">×</button>
										</div>
										<div class="modal-body">
											<b>Select Image: </b><br>
											<input type="file" name="img"/>
											
											<ul>
												<li>이미지는 JPG, GIF, PNG 타입만 허용됩니다.</li>
												<li>이미지는 최대 20MB까지 허용됩니다.</li>
												<li>Script Blockers를 사용할경우 이미지 업로드 기능이 안될 수 있습니다.</li>
											</ul>
											
											<input type="hidden" value="${member.m_id}"/>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary" id="uploadProfileImg">업로드</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										</div>
									</div>
								</div>
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
	
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>