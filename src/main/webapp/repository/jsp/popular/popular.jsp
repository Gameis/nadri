<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>트립닷컴</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/nadri/repository/css/popular/popular.css">
    <link rel="stylesheet" href="/nadri/repository/css/popular/popreview.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<!-- Header -->
	<div class="trip_common_head_con">
		<jsp:include page="../main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div>
	
	<input type="hidden" id="pop_seq" value="${param.pop_seq }"/>
	
    <div id="areaWrap" class="areaWrap">
        <div id="areaHeader" class="areaHeader">
            
            <div id="areaPath" class="areaPath">
	            <nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#">홈</a></li>
				    <li class="breadcrumb-item"><a href="#">서울</a></li>
				    <li class="breadcrumb-item active" aria-current="page">명동</li>
				  </ol>
				</nav>
                <!-- <div class="areaPathItem"><a href="#">홈</a></div>
                <div class="areaPathItem"><a href="#">트립 가이드</a></div>
                <div class="areaPathItem"><a href="#">아시아</a></div>
                <div class="areaPathItem"><a href="#">대한민국</a></div>
                <div class="areaPathItem"><a href="#">서울</a></div>
                <div class="areaPathItem"><a href="#">명동</a></div> -->
            </div><!--areaPath-->
            
            <div id="areaSearch" class="areaSearch">
                <div id="areaSearch_input">
                    <input type="text" placeholder="여행지, 명소, 호텔 등으로 검색">
                </div>
                <a href="#">
	                <div id="areaSearch_button">
		               	<i class="bi bi-search" style="width: 100%; text-align: center; color: rgb(206, 210, 217);"></i>
	                </div>
               	</a>
            </div><!--areaSearch-->
            
        </div><!--areaHeader-->
        
	    <div id="popularLocation" class="popularLocation">
	        <div id="popularLocation_name"><h1>pop_name</h1></div>
	    </div><!--popularLocation-->
	    
	    <div class="popularLocation-score-review-like">
	    	<div class="score-review-wrap">
	    		<span class="pop-score">
	    			<span>4.5</span>
	    			<span style="font-size:14px; padding:3px 0; color: #8592A6">/5</span>
	    		</span><!-- pop-score -->
	    		
	    		<span class="pop-review-reviewIcon">
	    			<a href="#" style="text-decoration-line: none;">
		    			<div class="pop-review">
		    				5,811건의 리뷰
		    			</div>
		    		</a>
		    		<a href="#">
		    			<i class="fas fa-caret-right" style="margin: 0; padding: 3px 0px; font-size: 18px; vertical-align: center;"></i>
	    			</a>
	    		</span><!-- pop-review-reviewIcon -->
	    	</div><!-- score-review-wrap -->
	    	
	    	<a href="#" style="text-decoration-line: none;">
		    	<div class="favorite-wrap">
		    		<i class="fas fa-heart" style="margin:0; padding:3px 5px; color: rgb(206, 210, 217); vertical-align: center;"></i>
		    		
		    		<span class="favorite-count">
		    			좋아요 446개
		    		</span>
		    	</div>
	    	</a>

	    </div><!-- popularLocation-score-review-like -->
	    
	    <div class="content-wrap">
		    <div class="pop-content-nav">
		    	<div class="pop-businesstime">
		    		<i class="bi bi-clock-fill"></i>
		    		<div class="one-line">
		    			<span class="open-status" style="color: #06AEBD">영업시간</span>
		    			<span class="field">pop_businesstime</span>
		    		</div><!-- businessTime -->
		    		<i class="bi bi-chevron-right"></i>
		    	</div><!-- pop-businesstime -->
		    	
		    	<div class="pop-tourismtime">
		    		<i class="bi bi-info-circle-fill"></i>
		    		<div class="one-line">
		    			<span class="pop-tourismTime">추천 관광시간 :</span>
		    			<span class="field">pop_tourismtime</span>
		    		</div>
		    	</div>
		    	
		    	<div class="pop-address-map">
		    		<div class="address">
		    			<i class="bi bi-geo-alt-fill"></i>
		    			<div class="one-line">
		    				<span class="title">주소 : </span>
		    				<span class="field">address_name</span>
		    			</div>
		    			<!-- <span class="more-btn"><a href="https://map.kakao.com/link/map/명동,33.450701,126.570667">지도</a></span> -->
		    		</div>
		    		<div class="map-box">
					    <div id="map" style="width:100%;height:100%;"></div>
		    		</div><!-- map-box -->
		    	</div><!-- pop-address-map -->
		    	
		    	<div class="pop-call">
		    		<i class="bi bi-telephone-fill"></i>
		    		<div class="one-line">
		    			<span class="title">전화번호</span>
		    			<span class="field">pop_call</span>
		    		</div>
		    	</div>
		    	
		    </div><!-- pop-content-nav -->
			    <div class="carouselWrap">
				    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
					  <div id="carousel-inner" class="carousel-inner">
					    <div class="carousel-item active">
					      <img id="carousel-item0"  src="#" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img id="carousel-item1" src="#" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img id="carousel-item2" src="#" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img id="carousel-item3" src="#" class="d-block w-100" alt="...">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
				   	
			   		<div id="container-pop" class="container">
					  	<div id="row-cols-4-pop" class="row row-cols-4">
			    			<img id="col-img0" class="col" src="#"></img>
						    <img id="col-img1" class="col" src="#"></img>
						    <img id="col-img2" class="col" src="#"></img>
						    <img id="col-img3" class="col" src="#"></img>
				  		</div><!-- row-cols-4 -->
				  		
					</div><!-- container -->
				</div><!-- carouselWrap -->
		    </div><!-- content-wrap -->
		    
		<!-- 여기부터 리뷰 -->
		<jsp:include page="./pop_review_writeForm.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div><!-- areaWrap -->
	
	<!-- footer -->
	<div id="wrap_foot">
		<footer>
			<jsp:include page="../main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>
	
	

