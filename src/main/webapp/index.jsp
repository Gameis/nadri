<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_top.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/tripmember/loginmodal.css">
<link href="/nadri/repository/img/main/trip.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./repository/css/main/main_con.css">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

</head>
<body>
	<input type="hidden" id="memId" value="${memId }"/>
	<!-- Header -->
	<%-- <div class="trip_common_head_con">
		<jsp:include page="./repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div> --%>
	
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
						<div class="btn btn-primary" data-bs-toggle="modal"
							data-bs-target="#loginmodal" id="loginBtn">
							<span class="login-Btn">로그인</span>&nbsp;&nbsp;/&nbsp;&nbsp;<span>회원가입</span>
						</div>
					</c:if>


					<c:if test="${memId != null }">
						<div>
							<p>
								<a href="/nadri/tripmember/myPage">${sessionScope.memName}님
									환영 합니다.</a>
							</p>
							<button id="logoutBtn" type="button">로그아웃</button>
						</div>
					</c:if>

				</div>

				<div class="trip_main_hd_nav"></div>
			</div>
		</div>
	</div>
</div>

<!-- Login Modal -->
<div class="modal fade" id="loginmodal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel"
					style="color: #8EC0E4;">trip.com</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<div class="modal-body">
			
				<form class="loginForm">
					<svg id="ryan" viewBox="0 0 120 120"
						xmlns="http://www.w3.org/2000/svg">
            <path d="M0,150 C0,65 120,65 120,150" fill="#e0a243"
							stroke="#000" stroke-width="2.5" />
            <g class="ears">
                <path d="M46,32 L46,30 C46,16 26,16 26,30 L26,32"
							fill="#e0a243" stroke="#000" stroke-width="2.5"
							stroke-linecap="round" transform="rotate(-10,38,24)" />
                <path d="M74,32 L74,30 C74,16 94,16 94,30 L94,32"
							fill="#e0a243" stroke="#000" stroke-width="2.5"
							stroke-linecap="round" transform="rotate(10,82,24)" />
            </g>
            <circle cx="60" cy="60" r="40" fill="#e0a243" stroke="#000"
							stroke-width="2.5" />
            <g class="eyes">
                <!-- left eye and eyebrow-->
                <line x1="37" x2="50" y1="46" y2="46" stroke="#000"
							stroke-width="3" stroke-linecap="round" />
                <circle cx="44" cy="55" r="3" fill="#000" />
                <!-- right eye and eyebrow -->
                <line x1="70" x2="83" y1="46" y2="46" stroke="#000"
							stroke-width="3" stroke-linecap="round" />
                <circle cx="76" cy="55" r="3" fill="#000" />
            </g>
            <g class="muzzle">
                <path
							d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71"
							fill="#fff" />
                <path
							d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71"
							fill="#fff" stroke="#000" stroke-width="2.5"
							stroke-linejoin="round" stroke-linecap="round" />
                <polygon points="59,63.5,60,63.4,61,63.5,60,65"
							fill="#000" stroke="#000" stroke-width="5"
							stroke-linejoin="round" />
            </g>
            <path
							d="M40,105 C10,140 110,140 80,105 L80,105 L70,111 L60,105 L50,111 L40,105"
							fill="#fff" />
        </svg>

					<div class="form-floating">
						<input type="text" class="form-control" id="floatingInput"
							name="floatingInput" placeholder="Identification"> <label
							for="floatingInput">Identification</label>
						<div id="modalidDiv"></div>
					</div>


					<div class="form-floating">
						<input type="password" class="form-control" id="floatingPassword"
							name="floatingPassword" placeholder="Password">
							<label for="floatingPassword">Password</label>
						<div id="modalpwdDiv"></div>
					</div>

					<!-- 카카오 -->

					<div>
	         		  <img onclick="kakaoLogin();" src="/nadri/repository/img/tripmember/kakao_login_large_wide.png" style="cursor: pointer;" width="270" height="45">
	     			 </div>
	     			 
					 <div><input type="button" id="modalLoginBtn" value="회원 계정 로그인"></div>
					 <div id="loginResult"></div>
				</form>
			</div>

			아직 회원가입을 하지 않으셨나요?
			<div class="modal-footer">
				<button class="btn btn-primary" data-bs-target="#agreementmodal"
					data-bs-toggle="modal">회원가입하기</button>
			</div>

		</div>
	</div>
