 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"> 
  <title>Gukbong WorlD</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
 
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
  
  <!-- 데이트 피커 -->
  <link rel="stylesheet" href="/views/datepicker/public/theme/css/t-datepicker.min.css">
  <link rel="stylesheet" href="/views/datepicker/public/theme/css/themes/t-datepicker-teal.css">
  
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3&libraries=places&callback=initAutocomplete&key=AIzaSyAfB2qQnvAuU2YFFqi8hrPWfjJNyxl5kWc" async defer></script>

    
<style>
   body{
      padding-top: 75px;
   }
   a{
      color:#5e7e9b;
   }
   .paging { list-style: none; }
   .paging li {
      float: left;
      margin-right: 30px;
   }
   .paging li a {
      text-decoration: none;
       display: block;
      padding: 3px 3px; 
      color: black;
   }

   .paging .disable {
      padding: 3px 3px;
      color: silver;
   }
   .paging .now {
      padding: 3px 3px;
      font-weight: bold;
   } 
   .rounded-circle { width: 80px; height: 70px;} 
   .card {float : left;}
   
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
	
	.pac-container {
    z-index: 1051 !important;
	}
	
	#inTable tr td {
		border: none;
	}
    
    #cardContent {
    display: inline-block;
    width: 200px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    
    white-space: normal;
    line-height: 1.2;
    height: 3.6em;
    text-align: center;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
	}
	
</style>
<script>
var placeSearch, autocomplete;
var placeSearch2, autocomplete2;
function initAutocomplete() {
  autocomplete = new google.maps.places.Autocomplete((document.getElementById('autocomplete')),{types: ['geocode']});
  autocomplete.addListener('place_changed', fillInAddress);
  
  autocomplete2 = new google.maps.places.Autocomplete((document.getElementById('autocomplete2')),{types: ['geocode']});
  autocomplete2.addListener('place_changed', fillInAddress);
}
function fillInAddress() { //lat 와 lng 값을 넘겨줄 input 태그에 값 넣어주기
   var place = autocomplete.getPlace();
   document.getElementById("lat").value=place.geometry.location.lat();
   document.getElementById("lng").value=place.geometry.location.lng();
   
   var place2 = autocomplete.getPlace();
   document.getElementById("lat2").value=place2.geometry.location.lat();
   document.getElementById("lng2").value=place2.geometry.location.lng();
}
</script>
<script>
function sendMessage(m_id){
   location.href="../insertTrevelersMessage.do?message_receiver="+m_id;
}

function insertTravelers(frm) {
	if (frm.t_country.value == "" || frm.t_country.value == null) {
		alert("방문하실 국가를 기입하세요.");
		frm.t_country.value = ""; 
		frm.t_country.focus();
	} else if (frm.t_startdate.value == "" || frm.t_startdate.value == null) {
		alert("입실일을 선택해주세요.");
		frm.t_startdate.value = ""; 
		frm.t_startdate.focus();
	} else if (frm.t_enddate.value == "" || frm.t_enddate.value == null) {
		alert("퇴실일을 선택해주세요");
		frm.t_enddate.value = ""; 
		frm.t_enddate.focus();
	} else if (frm.t_motive.value == "" || frm.t_motive.value == null) {
		alert("여행동기를 작성해주세요");
		frm.t_motive.value = ""; 
		frm.t_motive.focus();
	} else {
		var str = $("#form").serialize();
	     $.ajax({
	      async : true,
	      type : "POST",
	      dataType : "json",
	      data : str,
	      url : "../../checkTravelersJson.do",
	      success : function(data) {
	         if (data.cnt == 0) {
	      		frm.action = "../../insertTravelers.do";
	            frm.submit(); 
	          } else {
	       	  	frm.action = "../../updateTravelers.do";
	            frm.submit();
	         }
	      } 
	   });
	}
	
};

function deleteTravelers(m_id) {
	 var con_test = confirm("정말 삭제하시겠습니까?");
	   	if(con_test == true) {
	   		location.href="../deleteTravelers.do?m_id="+m_id;
	   	} else{
	   		return false;
	   	}	
}
</script>
<script>
$(document).ready(function(){
   $('.t-datepicker').tDatePicker({
     autoClose:true,
     durationArrowTop:200,
     limitDateRanges:16,
     numCalendar:2,
     limitNextMonth:2,
     titleCheckIn:'입실날짜',
     titleCheckOut:'퇴실날짜',
     titleDateRange:'일',
     titleDateRanges:'일',
     titleToday:'오늘',
     titleDays:['월','화','수','목','금','토','일'],
     titleMonths:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
     toDayShowTitle:true,
     dateRangesShowTitle:true,
     dateRangesHover:true,
     dateDisabled:[false]
   }).on('eventClickDay',function(e, dataDate){
     var getDateInput = $('.t-datepicker').tDatePicker('getDateInputs');
      document.getElementById("t_startdate").value = getDateInput[0];
      document.getElementById("t_enddate").value = getDateInput[1];
   });
   
   var str = $("#form").serialize();
   $.ajax({
       async : true,
       type : "POST",
       dataType : "json",
       data : str,
       url : "/checkTravelersJson.do",
       success : function(data) {
          if (data.cnt != 0) {
        	  $("#insertTravelersBtn").html('<strong>여행객 수정<strong>');
           } else {
        	   $("#insertTravelersBtn").html('<strong>여행객 등록</strong>');
           }
       } 
    });
});


