<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_top.css">
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/activities/activities.css">
</head>
<body>
<!-- 이마 -->
	<div class="trip_common_head_con">
		<jsp:include page="/repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div>
	
<!-- 눈 부터 무릎 전까지 -->
<div class="productdetail_container">

	<!-- 눈썹 -->
	<div class="product_detail_breadcrumbs">
		<div class="crumbs_wrap">
			<div class="crumbs_item">
				<a href="#">홈</a>
				<span class="crumbs_separator">></span>
			</div>
			
			<div class="crumbs_item">
				<a href="#">서울 액티비티</a>
				<span class="crumbs_separator">></span>
			</div>
			
			<div class="crumbs_item">
				<a href="#">검색 결과</a>
				<span class="crumbs_separator">></span>
			</div>
			
			<div class="crumbs_item">
				<span>서울 N서울타워 전망대 입장권</span>
			</div>
		</div>
	</div>
	
	<!-- 얼굴 -->
	<div class="detail_header_container productdetail_common_inner_width">
		<section class="flex title fic_sb">
			<h1 class="productName ffps">서울 N서울타워 전망대 입장권</h1>
			<p class="ffpr c6 fs2">상품번호 : 12345</p>
		</section>
		
		<div class="comment_height">
			<div class="comment_sold">
				<section>
					<span class="comment_score">
						<em class="good_comment">3.3</em>
						"/5"
					</span>
					<span class="comment_count">리뷰 3개</span>
				</section>
			</div>
			<div class="collectio default_collection">
				<div class="dollection_img"></div>
				<div class="collection_trps">즐겨찾기</div>
			</div>
		</div>
	
		<section id="imageContainer" class="flex imageContainer">
			<div class="imgBox productdetail_common_width svg_default_img">
				<a title="서울 N서울타워 전망대 입장권" href="#">
					<img alt="서울 N서울타워 전망대 입장권" class="imgClass" src="">
				</a>
			</div>
			
			<section  class="bookLayer-inner">
				<div class="m_footer">
					<div class="m_footer_box">
						<div class="m_footer_layer_header"></div>
						<div class="m_footer_layer_body">
							<div class="m_footer_info">
								<div class="m_footer_flex">
									<div class="u_price">
										<span class="u_price_content">
											<span class="u_price_number">8,800</span>
											<span class="u_price_currency">원</span>
										</span>
									</div>
									
									<div class="u_price">
										<span class="u_price_content u_price_content_lineThrough">
											<span class="u_price_number">11,800</span>
											<span class="u_price_currency">원</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="m_footer_bottom">
							<div class="m_fotter_bottom_btn">예약하기</div>
						</div>
					</div>
				</div>
			</section>	
		</section>
	</div>












</div>







	<!-- footer -->
	<div id="wrap_foot">
		<footer>
			<jsp:include page="/repository/jsp/main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>

</body>
</html>