</div>

<%-- 두번째 모달 약관신청--%>
<div class="modal fade" id="agreementmodal" aria-hidden="true"
	data-bs-backdrop="static" aria-labelledby="exampleModalToggleLabel2"
	tabindex="-1">
	<div
		class="modal-dialog modal-xl modal-dialog-scrollable modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalToggleLabel2"
					style="color: #8EC0E4;">약관신청</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<%--회원가입신청 --%>
			<div class="modal-body">
				<jsp:include page="/repository/jsp/main/main_top_loginmodal/agreement.jsp" />
			</div>


			<div class="modal-footer">
				<div class="login">
					<button class="btn btn-primary" data-bs-target="#loginmodal"
						data-bs-toggle="modal">로그인화면으로</button>
				</div>
				<div class="membership">
					<button class="btn btn-primary" data-bs-target="#membershipmodal"
						data-bs-toggle="modal" onclick='return false;'>회원가입으로</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%-- 세번째 모달 회원가입  --%>
<div class="modal fade" id="membershipmodal" aria-hidden="true"
	data-bs-backdrop="static" aria-labelledby="exampleModalToggleLabel3"
	tabindex="-1">
	<div
		class="modal-dialog modal-xl modal-dialog-scrollable modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalToggleLabel3"
					style="color: #8EC0E4;">회원가입</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<%--회원가입신청 --%>
			<div class="modal-body">
				<jsp:include page="/repository/jsp/main/main_top_loginmodal/writeForm.jsp">
					<jsp:param value="param2" name="param2" />
				</jsp:include>
			</div>

			<div class="login">
				<button class="btn btn-primary" data-bs-target="#agreementmodal"
					data-bs-toggle="modal">약관신청화면으로</button>
			</div>
		</div>
	</div>