$(function(){
	   $("#condition").change(function(){
	      var condition = $("#condition").val();
	      
	      if(condition == "find_advice") {
	         $("#autocomplete").removeAttr("name");
	         $("#autocomplete").hide();
	         $("<input type='text' id='advice' name='searchKeyword'>&nbsp;&nbsp;").insertBefore("#search");
	      } else {
	         $("#advice").remove();
	         $("#autocomplete").show();
	         $("#autocomplete").attr("name", "searchKeyword");
	      }
	   })
	   
	})
	
$(document).on("click", "#insertTravelersBtn", function(){
	if("${member.m_id}" == null || "${member.m_id}" == "") {
		alert("로그인이 필요한 서비스입니다.");
		location.href="/loginMember.do";
	}
});

function noticeMessage() {
   var noticeMessage = $("#noticeMessage").serialize();
   var receive_receiver =$("#receive_receiver").val();
    
      $.ajax({
      async : true,
      type : "POST",
      dataType : "json",
      data : noticeMessage,
      url : "../../noticeMessageJson.do",
      success : function(data) {
         if (data.cnt > 0) {
            $("#noticeMessageCount").append(data.cnt);
            $("#noticeMessageCount2").append(data.cnt);
            setInteval(function() {
               noticeMessage()
            }, 3000);
    
         }
      }
      
      
   });    
}


</script>
 
</head>

<body onload="noticeMessage()">

  <header id="header">
  <form id="noticeMessage" method="GET">
    <div class="container-fluid">
      <input type="hidden" id="receive_receiver" name="receive_receiver" value="${member.m_id }" />
      <div id="log" class="pull-left">
        <img src="views/img/happy.png" id="happy"><a href="../sub2.do" class="scrollto" id="mainLogo">&nbsp;Gukbong WorlD</a>        
      </div>
    </div>
  </form>
      
      <form action="../sub.do" method="post">
      <table class="border-none">
         <tr>
            <td id="td1">             
               <select id="condition" name="searchCondition">         
                  <option value="find_travler" selected="selected">여행자검색
                  <option value="find_host">호스트검색
                  <option value="find_event">이벤트검색
                  <option value="find_advice">현지정보검색
               </select>
               
               <input id="autocomplete" placeholder="" type="text" name="searchKeyword">
               
               <input class="field" id="lat" type="hidden" name="lat"/>
               <input class="field" id="lng" type="hidden" name="lng"/>              
               <!-- <input type="submit" id="search"> -->
               <input  style="width: 30px; height: 30px;"  TYPE="IMAGE" src="views/img/search.png" name="Submit" value="Submit" align="absmiddle" id="search">

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
            <li><a  href="../../myProfile.do" >마이 프로필</a></li> 
            <c:if test="${member.m_id eq 'admin' }">
            	<li><a href="/views/admin/testAdmin.jsp">관리자 페이지</a></li>
            </c:if>
            <li><a href="../../logoutMember.do">로그아웃</a></li>            
          </ul> 
        </li>
               
   		<li>    
          <span class="fa-layers fa-fw">
           <a href="../../getReceiveMessageList.do">
          <i class="far fa-envelope fa-2x"></i>
          <span class="fa-layers-counter" style="color:red;" id="noticeMessageCount"></span>
          </a>
         </span>
     	 </li>         
	</c:if>
	</ul> 	
</nav>               
<hr>
  </header>

 
    



   <!--==========================
      About Us Section
    ============================-->    
    
