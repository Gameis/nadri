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
            
            <div id="areaPath">
                <div class="areaPathItem"><a href="#">홈</a></div>
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
	        <div id="popularLocation_name"><h1>pop_name</h1></div>
	    </div><!--popularLocation-->
	    
	    <div class="popularLocation-score-review-like">
	    	<div class="score-review-wrap">
	    		<span class="pop-score">
	    			<span class="pop-score-avg">avg_score</span>
	    			<span style="font-size:14px; padding:3px 0; color: #8592A6">/5</span>
	    		</span><!-- pop-score -->
	    		
	    		<span class="pop-review-reviewIcon">
	    			<a id="goReview" href="#" title="go to reviewform" style="text-decoration-line: none;">
		    			<div class="pop-review">
		    				total_review건의 리뷰
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
		    			<span class="more-btn"><a href="#">지도</a></span>
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
		
		<!-- 여기부터 추가정보 -->
		<div id="pop-details">
			<div class="module-item-left-right  moudule-item-border-bottom">
				<div class="ModuleBox-jljzy3-3 fsRVix">
					<h2 class="ModuleTitle-jljzy3-2 cGJQsx">추가정보</h2>
					<div class="TipAndFacility-hjdyeq-0 gVmnfv">
						<div class="two-box">
							<div class="Container-sc-1oj1ec9-0 bwjypL">
								<div class="burited_point">
									<h2 style="font-size: 20px; line-height: 30px; color: rgb(15, 41, 77);">소개</h2>
									<div class="detailInfo-content">
										"서울의 중심에 위치한 명동은 대형 백화점의 본점부터 보세 가게, 화장품 로드샵 등 다양한 상점들이 밀집된 쇼핑의 중심지이자, 다양한 길거리 음식을 파는 포차들이 가득한 서울의 번화가입니다.

										특히 이곳에 위치한 명동 교자와 명동 칼국수는 명동에서 꼭 먹어봐야 할 맛집으로, 특히 명동 교자는 미슐랭 빕 구르망에 선정된 식당이기도 합니다. 이 밖에도 설렁탕, 냉면집부터 뷔페, 이탈리안, 중식까지 모두 있답니다.

										명동에 방문한다면 우리나라에서 가장 오래된 가톨릭 성당인 명동 성당에 방문해보는 걸 추천해드려요. 조용한 성당을 산책하다 보면 어느새 마음이 편안해지는 걸 느낄 수 있답니다."		
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
//온로드부분
$(function(){
	
	//리뷰리스트 호출
	getReviewList();
	
	//리뷰카운팅수 호출
	getCountView();
	
	//메인이미지 호출
	getPopImg();
	
	//지도api호출
	getLocation();
	
	
});