</div>
	<!-- Header End -->

	<div class="trip_main_con">
		<div class="trip_main_index">
			<input type="hidden" id="page_id">
			<div class="trip_main_index_top">
				<div class="trip_main_search_con_wrap">
					<div class="trip_main_search_wrap">
						<!-- 검색란 이미지 -->
						<img alt="트립가이드검색"
							src="/nadri/repository/img/main/main_top_con.png"
							class="trip_main_index_search">
					</div>
				</div>
				<div class="index_top_title">
					<h1 class="homepage_Title">
						트립 가이드 <span class="homepage_Title_dot"></span>
					</h1>
				</div>
				<div class="con_search_contain">
					<div class="con_search_box">
						<div class="con_search_box_text_input" id="search">
							<input class="search_content search" id="searchInput"
								style="text-overflow: ellipsis;"
								placeholder="여행지, 명소, 호텔 등으로 검색" onkeyup="searchEnterkey()">
							<!-- 한줄라인 글자수 제한 / 양식에 안내문구 추가하기 -->
							<!-- <div class="dropdown-content" id="dropdown-content">
								<a href="#" id="dropdown-list-a"> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg> 서울
								</a> <a href="#" dropdown-list-a> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg> 제주
								</a> <a href="#" dropdown-list-a> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg>서귀포
								</a>
							</div> -->
						</div>
						<div class="con_search_button">
							<div class="con_search_button_icon" ></div>
						</div>
					</div>
				</div>
			</div>

			<!-- 매력 탐구 리스트 -->
			<div class="component-destinationrecommend burited_point">
				<div class="description">
					<img alt="서울" src="./repository/img/main/trip.png"> 
						<span class="span-destination">서울</span> 
						<span> 매력 탐구</span>
				</div>
				<a href="/nadri/main/area?main_seq=99">
					<div class="button">더 보기</div>
				</a>
			</div>

			<!-- 인기여행지 -->
			<span class="popular_trip_destination">인기여행지

				<button type="button" class="btn btn-primary plus" data-bs-toggle="modal"
					data-bs-target="#exampleModal" data-bs-whatever="@mdo">+
				</button>

				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="opacity:1;"> 
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">인기여행지 등록</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close">
								</button>
							</div>
							<div class="modal-body" id="mainWriteFormDiv">
								<form id="mainWriteForm">
									<input type="hidden" name="content_seq" id="content_seq" value="1" />
									<div class="mb-3">
										<label for="recipient-name" class="col-form-label">지역이름:</label>
										<input type="text" class="form-control" name="main_name">
									</div>
									<div class="mb-3">
										<label for="message-text" class="col-form-label">지역정보:</label>
										<input type="text"  class="form-control" name="main_info"></input>
									</div>
									<div class="mb-3">
										<label for="message-text" class="col-form-label">메인이미지:</label>
										<input type="file" class="form-control" name="main_img"></input>
									</div>
									<div class="mb-3">
										<label for="message-text" class="col-form-label">지역이미지:</label>
										<input type="file" class="form-control" name="areaMain_img"></input>
									</div>
									<div class="mb-3">
										<label for="message-text" class="col-form-label">이미지:</label>
										<input type="file" class="form-control" name="img[]" multiple></input>
									</div>
									<div class="mb-3">
										<label for="message-text" class="col-form-label">지도이미지:</label>
										<input type="file" class="form-control" name="map"></input>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary" id="mainWriteBtn">작성완료</button>
							</div>
						</div>
					</div>
				</div>
			</span>

			<div class="popular_trip_destination_index_content">
				<div class="popularcitylist">
					<div class="index_content_popular">
						<div class="index_popular-dest" id="index_popular-dest"
							style="z-index: 1; position: relative">

							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_seoul"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/seoul/Seoul_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/seoul/seoul_3.jpg" alt="서울"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="서울"
												href="/nadri/main/area?main_seq=99">서울</a>
										</p>
									</div>
								</div>
							</div>
							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_jeju"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/jeju/Jeju_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/jeju/jeju_2.jpg" alt="제주"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="제주" href="/nadri/main/area?main_seq=98">제주</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_gangneung"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/gangneung/Gangneung_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/gangneung/gangneung_3.jpg" alt="강릉"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="강릉" href="/nadri/main/area?main_seq=97">강릉</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_jeonju"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/jeonju/Jeonju_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/jeonju/jeonju_7.jpg"
											style="width: 100%; height: 100%;">
										<p class="img-wrap_title">
											<a class="title" title="전주" href="/nadri/main/area?main_seq=96">전주</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- tripmoment -->
				<div class="index_trip_moment_con"
					style="position: relative; background-color: #fff; max-width: 1160px; margin: 0px auto;">
					<h2 class="trip_moment_title">트립 모먼트</h2>
					<div class="release_btn_con">
						<div class="release_btn">
							<a type="button" onclick="writeTripmoment()"
								style="color: #fff;">포스팅하러 가기</a>
						</div>
					</div>
				</div>

				<!-- tripmoment slide -->
				<div class="tripmomentSlide">
					<div id="carousel_tripmoment_slide" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner" id="moment_carousel_inner"></div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carousel_tripmoment_slide" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carousel_tripmoment_slide" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
				<!-- tripmoment slide -->
			</div>
		</div>
		<!-- container 전체 -->

		<!-- footer -->
		<div id="wrap_foot">
			<footer>
				<jsp:include page="./repository/jsp/main/main_footer.jsp">
					<jsp:param value="param1" name="param1" />
				</jsp:include>
			</footer>
		</div>
</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="/nadri/repository/js/modal/modal.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
//로그인
$('#modalLoginBtn').click(function(){
	alert('로그인버튼은 눌려요');
	$('#modalidDiv').empty();
	$('#modalpwdDiv').empty();

	if($('#floatingInput').val()==''){
		$('#modalidDiv').html('아이디를 입력해주세요');
	}	
	else if($('#floatingPassword').val()==''){
		$('#modalpwdDiv').html('비밀번호를 입력해주세요');
	}	
	else{
		alert("로그인 버튼 클릭")
		$.ajax({
			url:'/nadri/tripmember/login',
			type: 'post',
		//	data:$('#loginForm').serialize(),
			
			data: {'id':$('#floatingInput').val(),
				   'pwd':$('#floatingPassword').val()},//{'id':$('#id').val()}
				
			success: function(data){
				//console.log(JSON.stringify(data));
				
				if(data=='ok'){
					//	alert('로그인에 성공하셨습니다');	
					location.href='/nadri/index.jsp';
				}else if(data=='fail'){
					$('#loginResult').text('로그인에 실패하셨습니다');
					$('#loginResult').css('color', 'red');
					$('#loginResult').css('font-size', '15pt');
					$('#loginResult').css('font-weight', 'bold');
				}	
				
			},		//success
			
			error: function(err){
				console.log(err);
				
			}
			
		});		//ajax
	} 		//else			
});		//click	