<section>
      <div class="container">
      	 <br>
         <img src="views/img/star.jpg" style="width: 40px; height: 40px;"><span style="font-size: 1.2em; font-weight: bold;">여행자 검색 게시판</span>         
         <h6><strong>요청하신 키워드에 관한 게시글 수 : ${countTravelers }</strong></h6>
         
         
         
         <br>
         <form method="post" name="frm">
         
         <table class="table">
         <c:choose>
            <c:when test="${empty travelersList}">
                  <tr>
                     <td><strong>요청하신 도시의 정보가 존재하지 않습니다.</strong></td>
                  </tr>
            </c:when>                    
            <c:otherwise>
            <c:forEach var="list" items="${travelersList}">
   
               <input type="hidden" name="m_id" value="${list.m_id }" id="m_id" />
               <span class="card" style="width:221px; height: 460px; margin : auto; text-align: center;">
                <img class="card-img-top" src="${list.p_route}" alt="Card image" style="width:100%; height: 210px;">
                <span class="card-body">
                  <h6 class="card-title"><strong>${list.m_id}</strong></h6>
                  <hr />
                  <div id="cardContent">
                  	<p class="card-text"><strong>${list.t_country}</strong></p>
                  </div>
                  <hr>
                  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#myModal${list.m_id }"><strong>여행자 상세보기</strong></button>
                </span> 
             </span>
            </c:forEach>
            </c:otherwise>           
         </c:choose>   
         <!-- ---------------------------------------------------------------- -->
         
         <tr>
         <td colspan="4">
            <ol class="paging">
            
            <%--[이전으로]에 대한 사용여부 처리 --%>
            <c:choose>
            <%-- 사용불가(disable) : 첫번째 블록인 경우 --%>
               <c:when test="${pvo.beginPage == 1 }">
                  <li class="disable">◀</li>
               </c:when>
            <%--사용가능(enable) : 두번째 이상(첫번째 아닌경우) --%>
               <c:otherwise>
                  <li>
                     <a href="../getLocalAdviceList2.do?cPage=${pvo.beginPage - 1 }">◀</a>
                  </li>
               </c:otherwise>   
            </c:choose>
            
            <%-- 블록내에 표시할 페이지 반복처리(시작페이지~끝페이지)--%>
            <c:forEach var="k" 
                  begin="${pvo.beginPage }" end="${pvo.endPage }">
            <c:choose>
               <c:when test="${k == pvo.nowPage }">
                  <li class="now">${k }</li>
               </c:when>
               <c:otherwise>
                  <li>
                     <a href="../getLocalAdviceList2.do?cPage=${k }">${k }</a>
                  </li>
               </c:otherwise>
            </c:choose>
            </c:forEach>
            
            <%--[다음으로]에 대한 사용여부 처리 --%>
            <c:choose>   
               <%--사용불가(disable) : endPage가 전체페이지수 보다 크거나 같으면 --%>
               <c:when test="${pvo.endPage >= pvo.totalPage }">
                  <li class="disable">▶</li>
               </c:when>
               <%--사용가능(enable) --%>
               <c:otherwise>
                  <li>
                     <a href="../getLocalAdviceList2.do?cPage=${pvo.endPage + 1 }">▶</a>
                  </li>
               </c:otherwise>
            </c:choose> 
               <li><button type="button" id="insertTravelersBtn" class="btn btn-outline-secondary" data-toggle="modal" data-target="#insertModal"><strong>여행객 등록</strong></button></li>
                     
            </ol>
         </td>
      </tr>
         
         <!-- ---------------------------------------------------------------- -->
         </table>
         </form>
         
      </div>
    </section><!-- #about -->

   

   
  <!--==========================
    Footer
  ============================-->
  <hr class="hr">
	<footer>
    	<br>   
        <div class="row">
        	<div class="col-lg-8 col-md-10 mx-auto">
        		<p class="text-primary text-center">© GUKBONG WORLD COMPANY. ALL RIGHTS RESERVED.</p>
        		<p class="copyright text-muted text-center">상호:국봉월드 &nbsp;| &nbsp; 사업자등록번호:123-456-78910[사업자정보확인]  &nbsp;| &nbsp; 대표:방국봉  &nbsp;| &nbsp; TEL:1544-1444 
             <br>FAX:031-123-1234  &nbsp;| &nbsp; 주소:비트캠프 신촌센터  &nbsp; |  &nbsp; E-mail:kz1234@naver.com </p>
		    <p style="font-size: 0.8em;" class="text-muted text-right">© 1999 - 2019 Couchsurfing International, Inc</p>
        	</div>	
        </div>
    <br> 
    </footer>	
  


  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  





