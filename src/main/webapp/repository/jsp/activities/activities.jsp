<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/nadri/repository/css/main/main_top.css">
<link rel="stylesheet" type="text/css"
	href="/nadri/repository/css/activities/activities.css">
</head>
<body>
	<!-- 머리 -->
	<div class="trip_common_head_con">
		<jsp:include page="/repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div>

	<!-- 몸통 -->
	<div class="productdetail-container">

		<!-- 눈썹 -->
		<div class="product-detail-breadcrumbs">
			<div class="crumbs-wrap ">
				<div class="crumbs-item">
					<a href="#">홈</a> 
					<span class="crumbs-separator">&gt;</span>
				</div>
				<div class="crumbs-item">
					<a href="#">서울 액티비티</a> 
					<span class="#">&gt;</span>
				</div>
				<div class="crumbs-item">
					<a href="#">검색 결과</a> 
					<span class="crumbs-separator">&gt;</span>
				</div>
				<div class="crumbs-item">
					<span>서울 N서울타워 전망대 입장권</span>
				</div>
			</div>
		</div>
		
		<div style="display: none;"></div>

		<!-- 얼굴 -->
		<header	class="detail-header-container productdetail-common-inner-width">
			<section class="flex title fjc-sb">
				<h1 class="productName ffps">서울 N서울타워 전망대 입장권</h1>
				<p class="ffpr c6 fs2">상품번호: 36756741</p>
			</section>

			<div class="comment-height">
				<div class="comment-sold">
					<section>
						<span class="comment-score"> <em class="good-comment">3.3</em>
							/5
						</span> <span class="comment-count">리뷰 3개</span>
					</section>
				</div>
				<div class="collectio default-collection">
					<div class="collection-img"></div>
					<div class="collection-trps">즐겨찾기</div>
				</div>
			</div>

			<section id="imageContainer" class="flex imageContainer">
				<div class="imgBox productdetail-common-width svg-default-img">
					<a title="서울 N서울타워 전망대 입장권" href="#"> 
					<img alt="서울 N서울타워 전망대 입장권" class="imgClass" src="https://ak-d.tripcdn.com/images/100t0y000000lnt6n0666_C_1136_640_Q60.jpg?proc=source/trip;namelogo/d_40"
					data-src="https://ak-d.tripcdn.com/images/100t0y000000lnt6n0666_C_1136_640_Q60.jpg?proc=source/trip;namelogo/d_40">
					</a>
				</div>

				<section class="bookLayer-container flex fd-c">
					<div class="bookLayer-inner">
						<div class="m-footer">
							<div class="m-footer-box">
								<div class="m-footer-layer-header"></div>
								<div class="m-footer-layer-body">
									<div class="m-footer-info">최저가</div>
										<div class="m-footer-flex">
											<div class="u-price">
												<span class="u-price-content"> 
												<span class="u-price-number">8,800</span> 
												<span class="u-price-currency">원</span>
												</span>
											</div>
	
											<div class="u-price">
												<span class="u-price-content u-price-content-lineThrough">
													<span class="u-price-number">11,800</span> 
													<span class="u-price-currency">원</span>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div class="m-footer-bottom">
									<div class="m-fotter-bottom-btn">예약하기</div>
								</div>
							</div>
						</div>
					</section>
				</section>
			</header>












	</div>







	<!-- 발 -->
	<div id="wrap_foot">
		<footer>
			<jsp:include page="/repository/jsp/main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>

</body>
</html>