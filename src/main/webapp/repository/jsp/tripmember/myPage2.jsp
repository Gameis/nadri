<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link rel="stylesheet" type="text/css"
	href="/nadri/repository/css/main/main_top.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="/nadri/repository/css/tripmember/loginmodal.css">

<link href="/nadri/repository/img/main/trip.ico" rel="shortcut icon"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="./repository/css/main/main_con.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Custom styles for this template -->
<link href="/nadri/repository/css/tripmember/myPage.css" rel="stylesheet">
 
</head>
<body>
	<!-- Header -->
	<div>
		<div class="trip_common_head_con">
			<jsp:include page="../main/main_top.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</div>
	</div>
	
	
	<div class="trip_main_con">
		<div class="trip_main_index">
	
	
<main>
	<aside id="left-sidebar">
	  <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
	  
	    <a href="/nadri/index.jsp" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
	      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
	      <span class="fs-5 fw-semibold">트립닷컴 회원</span>
	    </a>
	    <ul class="list-unstyled ps-0">
	    
	 	      <li class="mb-1">
		        <button class="btn btn-toggle" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
		          My 정보
		        </button>
		            
		               
		        <div class="collapse show" id="home-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		  
		  		<!--      
		         	<li><a href="#" id="memberInfo" class="link-dark rounded">개인정보확인</a></li>	  		  
		    	  --> 
		            
		          	<li><a href="/nadri/tripmember/getTripmember" class="link-dark rounded">개인정보확인</a></li>
		            	           	           
<!-- 		            <li><a href="/nadri/tripmember/tripWrite" class="link-dark rounded">작성글관리</a></li>
 -->		          
 					<li><a href="/nadri/tripmember/modifyForm" class="link-dark rounded">회원정보수정</a></li>
		            <li><a href="/nadri/tripmember/deleteForm" class="link-dark rounded">회원탈퇴</a></li>        
		            <li><a href="#" class="link-dark rounded">알림설정</a></li>         
		          </ul>
		        </div>
		        
		      </li>
				
		      <li class="mb-1">
		        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
		          My 포인트
		        </button>
		        <div class="collapse" id="orders-collapse">
		          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
		            <li><a href="#" class="link-dark rounded">내등급확인</a></li>
		            <li><a href="#" class="link-dark rounded">전체등급확인</a></li>
		            <li><a href="#" class="link-dark rounded">등급별해택</a></li>
		            <li><a href="#" class="link-dark rounded">사용내역</a></li>
		          </ul>
		        </div>
		      </li>
	    </ul>
	  </div>
	</aside>
	
  <div class="b-example-divider"></div>
  

  	<section id="contents">
<%--   	
  		<c:if test="${empty display }">
			<jsp:include page="/nadri/repository/jsp/member/body/mainbody.jsp"/>
  		</c:if>
  		
   --%>
   
  		<c:if test="${not empty display }">
  			<jsp:include page="${display }"/>
  		</c:if>
  	
  	</section>

  <aside id="right-sidebar">
  광고하실분 구합니다
  </aside>
  
 </main> 	
		
		
		</div>
	</div>
	<!-- container 전체 -->

	<!-- footer -->
	<div id="wrap_foot">
		<footer>
			<jsp:include page="../main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/nadri/repository/js/tripmember/myPage.js"></script>

</body>
</html>