<!-- The Modal -->
<c:forEach var="list" items="${travelersList }">

  <div class="modal fade" id="myModal${list.m_id }">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">&nbsp;&nbsp;<img src="views/img/profileIcon123.png" style="width: 50px; height: 50px;"> &nbsp;<strong>${list.m_id } 님의 Traveler profile</strong></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="padding-top: 0px;">
          <table class="table" id="inTable">
          	<tr class="text-center">
          		<td rowspan="8" width="40%;"><img class="rounded" style="width: 200px; height: 200px; margin-top: 50px;" src="${list.p_route }"></td>
          	</tr>
          	<tr class="text-center">
          		<td width="20%;" style="vertical-align: middle;"><strong>여행 목적지</strong></td>
          		<td width="80%;">${list.t_country}</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>입실일자</strong></td>
          		<td>${list.t_startdate}</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>퇴실일자</strong></td>
          		<td>${list.t_enddate}</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>방문인원</strong></td>
          		<td>${list.t_visits}명</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>취미</strong></td>
          		<td>${list.p_hobby }</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>직업</strong></td>
          		<td>${list.p_job}</td>
          	</tr>
          	<tr class="text-center">
          		<td style="vertical-align: middle;"><strong>사용언어</strong></td>
          		<td>${list.p_language}</td>
          	</tr>
          </table>
          <table class="table">
             <tr class="text-center" style="width: 40%;">
                <td width="30%;" style="text-align: center; vertical-align: middle;"><strong>사이트 방문목적</strong></td>
                <td colspan="2">${list.p_purpose }</td>
             </tr>
             <tr class="text-center">
                <td style="text-align: center; vertical-align: middle;"><strong>자기소개</strong></td>
                <td colspan="2">${list.p_aboutme }</td>
             </tr>
             <tr class="text-center">
                <td style="text-align: center; vertical-align: middle;"><strong>방문동기</strong></td>
                <td colspan="2">${list.t_motive }</td>
             </tr>
          </table>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
        <form name="frm">                                                           <!-- onclick="../insertMessage.do?message_receiver=${list.m_id}" -->
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal" onclick='sendMessage("${list.m_id}")'><strong>숙박제의</strong></button>
        </form>   
        <c:if test="${list.m_id eq member.m_id}">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal" onclick='deleteTravelers("${list.m_id}")'><strong>등록해제</strong></button>
        </c:if>
        </div>
        
      </div>
    </div>
  </div>
</c:forEach>






<div class="modal fade" id="insertModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">여행자 등록</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <div class="row">
            <div class="col-md-12">
              <form method="POST" id="form">
                    <div class="form-group row">
                         <label for="h_rule" class="col-4 col-form-label"><strong>여행 목적지</strong></label>
                         <div class="col-8" id="locationField">
                         	<input id="autocomplete2" type="text" class="form-control" name="t_country">
                         	<input class="field" id="lat2" type="hidden" class="form-control" name="lat"/>
                            <input class="field" id="lng2" type="hidden" class="form-control" name="lng"/>
                         </div>
                       </div>
                    
                    <input id="m_id" type="hidden" class="form-control" name="m_id" value="${member.m_id }">
                    <div class="form-group row">
                         <label for="h_startdate" class="col-4 col-form-label"><strong>입실/퇴실 날짜</strong></label> 
                         <div class="col-8">
                           <div class="t-datepicker">
							  <div class="t-check-in"></div>
							  <div class="t-check-out"></div>
							</div>
                         </div>
                         <input id="t_startdate" type="hidden" class="form-control" name="t_startdate" required data-eye> 
                         <input id="t_enddate" type="hidden" class="form-control" name="t_enddate" required data-eye> 
                       </div>
                    
                      <div class="form-group row">
                       <label for="h_maximumguest" class="col-4 col-form-label"><strong>방문자 수</strong></label> 
                       <div class="col-8">
                         <select class="form-control" id="t_visits" name="t_visits">
                            <option selected="selected">1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                                                          
                       </div>
                      </div>
                                          
                       <div class="form-group row">
                         <label for="h_rule" class="col-4 col-form-label"><strong>여행동기</strong></label> 
                         <div class="col-8">
                            <textarea rows="5" cols="10" id="t_motive" name="t_motive" class="form-control"></textarea>
                         </div>
                       </div>
                        
                              
                       <div class="modal-footer">
                           <div class="form-group m-0">
                        <button type="button" class="btn btn-outline-secondary" onclick="insertTravelers(this.form)"><strong>완료</strong></button>
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><strong>Close</strong></button>
                      </div>
                    </div>
                     </form>
               </div>
           </div>
        </div>

        
      </div>
    </div>
  </div>




<!-- JavaScript Libraries -->
  <script src="/views/lib/jquery/jquery.min.js"></script>
  <script src="/views/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/views/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/views/lib/easing/easing.min.js"></script>
  <script src="/views/lib/superfish/hoverIntent.js"></script>
  <script src="/views/lib/superfish/superfish.min.js"></script>
  <script src="/views/lib/wow/wow.min.js"></script>
  <script src="/views/lib/waypoints/waypoints.min.js"></script>
  <script src="/views/lib/counterup/counterup.min.js"></script>
  <script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/views/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="/views/lib/lightbox/js/lightbox.min.js"></script>
  <script src="/views/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/views/contactform/contactform.js"></script>
  <script src="/views/datepicker/public/theme/js/t-datepicker.min.js"></script>
  
  <!-- Template Main Javascript File -->
  <script src="/views/js/main.js"></script>
	
</body>
</html>