//로그아웃				
$('#logoutBtn').click(function(){
	$.ajax({
			url:'/nadri/tripmember/logOut',
			type: 'post',
						
		success: function(){
			alert('로그아웃 하셨습니다');	
			location.href='/nadri/index.jsp';
		},	//success
			
		error: function(err){
			console.log(err);			
		}	
			
	});	// ajax

});		//logOutBtn click			


//회원가입
$('#writeBtn').click(function(){
	// alert("연결?");
	$('#nameDiv').empty();
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	if($('#name').val()==''){
		$('#nameDiv').html('이름을 입력해주세요');
	
	}else if($('#id').val()==''){
		$('#idDiv').html('아이디를 입력해주세요');
			
	}else if($('#pwd').val()==''){
		$('#pwdDiv').html('비밀번호를 입력해주세요 ');
		
	}else if($('#pwd').val() != $('#repwd').val()){
		$('#repwdDiv').html('비밀번호가 다릅니다');
	
	}else{
		$.ajax({
			url:'/nadri/tripmember/write',
			type:'post',
			data:$('#writeForm').serialize(),

			success(){
				alert('회원가입이 완료되었습니다 ');
				location.href='/nadri/index.jsp';				
			},
			error(err){
				console.log(err);
			}
		});	//ajax
	}	//else	
});		//click


//아이디 중복체크
$('#id').focusout(function(){
	$('#idDiv').empty();

	if($('#id').val()==''){
		$('#idDiv').html('아이디를 입력해주세요');
	}else{
		$.ajax({
			url:"/nadri/tripmember/checkId",
			type:'post',
			data:'id='+$('#id').val(),	//json타입형식 {'id':$('#id').val()}

			dataType:'text',
			success:function(data){
				if(data=='exist'){
					$('#idDiv').text("사용이 불가능합니다");
				}else if(data=='non-exist'){
					$('#idDiv').text('사용이 가능합니다');
				}		
			},	
			error:function(err){
				console.log(err);
			}
		});		//ajax
	}		//else
});		//focusout



/*
//우편번호 체크
$('#zipcodeBtn').click(function(){
	window.open("/nadri/repository/jsp/tripmember/checkPost.jsp", "checkPost", "width=500 height=500 top=200 left=700");
});


//현재 새로운창이 떠있는상태
$('#checkPostSearchBtn').click(function(){
	$.ajax({
		url:'/nadri/tripmember/checkPostSearch',
		type:'post',		
		data:$('#checkPostForm').serialize(),
		dataType: 'json',
		
		success:function(data){
			//alert(JSON.stringify(data));
			
			$('#zipcodeTable tr:gt(2)').remove();
			$.each(data, function(index,items){
				var address = items.sido+'  '
							+items.sigungu+'  '
							+items.yubmyundong+'  '
							+items.ri+'  '
							+items.roadname+'  '
							+items.buildingname;	//마지막엔 ; 없어도 됨
							
			address = address.replace(/null/g,''); //null이라는것을 g 글로벌전체에서 찾아서 ''로 바꿔라				
			$('<tr/>').append($('<td/>',{
				align:'center',
				text:items.zipcode
			})).append($('<td/>',{
				colspan:3
			
				}).append($('<a/>',{	//td안에 a태그를 붙임
					href:'#',
					text:address,
					class:'addressA'
				
			}))).appendTo($('#zipcodeTable'));												
		});	//each
		
	
		$('.addressA').click(function(){
			$('#zipcode', opener.document).val($(this).parent().prev().text());
		
			$('#address', opener.document).val($(this).text());
			window.close();		//창만 닫힐뿐 제어권이 사라진게 아니다
			$('#addressDetail', opener.document).focus();
		});		// addressA click
	
			
		},	//success
		
		error:function(err){
			console.log(err);
		}	
			
	});		//ajax
});		//checkPostSearchBtn click

*/
//이메일 인증번호전송
var mailcode = "";
$("#mailcheckBtn").click(function(){
	$('#email1').empty();
	$('#email2').empty();

	if($('#email1').val()==''){
		$('#mailcheckDiv').html('메일주소를 입력해주세요');
	}	
	else if($('#email2').val()==''){
		$('#mailcheckDiv').html('메일주소를 입력해주세요');
	}	

	else{
	  	var email = $("#email1").val()+"@"+$("#email2").val(); //입력한 이메일
		console.log(email);
	   	$.ajax({
	        type:"GET",
	        url:"/nadri/tripmember/mailCheck?email=" + email,

	        
	           success:function(data){
	   	            alert("인증메일을 전송하였습니다");       
	          	 	console.log("data : " + data);
	             $("#mailcheck").attr("disabled",false);
	             $(".mail_check_input_box").attr("id", "mailcheck_true"); 
	              	mailcode = data;
	        	},	//success
	        	
	            error:function(err){
					console.log(err);
				}	   
	  });	//ajax
  }	//else
});	//click