<script src="https://kit.fontawesome.com/2536a17ab1.js" crossorigin="anonymous"></script><!-- font awesome -->       
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/popular.js"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/popular_review.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff2d2d7e5f1af84f318ffb51614f637a"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff2d2d7e5f1af84f318ffb51614f637a&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
//지도api
$(function(){

	$.ajax({
		url: '/nadri/popular/getPopImg',
		type: 'post',
		data: 'pop_seq='+$('#pop_seq').val(),
		success: function(data){
			alert(JSON.stringify(data));
			alert('이미지 성공해따')
			alert(data[0].img_name);
			
			//이미지 데이터 넣기
			$('#carousel-item0').prop('src', '/nadri/repository/img/' + data[0].img_path + '/popmain/' + data[0].img_name);
			$('#carousel-item1').prop('src', '/nadri/repository/img/' + data[1].img_path + '/popmain/' + data[1].img_name);
			$('#carousel-item2').prop('src', '/nadri/repository/img/' + data[2].img_path + '/popmain/' + data[2].img_name);
			$('#carousel-item3').prop('src', '/nadri/repository/img/' + data[3].img_path + '/popmain/' + data[3].img_name);
			
			$('#col-img0').prop('src', '/nadri/repository/img/' + data[0].img_path + '/popmain/' + data[0].img_name);
			$('#col-img1').prop('src', '/nadri/repository/img/' + data[1].img_path + '/popmain/' + data[1].img_name);
			$('#col-img2').prop('src', '/nadri/repository/img/' + data[2].img_path + '/popmain/' + data[2].img_name);
			$('#col-img3').prop('src', '/nadri/repository/img/' + data[3].img_path + '/popmain/' + data[3].img_name);
			
			//이미지 클릭시 보여주기
			$('.row-cols-4').find('#col-img0').click(function() {
				$('.active img').prop('src', '/nadri/repository/img/' + data[0].img_path + '/popmain/' + data[0].img_name);
			});
			$('.row-cols-4').find('#col-img1').click(function() {
				$('.active img').prop('src', '/nadri/repository/img/' + data[1].img_path + '/popmain/' + data[1].img_name);
			});
			$('.row-cols-4').find('#col-img2').click(function() {
				$('.active img').prop('src', '/nadri/repository/img/' + data[2].img_path + '/popmain/' + data[2].img_name);
			});
			$('.row-cols-4').find('#col-img3').click(function() {
				$('.active img').prop('src', '/nadri/repository/img/' + data[3].img_path + '/popmain/' + data[3].img_name);
			});


		},
		error: function(err){
			console.log(err);
			alert('이미지 ajax 실패했다')
		}
	});
	
	$.ajax({
		url: '/nadri/popular/getLocation',
		type: 'get',
		data: 'pop_seq='+$('#pop_seq').val(),
		success: function(data){
			alert(JSON.stringify(data));
			alert('성공햇다');
			
			$('#popularLocation_name h1').text(data.pop_name);
			$('.pop-businesstime .one-line .field').text(data.pop_businesstime);
			$('.pop-tourismtime .one-line .field').text(data.pop_tourismtime);
			$('.pop-address-map .one-line .field').text(data.address_name);
			$('.pop-call .one-line .field').text(data.pop_call);
			$('title').text(data.pop_name+'정보 및 후기 | 트립닷컴')
			
			
			//카카오맵 API
			var location1 = data.pop_name;
			var map_x = data.map_y;
			var map_y = data.map_x;
			

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
			    center: new kakao.maps.LatLng(map_x, map_y), // 지도의 중심좌표
			    level: 3 // 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption);

			//마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(map_x, map_y); 

			//마커를 생성합니다
			var marker = new kakao.maps.Marker({
			position: markerPosition
			});

			//마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			var iwContent = '<div style="padding:5px;">'+location1+' <br><a href="https://map.kakao.com/link/map/'+location1+','+map_x+','+map_y+'" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/'+location1+','+map_x+','+map_y+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			iwPosition = new kakao.maps.LatLng(map_x, map_y); //인포윈도우 표시 위치입니다
			iwRemoveable = true;


			//인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
			position : iwPosition, 
			content : iwContent,
			removable : iwRemoveable
			});

			// 마커에 클릭이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'click', function() {
			      // 마커 위에 인포윈도우를 표시합니다
			      infowindow.open(map, marker);  
			});
			
		},error: function(err){
			console.log(err);
			alert('실패했따');
		}
	});
			
});

</script>
</body>
</html>