function removeReviewList() {
	//review list 전체 삭제
		
		var list = document.getElementById("review-comment-detail");
		while(list.hasChildNodes()){
			list.removeChild(list.firstChild);
		}
	}

	function getCountView(){
		//평점,평점내용,긍정,부정,리뷰수 출력
		$.ajax({
			url: '/nadri/popular/getCountView',
			success: function(data){
				alert(JSON.stringify(data));

				var avg_score_content = null;
				const avg_score = parseFloat($.trim(data.avg_score));
				const total_negativeReview = parseFloat($.trim(data.total_negativeReview));
				const total_review = parseFloat($.trim(data.total_review));
				const total_positiveReview = parseFloat($.trim(data.total_positiveReview));
				const total_photo = parseFloat($.trim(data.total_photo));

				if(avg_score<=1){
					avg_score_content = '최악이에요';
				}else if(avg_score<=2){
					avg_score_content = '보통이에요';
				}else if(avg_score<=3){
					avg_score_content = '좋아요!';
				}else if(avg_score<=4){
					avg_score_content = '최고에요!';
				}else if(avg_score<=5){
					avg_score_content = '완벽해요!';
				}

				$('.pop-score .pop-score-avg').text(data.avg_score);
				$('.pop-review-reviewIcon div').text(data.total_review+'건의 리뷰');
				$('.switch-container .switch-sort .sort-get-score').text(data.avg_score);
				$('.switch-container .switch-sort .sort-get-catergory').text(avg_score_content);
				$('.switch-list-container .btn-group .btn-outline-primary:eq(0)').text('모두보기 ('+(total_review || 0)+')');
				$('.switch-list-container .btn-group .btn-outline-primary:eq(1)').text('긍정적 ('+(total_positiveReview || 0)+')');
				$('.switch-list-container .btn-group .btn-outline-primary:eq(2)').text('부정적 ('+(total_negativeReview || 0)+')');
				$('.switch-list-container .btn-group .btn-outline-primary:eq(3)').text('사진 ('+(total_photo || 0)+')');

			},error: function(err){
				console.log(err);
			}
		});
	}

	function getReviewList(){
		//리뷰리스트 출력
		
		//리스트삭제
		removeReviewList();
		
		$.ajax({
			url: '/nadri/popular/getReviewContent',
			type: 'post',
			success: function(data){
				alert(JSON.stringify(data));
				
				for(var i = 0; i < data.length; i++){
					var private_score_content = null;
					const private_score = parseFloat($.trim(data[i].review_score));
					var img_path = ($.trim(data[i].imgList[0].img_path));
					var image_name1='';
					var image_name2='';
					var image_name3='';
					var image_name4='';
					var image_name5='';
					var image_name6='';
					var image_name7='';
					var noImge = "noImg.jpg";
					
					//content내용 뽑기
					if(private_score<=1){
						private_score_content = '최악이에요';
					}else if(private_score<=2){
						private_score_content = '보통이에요';
					}else if(private_score<=3){
						private_score_content = '좋아요!';
					}else if(private_score<=4){
						private_score_content = '최고에요!';
					}else if(private_score<=5){
						private_score_content = '완벽해요!';
					}
					
					//img_name 빈값 정리

						if(data[i].imgList.length == 0){
							image_name1 = noImge;
							image_name2 = noImge;
							image_name3 = noImge;
							image_name4 = noImge;
							image_name5 = noImge;
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 1){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = noImge;
							image_name3 = noImge;
							image_name4 = noImge;
							image_name5 = noImge;
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 2){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = noImge;
							image_name4 = noImge;
							image_name5 = noImge;
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 3){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = $.trim(data[i].imgList[2].img_name);
							image_name4 = noImge;
							image_name5 = noImge;
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 4){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = $.trim(data[i].imgList[2].img_name);
							image_name4 = $.trim(data[i].imgList[3].img_name);
							image_name5 = noImge;
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 5){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = $.trim(data[i].imgList[2].img_name);
							image_name4 = $.trim(data[i].imgList[3].img_name);
							image_name5 = $.trim(data[i].imgList[4].img_name);
							image_name6 = noImge;
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 6){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = $.trim(data[i].imgList[2].img_name);
							image_name4 = $.trim(data[i].imgList[3].img_name);
							image_name5 = $.trim(data[i].imgList[4].img_name);
							image_name6 = $.trim(data[i].imgList[5].img_name);
							image_name7 = noImge;
						}
						
						if(data[i].imgList.length == 7){
							image_name1 = $.trim(data[i].imgList[0].img_name);
							image_name2 = $.trim(data[i].imgList[1].img_name);
							image_name3 = $.trim(data[i].imgList[2].img_name);
							image_name4 = $.trim(data[i].imgList[3].img_name);
							image_name5 = $.trim(data[i].imgList[4].img_name);
							image_name6 = $.trim(data[i].imgList[5].img_name);
							image_name7 = $.trim(data[i].imgList[6].img_name);
						}
					
					
					($('<li/>', {
						class: "reviewCommentDetail",
						id: "reviewCommentDetail",
						style: "border-top: 1px solid rgb(218, 223, 230)"
					}).append($('<div/>', {
						class: "review-user-view"
					}).append($('<a/>',{
						style:"color: rgb(15, 41, 77"
					}).append($('<img/>',{
						class: "review-user-img",
						alt: "user_icon",
						width: "50",
						heigth: "50",
						src: "https://cdn.pixabay.com/photo/2021/10/15/21/11/squid-game-6713440_1280.jpg"
					}))).append($('<div/>',{
						class:"review-user-info"
					}).append($('<div/>',{
						class:"review-user-name",
						text:data[i].user_name
					})))).append($('<div/>',{
						class: "review-content-detail"
					}).append($('<div/>',{
						class:"review-switch-sort"
					}).append($('<span/>',{
						class:"review-score",
						text:data[i].review_score
					})).append($('<span/>',{
						class:"review-all-score"
					})).append($('<span/>',{
						class:"review-score-name",
						text:private_score_content
					}))).append($('<div/>',{
						class:"review-content-view"
					}).append($('<p/>', {
						class:"review-content-text",
						text:data[i].review_content
					}))).append($('<div/>',{
						class:"review-content-photolist"
					}).append($('<div/>',{
						class:"review-content-photowall"
					}).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name1",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name1
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name2",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name2
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name3",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name3
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name4",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name4
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name5",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name5
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name6",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name6
					})).append($('<img/>',{
						alt:"review-content-photowall",
						id:"image_name7",
						src:"/nadri/repository/img/popular/"+img_path+"/"+image_name7
					})))).append($('<div/>',{
						class:"review-content-date"
					}).append($('<span/>',{
						class:"review-content-time"
					}).append($('<span/>',{
						text:"작성일 : "+data[i].review_logtime
					})))))).appendTo($('#review-comment-detail'));
					
					/* //비어있는 이미지 속성 바꾸기
					
					if(data[i].imgList.length == 0){
						$("#image_name1").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name2").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name3").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name4").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name5").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 1){
						
						$("#image_name2").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name3").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name4").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name5").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 2){
						
						$("#image_name3").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name4").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name5").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 3){
						
						$("#image_name4").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name5").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 4){
						
						$("#image_name5").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 5){
						
						$("#image_name6").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					}
					
					if(data[i].imgList.length == 6){
						
						$("#image_name7").attr("src", "/nadri/repository/img/popular/review/noImg.jpg");
					} */
				
				}

			}, error: function(err){
				console.log(err);
			}
		});
	}
	
	function getPopImg(){
		//메인이미지
		$.ajax({
			url: '/nadri/popular/getPopImg',
			type: 'post',
			data: 'pop_seq='+$('#pop_seq').val(),
			success: function(data){
				alert(JSON.stringify(data));
				
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
	}

	function getLocation(){
		//지도API
		$.ajax({
			url: '/nadri/popular/getLocation',
			type: 'get',
			data: 'pop_seq='+$('#pop_seq').val(),
			success: function(data){
				alert(JSON.stringify(data));
				
				$('#popularLocation_name h1').text(data.pop_name);
				$('.pop-businesstime .one-line .field').text(data.pop_businesstime);
				$('.pop-tourismtime .one-line .field').text(data.pop_tourismtime);
				$('.pop-address-map .one-line .field').text(data.address_name);
				$('.pop-call .one-line .field').text(data.pop_call);
				$('title').text(data.pop_name+'정보 및 후기 | 트립닷컴')
				
				
				//카카오맵 API
				var location1 = data.pop_name;
				const map_x = parseFloat($.trim(data.map_y));
				const map_y = parseFloat($.trim(data.map_x));
				
				$('.more-btn a').prop('src', 'https://map.kakao.com/link/map/'+location1+','+map_x+','+map_y+'');

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
	}
</script>
</body>
</html>