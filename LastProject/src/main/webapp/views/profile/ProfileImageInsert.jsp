 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"> 
  <title>Gukbong WorlD</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description"> 
 
  
  <%@include file="/views/headerScript.jsp"%>
  <!-- Favicons -->
  <link href="views/img/happy.png" rel="icon">
  <link href="views/img/happy.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Kalam" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="/views/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/views/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/views/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/views/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/views/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/views/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <!-- Main Stylesheet File -->
  <link href="/views/css/style.css" rel="stylesheet">
  
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  
  
  
  
<style>
   body{
      padding-top: 75px; 
   }
   
   .scrollto {    
     font-family: 'Kalam', cursive;
     padding-top: 8px;
   }
   .border-none {
        margin-left: 490px;
   }
   
   #nav-menu-container {
        margin-top: -30px;
   }
   #header {
        background-color: 	white;
   }
   #header.header-scrolled {
        background-color: white;
   }
   
   .nav-menu li a{
   	color: black;
   }	
   #mainLogo{
   	color: black;
   	position: absolute;
   	margin-left: 80px;
   	margin-top: -10px;
   	font-size: 2.15em;
   }
   #happy{
   	position: absolute;
   	margin-left: 20px;
   	margin-top: -20px;
   }
   #navProfileImg{
   	position: relative;
   	margin-top: -10px;
   }
   

select {
    width: 128px; /* 원하는 너비설정 */
    padding: .3em .3em; /* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    border:  1px solid #999; 
    border-radius: 30px; /* iOS 둥근모서리 제거 */
    -moz-appearance: none;
    appearance: none;
}

#autocomplete {
	width: 50%; 
	border: 1px solid #999; 
	border-radius: 30px; 
	padding: .3em .3em;
	
}
#advice{
	width: 50%; 
	border: 1px solid #999; 
	border-radius: 30px; 
	padding: .3em .3em;
}

</style>


<script>
   $(function(){
      $("#profileModal").click(function(){
         $("#profile").modal({
            backdrop: 'static',
            keyboard: false
         });
      });
      
      $("#uploadProfileImg").change(function(){
         var imgFile = $("#uploadProfileImg").val();
         var imgFileExtendArray = imgFile.split('.');
         var imgFileLength = $("#uploadProfileImg").val().length;
         var imgFileExtend = imgFileExtendArray[1];
         
         var size = document.getElementById("uploadProfileImg").files[0].size;
         
         if(imgFileExtend=="jpg" || imgFileExtend=="png" || imgFileExtend=="gif" || imgFileExtend=="jpeg" || imgFileExtend=="JPG" || imgFileExtend=="PNG" || imgFileExtend=="GIF" || imgFileExtend=="JPEG") {
            if (size <= 20971520) {
               $("#profileWrong").remove();
               $("#profileImgBtn").prop("disabled", false);
            } else {
               $("#profileWrong").remove();
               $("<div id='typeWrong'><b>파일 용량이 너무 큽니다.</b></div>").insertAfter("#uploadProfileImg");
            }
         } else {
            $("#profileWrong").remove();
            $("#profileImgBtn").prop("disabled", true);
            $("<div id='profileWrong'><b>파일 유형이 잘못되었습니다.</b></div>").insertAfter("#uploadProfileImg");
         }
      });
      
      $("#hostModal").click(function(){
         $("#host").modal({
            backdrop: 'static',
            keyboard: false
         });
      });
      
      $("#uploadHostImg").change(function(){
         var imgFile = $("#uploadHostImg").val();
         var imgFileLength = $("#uploadHostImg").val().length;
         var imgFileExtend = imgFile.substring(imgFileLength - 3);
         
         if(imgFileExtend=="jpg" || imgFileExtend=="png" || imgFileExtend=="gif" || imgFileExtend=="jpeg" || imgFileExtend=="JPG" || imgFileExtend=="PNG" || imgFileExtend=="GIF" || imgFileExtend=="JPEG") {
            $("#hostWrong").remove();
            $("#hostImgBtn").prop("disabled", false);
         } else {
            $("#hostWrong").remove();
            $("#hostImgBtn").prop("disabled", true);
            $("<div id='hostWrong'><b>파일 유형이 잘못되었습니다.</b></div>").insertAfter("#uploadHostImg");
         }
      });
      
   });
</script>
<script>
function uploadProfile(profileFrm) {
   profileFrm.action="/uploadProfileImg.do";
   profileFrm.submit();
}
function uploadHost(hostFrm) {
   hostFrm.action="/uploadHostImg.do";
   hostFrm.submit();
}
</script>


