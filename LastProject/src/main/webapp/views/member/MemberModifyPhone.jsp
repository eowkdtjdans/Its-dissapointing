<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>핸드폰번호 변경</title>

<script>
	function ModifyPhone(frm) {
	 	var phone = document.getElementById("m_phone").value;
	 	var phoneModify = document.getElementById("phoneModify").value;
	 	var phoneCheck = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
	
	 	var str = $("#ModifyPhoneForm").serialize();

		$.ajax({
			async : true,
			type : "POST",
			dataType : "json",
			data : str,
			url : "../../MemberModifyPhoneJson.do",
			success : function(data) {
				 if (data.cnt == 0) {
					   alert("등록된 핸드폰번호가 일치하지않습니다. 다시 입력하세요.");
						frm.m_phone.value = "";
						frm.phoneModify.value = "";
						frm.m_phone.focus();
				   } else if(phoneCheck.test(phoneModify)==false || phoneModify == ""){
						alert("변경할 핸드폰번호를 제대로 기입하세요.");
						 $("#phoneModify").focus();
		                 $("#phoneModify").val("");
						return false;
				   } else {
					    alert("변경이 완료되었습니다.");
						frm.action = "../../ModifyPhoneMember.do";
					    frm.submit();    
					    return false;
				   }
			}
				 
		})
		
	};
		
</script>
	
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>비밀번호 변경 페이지</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>

<body>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
		<div class="col-md-3 ">
		     <div class="list-group ">
              <a href="../../myProfile.do" class="list-group-item list-group-item-action">마이 프로필</a>
              <a href="#" class="list-group-item list-group-item-action">받은 쪽지함</a>
              <a href="#" class="list-group-item list-group-item-action">보낸 쪽지함</a>
              <a href="../../insertProfile.do" class="list-group-item list-group-item-action">프로필 수정</a>
              <a href="../../ModifyPwdMember.do" class="list-group-item list-group-item-action">비밀번호 변경</a>
              <a href="../../ModifyPhoneMember.do" class="list-group-item list-group-item-action active">핸드폰 변경</a>
              <a href="../../ModifyAddressMember.do" class="list-group-item list-group-item-action">주소 변경</a>
              <a href="../../profileImageInsert.do" class="list-group-item list-group-item-action">이미지 업로드</a>
              <a href="#" class="list-group-item list-group-item-action">내 글</a>
              <a href="#" class="list-group-item list-group-item-action">내 댓글</a>
              
              
            </div> 
            
		</div>
		<div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>핸드폰 번호 변경</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form method="POST" class="my-login-validation" id="ModifyPhoneForm">
		                    	<input id="m_id" type="hidden" class="form-control" name="m_id" value="${member.m_id }">
                              <div class="form-group row">
                                <label for="m_phone" class="col-4 col-form-label">기존 핸드폰 번호</label> 
                                <div class="col-8">
                                	<input id="m_phone" name="m_phone" type="text" class="form-control" >
                                </div>
                              </div>
                              <div class="form-group row">
                               <label for="phoneModify" class="col-4 col-form-label">변경할 핸드폰 번호</label>
                                <div class="col-8">
                                  	<input id="phoneModify" name="phoneModify" type="text" class="form-control" >
                                </div>
                              </div>
                              
                              <div class="form-group row">
                               	<button type="button" class="btn btn-primary btn-block" onclick="ModifyPhone(this.form)">
										핸드폰 변경
									</button>
                              </div>
                            
                          
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>