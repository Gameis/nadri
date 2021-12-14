<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 
    <!-- Custom styles for this template -->
<link href="/nadri/repository/css/tripmember/myPage.css" rel="stylesheet">
  </head>
<body>


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