</head>

<body onload="noticeMessage()">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<header id="header">
  <form id="noticeMessage" method="GET">
    <div class="container-fluid">
      <input type="hidden" id="receive_receiver" name="receive_receiver" value="${member.m_id }" />
      <div id="log" class="pull-left">
        <img src="/views/img/happy.png" id="happy"><a href="/sub2.do" class="scrollto" id="mainLogo">&nbsp;Gukbong WorlD</a>        
      </div>
    </div>
  </form>
      
      <form action="/sub.do" method="post">
      <table class="border-none">
         <tr>
            <td id="td1">             
               <select id="condition" name="searchCondition">         
                  <option value="find_travler">여행자검색
                  <option value="find_host">호스트검색
                  <option value="find_event">이벤트검색
                  <option value="find_advice">현지정보검색
               </select>
               
               <input id="autocomplete" placeholder="" type="text" name="searchKeyword">
               
               <input class="field" id="lat" type="hidden" name="lat"/>
               <input class="field" id="lng" type="hidden" name="lng"/>              
               <!-- <input type="submit" id="search"> -->
               
               <input  style="width: 30px; height: 30px;"  TYPE="IMAGE" src="/views/img/search.png" name="Submit" value="Submit" align="absmiddle" id="search">

            </td>
         </tr>
      </table>
   </form>

    

         
<nav id="nav-menu-container">
   <ul class="nav-menu">
   
   <c:if test="${empty member.m_id}">
      <li><a href="../../loginMember.do" >로그인</a></li>
      <li><a  href="../../insertMember.do" >회원가입</a></li>
      <li><a href="../../findIdMember.do">아이디찾기</a></li >
       <li><a href="../../findPwdMember.do">비밀번호찾기</a></li>
   </c:if>   
   
   <c:if test="${!empty member.m_id}">
      <li>
         <div>
         <strong>
         <span style="color: red;">W</span>
         <span style="color: blue;">e</span>
         <span style="color: darkviolet;">l</span>
         <span style="color: #FFC100;">c</span>
         <span style="color: green;">o</span>
         <span style="color: orange;">m</span>
         <span style="color: navy;">e</span>         
         &nbsp;&nbsp;         
         ${member.m_id } 님 
         </strong>
         </div>
      </li>
   
      <li class="menu-has-children"><img src="${profile.p_route }" style="width: 45px; height: 45px;" class="rounded-circle" id="navProfileImg"></a>
          <ul>                                      
            <li><a  href="/myProfile.do" >마이 프로필</a></li> 
            <li><a href="/logoutMember.do">로그아웃</a></li>            
          </ul> 
        </li>
               
         <li>    
          <span class="fa-layers fa-fw">
           <a href="/getReceiveMessageList.do">
          <i class="far fa-envelope fa-2x"></i>
          <span class="fa-layers-counter" style="color:red;" id="noticeMessageCount"></span>
          </a>
         </span>
         </li>         
   </c:if>
   </ul> 
</nav>               
<hr>
  </header><!-- #header -->