/* 인증번호 비교 */
$("#mailcheck").blur(function(){		//포커스가 나갔을때

  var inputCode = $("#mailcheck").val();        // 사용자가 메일로 받은 입력코드    
  
  if(inputCode == mailcode){                            // 일치할 경우
     	$("#mailcheckDiv").html("메일인증되었습니다.");
 	} else {                                            // 일치하지 않을 경우
      $("#mailcheckDiv").html("인증번호를 다시 확인해주세요.");
	}


});//blur

</script>

<script>
List = [
	"명동",
    "종로2가사거리",
    "창경궁.서울대학교병원",
    "명륜3가.성대입구",
    "종로2가.삼일교",
    "혜화동로터리.여운형활동터",
    "서대문역사거리",
    "서울역사박물관.경희궁앞",
    "서울역사박물관.경희궁앞",
    "광화문",
    "광화문",
    "종로1가",
    "종로1가",
    "종로2가",
    "종로2가",
    "종로3가.탑골공원",
    "종로3가.탑골공원",
    "종로4가.종묘",
    "종로4가.종묘",
    "종로5가.광장시장",
    "종로5가.광장시장",
    "종로6가.동대문종합시장",
    "종로6가.동대문종합시장",
    "동대문역.흥인지문",
    "동대문(흥인지문)",
    "동묘앞",
    "동묘앞",
    "경기상고",
    "신교동",
    "경기상고",
    "경복고교",
    "청운중학교",
    "자하문고개.윤동주문학관",
    "자하문고개.윤동주문학관",
    "청운중학교",
    "경복고교",
    "통인시장종로구보건소",
    "통인시장종로구보건소",
    "효자동",
    "사직단.어린이도서관",
    "사직동주민센터",
    "경복궁역",
    "경복궁역",
    "경복궁",
    "KT광화문지사",
    "광화문",
    "서울역사박물관.경교장.강북삼성병원",
    "광화문.금호아시아나본관앞",
    "광화문",
    "세종문화회관",
    "서울지방경찰청.경복궁역",
    "사직단",
    "광화문광화문빌딩",
    "덕성여중고",
    "안국역.종로경찰서.인사동",
    "국민은행세검정지점",
    "세검정초등학교",
    "세검정.상명대",
    "상명대입구.석파랑",
    "하림각",
    "자하문터널입구.석파정",
    "부암동주민센터.무계원",
    "부암동주민센터.무계원",
    "자하문터널입구.석파정",
    "하림각",
    "상명대입구.세검정교회",
    "세검정.상명대",
    "세검정초등학교",
    "국민은행세검정지점",
    "승가사입구",
    "구기동현대빌라",
    "구기터널.삼성출판박물관",
    "구기터널.삼성출판박물관",
    "구기동",
    "구기동",
    "승가사입구",
    "갑을씨티텔앞",
    "평창파출소",
    "평창동주민센터",
    "일성아파트",
    "롯데아파트",
    "롯데아파트",
    "벽산평창힐스아파트",
    "예능교회",
    "서울예술고등학교.평창동주민센터",
    "화정박물관",
    "강북삼성병원",
    "독립문역.서대문형무소역사관",
    "서대문.서울시교육청",
    "서대문역사거리.적십자병원",
    "독립문",
    "창덕궁.서울돈화문국악당",
    "무교동",
    "청계1가.광교",
    "청계2가.수표교",
    "청계4가.세운교",
    "청계5가.광장시장",
    "원남동",
    "창덕궁.우리소리박물관",
    "안국역.종로경찰서.인사동",
    "조계사",
    // ... 10891개 데이터 생략
]

   $(function () {   //화면 로딩후 시작
      $("#searchInput").autocomplete({  //오토 컴플릿트 시작
         source: List,   // source는 data.js파일 내부의 List 배열
         focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌   
            return false;
         },
         minLength: 1,// 최소 글자수
         delay: 100,   //autocomplete 딜레이 시간(ms)
         //disabled: true, //자동완성 기능 끄기
      });
   });
   

   
