<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<link rel="stylesheet" type="text/css" href="/nadri/repository/css/tripmember/loginmodal.css">
</head>

<body>
	<div class="trip_main_hd_top_nav">
		<div class="main_hd trip_main_hd main_hd_line">
			<div class="main_hd_inner main_hd_newline">
				<div class="main_hd_flex">
					<div class="trip_main_hd_logo">
						<a class="trip" href="#">trip.com</a>
					</div>


					<div class="main_hd_account main_hd_dropdown trip_main_hd_no_login">
					
					 <c:if test="${memId == null}">
						<!-- Login Button trigger modal -->
						<div class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginmodal">
							<span>로그인</span>/<span>회원가입</span>	
							   
							
						</div>
						   <div onclick="kakaoLogin();">
      								  <a href="javascript:void(0)">
            						<span>카카오 로그인</span>
      								  </a>
    							  </div>
					</c:if> 
					
					
					<c:if test="${memId != null }">
						<div>
							<p><a href="/nadri/tripmember/myPage">${sessionScope.memName}님 환영 합니다.</a></p>
						</div>
						<div class="logout_wrap"><button id="logoutBtn" type="button">로그아웃</button>
						</div>
						 <div class="clearfix"></div>
					</c:if>
			
			
			
					
					<c:if test="${userId != null }">
						<div>
							<form name="logout" action="http://localhost:8080/logout"></form>
						</div>	
					</c:if>					 	
						
					</div>
					
					<div class="trip_main_hd_nav"></div>
				</div>
			</div>
		</div>
	</div>
	
<!-- Login Modal -->
<div class="modal fade" id="loginmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel" style="color:#8EC0E4;">trip.com</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
 		<form class="loginForm">
        <svg id="ryan" viewBox="0 0 120 120" xmlns="http://www.w3.org/2000/svg">
            <path d="M0,150 C0,65 120,65 120,150" fill="#e0a243" stroke="#000" stroke-width="2.5" />
            <g class="ears">
                <path d="M46,32 L46,30 C46,16 26,16 26,30 L26,32" fill="#e0a243" stroke="#000" stroke-width="2.5" stroke-linecap="round" transform="rotate(-10,38,24)" />
                <path d="M74,32 L74,30 C74,16 94,16 94,30 L94,32" fill="#e0a243" stroke="#000" stroke-width="2.5" stroke-linecap="round" transform="rotate(10,82,24)" />
            </g>
            <circle cx="60" cy="60" r="40" fill="#e0a243" stroke="#000" stroke-width="2.5" />
            <g class="eyes">
                <!-- left eye and eyebrow-->
                <line x1="37" x2="50" y1="46" y2="46" stroke="#000" stroke-width="3" stroke-linecap="round" />
                <circle cx="44" cy="55" r="3" fill="#000" />
                <!-- right eye and eyebrow -->
                <line x1="70" x2="83" y1="46" y2="46" stroke="#000" stroke-width="3" stroke-linecap="round" />
                <circle cx="76" cy="55" r="3" fill="#000" />
            </g>
            <g class="muzzle">
                <path d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71" fill="#fff" />
                <path d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71" fill="#fff" stroke="#000" stroke-width="2.5" stroke-linejoin="round" stroke-linecap="round" />
                <polygon points="59,63.5,60,63.4,61,63.5,60,65" fill="#000" stroke="#000" stroke-width="5" stroke-linejoin="round" />
            </g>
            <path d="M40,105 C10,140 110,140 80,105 L80,105 L70,111 L60,105 L50,111 L40,105" fill="#fff" />
        </svg>
	   
	    	<div  class="form-floating">
		      <input type="text" class="form-control" id="floatingInput" name="floatingInput" placeholder="Identification">
		      <label for="floatingInput">Identification</label>
		      <div id="modalidDiv"></div>
		    </div>
	
		    
		    <div  class="form-floating">
		      <input type="password" class="form-control" id="floatingPassword" name="floatingPassword" placeholder="Password">
		      <label for="floatingPassword">Password</label>
		      <div id="modalpwdDiv"></div>
		    </div>  
		
		
		 <!-- 카카오 로그인 -->   
		<%--		
		<c:if test="${userId == null }">
			<div>
				<a href="https//kauth.kakao.com/oauth/authorize?client_id=6bde2e207382dc69b55b2008c9cb7172&redirect_uri=http://localhost:8080/login&response_type=code">
					<img src="/nadri/repository/img/tripmember/kakao_login_large_wide.png" style="cursor: pointer;" width="270" height="45">
				</a>
			</div>
		</c:if>
 		 --%>	 
 		 
	      <div>
	           <img onclick="kakaoLogin();" src="/nadri/repository/img/tripmember/kakao_login_large_wide.png" style="cursor: pointer;" width="270" height="45">
	      </div>

 		 
			 <div><input type="button" id="loginBtn" value="회원 계정 로그인"></div>
			 <div id="loginResult"></div>
   		 </form>
 		 </div>   
	

