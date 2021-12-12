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
	<%-- <div class="trip_common_head_con">
		<jsp:include page="../main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div> --%>
	
	<input type="hidden" id="pop_seq" value="${param.pop_seq }"/>
	<input type="hidden" id="pageNum" value="1" />
	<input type="hidden" id="searchType" value="" />
	<input type="hidden" id="isDesc" value="" />
	<input type="hidden" id="member_seq" value="${member_seq }"/>
	<input type="hidden" id="memName" value="${memName }"/>
	<input type="hidden" id="memId" value="${memId }"/>
	
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
	    	
	    	
	    	<div class="favorite-wrap">
	    		<i class="fas fa-heart" style="margin:0; padding:3px 5px; color: rgb(206, 210, 217); vertical-align: center;"></i>
	    		
	    		<span class="favorite-count">
	    			좋아요 total_like개
	    		</span>
	    	</div>

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
					  	<div id="kakaoMap" style="width:100%;height:100%;"></div>
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
										detailInfo		
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
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/popular.js"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/popular_review.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff2d2d7e5f1af84f318ffb51614f637a&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="/nadri/repository/js/pop/jquery.bootpag.min.js"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript">
//온로드부분
$(function(){
	//지도api호출
	getLocation();
	
	//리뷰리스트 호출
	getReviewList();
	
	//리뷰카운팅수 호출
	getCountView();
	
	//메인이미지 호출
	getPopImg();
	
	//페이징 처리
    pagination();

	//유저정보 처리
	getUserInfo();

});

</script>
</body>
</html>