</script>


<script type="text/javascript">
//검색
function searchEnterkey() {
    if (window.event.keyCode == 13) {
		
        if($('.search').val() != "") 
        $.ajax({
        	url: '/nadri/area/search',
        	type: 'get',
        	data: 'searchText=' + $('.search').val(),
        	success: function(data) {
        		if(data.content_seq == '2') location.href="/nadri/main/area?main_seq=" + data.seq;
        		else if(data.content_seq == '3') location.href="/nadri/area/popular?pop_seq=" + data.seq;
        		else if(data.content_seq == '5') location.href="/nadri/area/activity?activity_seq=" + data.seq;
        		else alert('검색어를 제대로 입력 해 주세요');
        	},
        	error: function(err) {
        		alert('실패');
        		console.log(err);
        	}
        });
    }
}
$('.con_search_button_icon').click(function(){
	if($('.search').val() != "") 
		$.ajax({
        	url: '/nadri/area/search',
        	type: 'get',
        	data: 'searchText=' + $('.search').val(),
        	success: function(data) {
        		if(data.content_seq == '2') location.href="/nadri/main/area?main_seq=" + data.seq;
        		else if(data.content_seq == '3') location.href="/nadri/area/popular?pop_seq=" + data.seq;
        		else if(data.content_seq == '5') location.href="/nadri/area/activity?activity_seq=" + data.seq;
        		else alert('검색어를 제대로 입력 해 주세요');
        	},
        	error: function(err) {
        		alert('실패');
        		console.log(err);
        	}
        });
});

</script>

<!-- video mouseover 시 재생 -->
<script type="text/javascript">
	var Video_module_seoul = document
			.getElementsByClassName('Video_module_seoul')[0]
	var video = document.getElementById('video')
	Video_module_seoul.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_seoul.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	var Video_module_jeju = document
			.getElementsByClassName('Video_module_jeju')[0]
	var video = document.getElementById('video')
	Video_module_jeju.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_jeju.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	var Video_module_gangneung = document
			.getElementsByClassName('Video_module_gangneung')[0]
	var video = document.getElementById('video')
	Video_module_gangneung.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_gangneung.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	var Video_module_jeonju = document
			.getElementsByClassName('Video_module_jeonju')[0]
	var video = document.getElementById('video')
	Video_module_jeonju.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_jeonju.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	$(function(){
		if($('#memId').val() == 'admin') {
			$('.plus').show();
		} else {
			$('.plus').hide();
		}		
		
		$.ajax({
			url : '/nadri/main/mainImgPrint',
			type : 'get',
			success : function(data) {
				
			$.each(data, function(index, items){	
				
				$('<div>', {
					class : "index_popular"
				}).append($('<div>', {
					class : 'DestinationStyle'
				}).append($('<div>', {
					class : 'img-wrap'
				}).append($('<a>', {
					title: '',
					href : ''
				}).append($('<img>', {
					alt : '',
					src : '/nadri/repository/img/' + items.img_path + '/' + items.img_name
				}))).append($('<p>', {
					class : "img-wrap_title"	
				}).append($('<a>', {
					class : "title",
					title : "",
					href : "",
					text : items.main_name
				}))))).appendTo($('#index_popular-dest'));
				
			})//each
				
			},
			error : function(err) {
				alert('???')
			}
		});
	});
