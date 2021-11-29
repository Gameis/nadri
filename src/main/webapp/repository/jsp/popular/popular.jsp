<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/nadri/repository/css/popular/popular.css">
    <script src="https://kit.fontawesome.com/2536a17ab1.js" crossorigin="anonymous"></script><!-- font awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div id="areaWrap" class="areaWrap">
        <div id="areaHeader" class="areaHeader">
            
            <div id="areaPath" class="areaPath">
                <div class="areaPathItem"><a href="#">홈</a></div>
                <div class="areaPathItem"><a href="#">트립 가이드</a></div>
                <div class="areaPathItem"><a href="#">아시아</a></div>
                <div class="areaPathItem"><a href="#">대한민국</a></div>
                <div class="areaPathItem"><a href="#">서울</a></div>
                <div class="areaPathItem"><a href="#">명동</a></div>
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
	        <div id="popularLocation_name"><h1>명동</h1></div>
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
		    			<span class="open-status" style="color: #06AEBD">영업중</span>
		    			<span class="field">연중무휴</span>
		    		</div><!-- businessTime -->
		    		<i class="bi bi-chevron-right"></i>
		    	</div><!-- pop-businesstime -->
		    	
		    	<div class="pop-tourismtime">
		    		<i class="bi bi-info-circle-fill"></i>
		    		<div class="one-line">
		    			<span class="pop-tourismTime">추천 관광시간 :</span>
		    			<span class="field">3~4시간</span>
		    		</div>
		    	</div>
		    	
		    	<div class="pop-address-map">
		    		<div class="address">
		    			<i class="bi bi-geo-alt-fill"></i>
		    			<div class="one-line">
		    				<span class="title">주소 : </span>
		    				<span class="field">서울 중구 명동</span>
		    			</div>
		    			<span class="more-btn"><a href="https://map.kakao.com/link/map/명동,33.450701,126.570667">지도</a></span>
		    		</div>
		    		<div class="map-box">
		    			<!-- <div class="detail-map" style="background-image: url(https://ak-d.tripcdn.com/images/0zv64223458xjhrup336F.jpg);
												    position: relative;
												    height: 100%;
												    overflow: hidden;
												    background-size: cover;
												    background-repeat: no-repeat;
												    background-position: center center;
												    border-radius: 2px;">						    
					    </div>detail-map -->
					    <div id="map" style="width:100%;height:100%;"></div>
		    		</div><!-- map-box -->
		    	</div><!-- pop-address-map -->
		    	
		    	<div class="pop-call">
		    		<i class="bi bi-telephone-fill"></i>
		    		<div class="one-line">
		    			<span class="title">전화번호</span>
		    			<span class="field">+82-2-120</span>
		    		</div>
		    	</div>
		    	
		    </div><!-- pop-content-nav -->
			    <div class="carouselWrap">
				    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="https://youimg1.tripcdn.com/target/100s1f000001gx70tD814_C_640_470.jpg_.webp?proc=source%2ftrip" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="https://youimg1.tripcdn.com/target/fd/tg/g3/M01/83/94/CggYGVXNv0KAUby6AAi8ubLd568706_C_640_470.jpg_.webp?proc=source%2ftrip" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="https://youimg1.tripcdn.com/target/fd/tg/g4/M0B/85/21/CggYHlXNv0uAe0xFAAr3ntqKZYk621_C_640_470.jpg_.webp?proc=source%2ftrip" class="d-block w-100" alt="...">
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
			   	 
				   	
			   		<div class="container">
					  	<div class="row row-cols-4">
			    			<img class="col" src="https://youimg1.tripcdn.com/target/fd/tg/g3/M01/83/94/CggYGVXNv0KAUby6AAi8ubLd568706_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
						    <img class="col" src="https://youimg1.tripcdn.com/target/fd/tg/g4/M0B/85/21/CggYHlXNv0uAe0xFAAr3ntqKZYk621_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
						    <img class="col" src="https://youimg1.tripcdn.com/target/10050z000000nf6sl9C57_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
						    <img class="col" src="https://youimg1.tripcdn.com/target/100s1f000001gx70tD814_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
				  		</div><!-- row-cols-4 -->
				  		
					</div><!-- container -->
				</div><!-- carouselWrap -->
		    </div><!-- content-wrap -->
		    
		<!-- 여기부터 리뷰 -->
		<jsp:include page="./pop_review_writeForm.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div><!-- areaWrap -->
	
	
	
        
        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff2d2d7e5f1af84f318ffb51614f637a"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/popular.js"></script>
<script type="text/javascript">
	var location_name = '서울';
	var x = 37.4923661;
	var y = 127.0292978;
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(x, y); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	position: markerPosition
	});
	
	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	var iwContent = '<div style="padding:5px;">'+location_name+' <br><a href="https://map.kakao.com/link/map/'+location_name+','+x+','+y+'" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/'+location_name+','+x+','+y+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다
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
	
	
</script>
</body>
</html>