<br>
<div class="container">
   <div class="row">
      <div class="col-md-3 ">
           <div class="list-group ">
             	 <a href="../../myProfile.do" class="list-group-item list-group-item-action "><strong>My Profile 메인</strong></a>
              <a href="../../insertProfile.do" class="list-group-item list-group-item-action "><strong>프로필 수정</strong></a>
              <a href="../../ModifyPhoneMember.do" class="list-group-item list-group-item-action "><strong>핸드폰 변경</strong></a>
              <a href="../../ModifyPwdMember.do" class="list-group-item list-group-item-action "><strong>비밀번호 변경</strong></a>
              <a href="../../ModifyAddressMember.do" class="list-group-item list-group-item-action "><strong>주소 변경</strong></a>
              <a href="../../profileImageInsert.do" class="list-group-item list-group-item-action active"><strong>이미지 업로드</strong></a>
              <a href="../../profileImageList.do?m_id=${member.m_id }" class="list-group-item list-group-item-action"><strong>프로필 이미지 관리</strong></a>
              <a href="../../HostImageList.do?m_id=${member.m_id }" class="list-group-item list-group-item-action"><strong>호스트 이미지 관리</strong></a>
              <a href="../../getReceiveMessageList.do" class="list-group-item list-group-item-action"><strong>받은 쪽지함</strong></a>
              <a href="../../getSendMessageList.do" class="list-group-item list-group-item-action"><strong>보낸 쪽지함</strong></a>
              <a href="../../myPost.do?m_id=${member.m_id }&cPage=1" class="list-group-item list-group-item-action"><strong>내 글</strong></a>
              <a href="../../myPost2.do?m_id=${member.m_id }&cPage=1" class="list-group-item list-group-item-action"><strong>내 댓글</strong></a>
              <a href="../../loginRecordList.do?ll_id=${member.m_id }&cPage=1" class="list-group-item list-group-item-action"><strong>로그인 기록</strong></a>
              <a href="../../DeleteMember.do?m_id=${member.m_id }" class="list-group-item list-group-item-action"><strong>회원탈퇴</strong></a>
                  
            </div> 
            
      </div>
      <div class="col-md-9">
          <div class="card">
              <div class="card-body">
                  <div class="row">
                      <div class="col-md-12">
                          <img src="/views/img/camera2.png" style="width: 80px; height: 60px;"> <strong style="font-size: 1.2em;">이미지 업로드</strong>
                          <hr>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-12">
                             <input id="m_id" type="hidden" class="form-control" name="m_id" value="${member.m_id }">
                             
                             
                              <div class="form-group row">
                                <label for="profile_img" class="col-4 col-form-label text-center"><strong>프로필 이미지 업로드</strong></label> 
                                <div class="col-8">
                                   <button type="button" class="btn btn-outline-secondary btn-block" id="profileModal" ><strong>ADD PROFILE IMG+</strong></button>
                                </div>
                              </div>
                              
                     <form id="profileFrm" name="profileFrm" method="POST" enctype="multipart/form-data">
                     <div class="modal fade" id="profile">
                        <div class="modal-dialog">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h4>Upload File</h4>
                                 <button type="button" class="close" data-dismiss="modal">×</button>
                              </div>
                              <div class="modal-body">
                                 <b>Select Image: </b><br>
                                 <input type="file" id="uploadProfileImg" name="profileImg"/>
                                 
                                 <ul>
                                    <li>이미지는 JPG, JPEG, GIF, PNG 타입만 허용됩니다.</li>
                                    <li>이미지는 최대 20MB까지 허용됩니다.</li>
                                    <li>Script Blockers를 사용할경우 이미지 업로드 기능이 안될 수 있습니다.</li>
                                 </ul>
                              </div>
                              <div class="modal-footer">
                                 <button type="button" class="btn btn-primary" id="profileImgBtn" disabled="disabled" onclick="uploadProfile(this.form)"><strong>업로드</strong></button>
                                 <button type="button" class="btn btn-default" data-dismiss="modal"><strong>닫기</strong></button>
                                 
                                 <input type="hidden" value="${member.m_id}" name="m_id">
                              </div>
                           </div>
                        </div>
                     </div>
                     </form>
                            
                            <div class="form-group row">
                                  <label for="home_img"  class="col-4 col-form-label text-center"><strong>호스트 이미지 업로드</strong></label>
                                <div class="col-8">
                                   <button type="button" class="btn btn-outline-secondary btn-block" id="hostModal" ><strong>ADD HOST IMG+</strong></button>
                                </div>
                              </div>
                            
                              <form id="hostFrm" name="hostFrm" method="POST" enctype="multipart/form-data">
                     <div class="modal fade" id="host">
                        <div class="modal-dialog">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h4>Upload File</h4>
                                 <button type="button" class="close" data-dismiss="modal">×</button>
                              </div>
                              <div class="modal-body">
                                 <b>Select Image: </b><br>
                                 <input type="file" id="uploadHostImg" name="uploadHostImg"/>
                                 
                                 <ul>
                                    <li>이미지는 JPG, JPEG, GIF, PNG 타입만 허용됩니다.</li>
                                    <li>이미지는 최대 20MB까지 허용됩니다.</li>
                                    <li>Script Blockers를 사용할경우 이미지 업로드 기능이 안될 수 있습니다.</li>
                                 </ul>
                              </div>
                              <div class="modal-footer">
                                 <button type="button" class="btn btn-primary" id="hostImgBtn" disabled="disabled" onclick="uploadHost(this.form)"><strong>업로드</strong></button>
                                 <button type="button" class="btn btn-default" data-dismiss="modal"><strong>닫기</strong></button>
                                 
                                 <input type="hidden" value="${member.m_id}" name="m_id">
                              </div>
                           </div>
                        </div>
                     </div>
                     </form>   
                      </div>
                  </div>
                  
              </div>
          </div>
      </div>
   </div>
</div>
   
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>