</script>

<script type="text/javascript">
$(function() {
	$('#mainWriteBtn').click(function() {
		var formData = new FormData($('#mainWriteForm')[0]);
		$.ajax({
			url : '/nadri/main/mainWrite',
			type : 'post',
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			data : formData,
			success : function() {
				alert('성공');
				
			},
			error : function() {
				alert('데이터 어디갔나융? 당장 찾아오세용');
			}
		});
	});
});
</script>

<!-- Channel Plugin Scripts -->
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
		}
		var ch = function() {
			ch.c(arguments);
		};
		ch.q = [];
		ch.c = function(args) {
			ch.q.push(args);
		};
		w.ChannelIO = ch;
		function l() {
			if (w.ChannelIOInitialized) {
				return;
			}
			w.ChannelIOInitialized = true;
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
			s.charset = 'UTF-8';
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		}
		if (document.readyState === 'complete') {
			l();
		} else if (window.attachEvent) {
			window.attachEvent('onload', l);
		} else {
			window.addEventListener('DOMContentLoaded', l, false);
			window.addEventListener('load', l, false);
		}
	})();
	ChannelIO('boot', {
		"pluginKey" : "9b766493-8768-4235-bb05-b4f65bba982b"
	});
</script>

<script type="text/javascript">
function locationhref(moment_seq) {
	location.href="/nadri/tripmoment/tripmomentView?moment_seq=" + moment_seq 
	}
	
	$(function() {
		$.ajax({
			url : '/nadri/tripmoment/onTripmoment',
			type : 'get',
			success : function(data) {
					var count = -1;
			        var momentCount = 1;	

				$.each(data, function(index, items){
					if(index % 4 == 0) {

			            if(index == 0) {
			              $('<div/>', {
			                class: 'carousel-item active'
			              }).append($('<div/>', {
			                class: 'card-group'
			              })).appendTo($('#moment_carousel_inner'));
			            }else {
			              $('<div/>', {
			                class: 'carousel-item'
			              }).append($('<div/>', {
			                class: 'card-group'
			              })).appendTo($('#moment_carousel_inner'));
			            }            
			            count++;
			          }
					
					$('<div>', {
						class: 'cardstyle card index_card_con',
						onclick : 'locationhref('+ items.moment_seq + ')'
					}).append($('<div>', {
						style: 'padding-bottom: 106%', 
						class: 'slide_img'
					}).append($('<div>', {
						class: 'img'
					}).append($('<img>', {
						src: '/nadri/repository/img/' + items.img_path + '/' + items.img_name,
						class: 'card-img-top',
						alt: '트립1'
					})))).append($('<div>', {
						class: 'bottom_con'
					}).append($('<div>', {
						style: '-webkit-box-orient: vertical', 
						class: 'bottom_desc',
						text: items.moment_content
					})).append($('<div>', {
						class: 'bottom_user_left'
					}).append($('<i>', {
						class: 'bi bi-person-circle'
					})).append($('<span>', {
						text: items.nickname
					})))).appendTo($('#moment_carousel_inner .card-group:eq(' + count + ')'));
				})//each
			},
			error : function(err) {
				alert('실패')
			}
		});
	});
</script>

<script type="text/javascript">
/* $('#addAreaBtn').click(function() {
    window.open("/nadri/main/mainWriteForm", "mainWriteForm", "width=800, height=1200");
}); */

function writeTripmoment() {
	if($('#memId').val() != "") location.href="/nadri/tripmoment/tripmoment_writeForm"
	else $('#loginBtn').trigger("click");
}
</script>
<!-- -->

<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('bf7889b656c53c0f12c5609c9487518f'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response);
        	  kakao_account = response.kakao_account
        	  
        	  var id = response.id;
        	  
        	  $.ajax({
        		 url: '/nadri/main/kakaoLogin',
        		 type: 'post',
        		 data: 'memId=' + id
        	  });
        	  
        	  location.href='/nadri/index.jsp';
        	  
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</html>