아직 회원가입을 하지 않으셨나요?
	<div class="modal-footer">
		<button id="tripmemberBtn" class="btn btn-primary" data-bs-target="#agreementmodal" data-bs-toggle="modal">회원가입하기</button>
    </div>
    
    </div>
  </div>
</div>

<%-- 두번째 모달 약관신청--%>
<div class="modal fade" id="agreementmodal" aria-hidden="true" data-bs-backdrop="static" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-xl modal-dialog-scrollable modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel2" style="color:#8EC0E4;">trip.com 약관신청</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <%--회원가입신청 --%>
      <div class="modal-body">
      	<jsp:include page="main_top_loginmodal/agreement.jsp" />	
      </div>
         
      <div class="modal-footer">
        <div class="login"><button class="btn btn-primary" data-bs-target="#loginmodal" data-bs-toggle="modal">로그인화면으로</button></div>
        <div class="membership"><button id="membershipmodalBtn" class="btn btn-primary" data-bs-target="#membershipmodal" data-bs-toggle="modal" onclick='return false;' disabled="disabled">회원가입으로</button></div> 
      </div>
        
    </div>
  </div>
</div>

<%-- 세번째 모달 회원가입  --%>
<div class="modal fade" id="membershipmodal" aria-hidden="true" data-bs-backdrop="static" aria-labelledby="exampleModalToggleLabel3" tabindex="-1">
  <div class="modal-dialog modal-xl modal-dialog-scrollable modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel3" style="color:#8EC0E4;">trip.com 회원가입</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <%--회원가입신청 --%>
      <div class="modal-body">
      		<jsp:include page="main_top_loginmodal/writeForm.jsp" />	
      </div>
      
      <div class="login">
        <button class="btn btn-primary" data-bs-target="#agreementmodal" data-bs-toggle="modal">약관신청화면으로</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('3e185ce5fc211a923e30507eac3d2f59'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
function kakaoLogin() {

   window.Kakao.Auth.login({
       scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
       success: function(response) {
           console.log(response) // 로그인 성공하면 받아오는 데이터
           window.Kakao.API.request({ // 사용자 정보 가져오기 
               url: '/v2/user/me',
               success: (res) => {
                   const kakao_account = res.kakao_account;
                   const properties = res.properties;
                   console.log(kakao_account)
                   console.log(res)
                   
                   //---------------------------------
                   
                   $.ajax({
                  type: 'post',
                  url: '/nadri/tripmember/checkId',
                  data: 'id='+res.id,
                  dataType: 'text',
                  success: function(data){
                     if(data == 'exist'){
                        $.ajax({
                           type : 'post',
                           url: '/nadri/tripmember/login',
                           data: {
                              'id': res.id,
                              'pwd': res.id		//이부분 이해못함
                           },
                           dataType: 'text',
                           success: function(data){
                              if(data == 'success'){
                                 location.href = '/nadri/index.jsp';
                              }else{
                                 alert('로그인 실패');
                              }
                           },
                           error: function(err){
                              console.log(err);
                           }
                        });
                        
                     }else if(data == 'non_exist'){
                        
                        $.ajax({
                           type: 'post',
                           url: '/nadri/tripmember/write',
                           data: {
                              'name': properties.nickname,
                              'id': res.id,
                              'pwd': res.id,      //이부분이해못함                     
                              'email': kakao_account.email
                           },
                           success: function(){
                              alert('회원가입을 축하합니다');
                              location.href = '/nadri/index.jsp';
                           },
                           error: function(err){
                              console.log(err);
                           }
                        });		//ajax
                        
                     }
                     
                  },
                  error: function(err){
                     console.log(err);
                  }
               });	//	바깥쪽 ajax
                                   
                   /*
                   $.ajax({
                  type : 'post',
                  url: '/JAVACOMICS/toonmember/login',
                  data: {
                     'id': res.id,
                     'pwd': res.id
                  },
                  dataType: 'text',
                  success: function(data){
                     if(data == 'success'){
                        location.href = '/JAVACOMICS/index.jsp';
                     }else{
                        alert('로그인 실패');
                     }
                  },
                  error: function(err){
                     console.log(err);
                  }
               });
                   */
                   //---------------------------------
               }
           });
           //window.location.href='/JAVACOMICS/toonmember/kakaoLogin' //리다이렉트 되는 코드
           
       },	//success
       
       fail: function(error) {
           console.log(error);
       }
       
   });
  
}
 
</script> 
 
<%-- 
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <script>
  //카카오로그인
  function kakaoLogin() {

    $.ajax({
        url: '/nadri/login/getKakaoAuthUrl',
        type: 'get',
        async: false,
        dataType: 'text',
        success: function (res) {
            location.href = res;
        }
    });

  }

  $(document).ready(function() {

      var kakaoInfo = '${kakaoInfo}';

      if(kakaoInfo != ""){
          var data = JSON.parse(kakaoInfo);

          alert("카카오로그인 성공 \n accessToken : " + data['accessToken']);
          alert(
          "user : \n" + "email : "
          + data['email']  
          + "\n nickname : " 
          + data['nickname']);
      }
  });  

  </script>
--%>


</body>
</html>

