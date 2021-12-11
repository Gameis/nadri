<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
class Activitiy {
	private String title;
	private int price;

}
// db에서 값 가져오기
Activitiy item = new Activitiy();

item.title = "서울 N서울타워 전망대 입장권";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<title><%=item.title%></title>
<link href="/nadri/repository/img/main/trip.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/activities/activities.css">
</head>
<body>

	<%-- <div class="trip_common_head_con">
		<jsp:include page="/repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include> 

	</div> --%>
	<!-- 몸통 -->
	<div class="productdetail-container">
		<input type="hidden" id="page_id" value="10650010429">
		<!-- 눈썹 -->
		<div class="product-detail-breadcrumbs">
			<div class="crumbs-wrap ">
				<div class="crumbs-item">
					<a href="#">홈</a> <span class="crumbs-separator">&gt;</span>
				</div>
				<div class="crumbs-item">
					<a href="#">서울 액티비티</a> <span class="#">&gt;</span>
				</div>
				<div class="crumbs-item">
					<a href="#">검색 결과</a> <span class="crumbs-separator">&gt;</span>
				</div>
				<div class="crumbs-item">
					<span><%=item.title%></span>
				</div>
			</div>
		</div>

		<div style="display: none;"></div>

		<!-- 얼굴 -->
		<header class="detail-header-container productdetail-common-inner-width">
			<section class="flex title fjc-sb">
				<h1 class="productName ffps"><%=item.title%></h1>
				<p class="ffpr c6 fs2">상품번호: 36756741</p>
			</section>

			<div class="comment-height">
				<div class="comment-sold">
					<section>
						<span class="comment-score"> <em class="good-comment">3.3</em> /5
						</span> <span class="comment-count">리뷰 3개</span>
					</section>
				</div>
				<div class="collection default-collection">
					<div class="collection-img"></div>
					<div class="collection-tips">즐겨찾기</div>
				</div>
			</div>

			<section id="imageContainer" class="flex imageContainer">
				<div class="imgBox productdetail-common-width svg-default-img">
					<a title="서울 N서울타워 전망대 입장권" href="https://kr.trip.com/things-to-do/detail/36756741/"> <img alt="서울 N서울타워 전망대 입장권" class="imgClass" src="https://ak-d.tripcdn.com/images/100t0y000000lnt6n0666_C_1136_640_Q60.jpg?proc=source/trip;namelogo/d_40" data-src="https://ak-d.tripcdn.com/images/100t0y000000lnt6n0666_C_1136_640_Q60.jpg?proc=source/trip;namelogo/d_40">
					</a>
				</div>

				<section class="bookLayer-container flex fd-c">
					<div class="bookLayer-inner bookLayer-inner-fixed fixedT100 transition-show" style>
						<div class="m_footer">
							<div class="m_footer_box">
								<div class="m_footer_layer_header"></div>
								<div class="m_footer_layer_body">
									<div class="m_footer_info">최저가</div>
									<div class="m_footer_flex">
										<div class="u_price">
											<span class="u_price_content"> <span class="u_price_number">8,800</span> <span class="u_price_currency">원</span>
											</span>
										</div>

										<div class="u_price">
											<span class="u_price_content u_price_content_lineThrough"> <span class="u_price_number">11,800</span> <span class="u_price_currency">원</span>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="m_footer_bottom">
								<div class="m_footer_bottom_btn">예약하기</div>
							</div>
						</div>
					</div>
				</section>
			</section>

			<section class="tagsContainer productdetail-common-width flex">
				<div class="tagItemContainer flex">
					<img class="img" src="https://pic.tripcdn.com/picaresenglish/activity/ottd-pic-service/icon/ic_Available_Top@2x.ca73e56f.png" width="18px" height="18px" data-src="https://pic.tripcdn.com/picaresenglish/activity/ottd-pic-service/icon/ic_Available_Top@2x.ca73e56f.png"> <span class="tagName ffpr fs3 c9 specialColor">오늘부터 바로사용</span>
				</div>
				<div class="tagItemContainer flex">
					<img class="img" src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/detail_icon/ic_refundable.png" width="18px" height="18px" data-src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/detail_icon/ic_refundable.png"> <span class="tagName ffpr fs3 c9 ">취소 불가</span>
				</div>
				<div class="tagItemContainer flex">
					<img class="img" src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/detail_icon/ic_Show%20ID.png" width="18px" height="18px" data-src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/detail_icon/ic_Show%20ID.png"> <span class="tagName ffpr fs3 c9">전자 바우처 제시</span>
				</div>
				<div class="tagItemContainer flex">
					<img class="img" src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/trip_detail/ic_calendar@2x.webp" width="18px" height="18px" data-src="https://webresource.tripcdn.com/ares2/activity/ottd-pic-service/1.0.35/default/trip_detail/ic_calendar@2x.webp"> <span class="tagName ffpr fs3 c9">유효기간 내 사용</span>
				</div>
			</section>

			<div class="productdetail-common-width">
				<div class="confirmInfoBox">
					<img class="confirminfo-img" src="https://pic.tripcdn.com/picaresenglish/activity/ottd-pic-service/icon/ic_indent@2x.8552b9b5.png" data-src="https://pic.tripcdn.com/picaresenglish/activity/ottd-pic-service/icon/ic_indent@2x.8552b9b5.png">
					<div class="confirminfo-name">
						예약 확정 <span class="confirminfo-des">평균 예약 확정 시간 1분, 100% 확정</span>
					</div>
					<div class="confirminfo-tips" src="https://pages.trip.com/hwwl/Trip_icon/details_hp/in_click%20collection%20.png">
						<i class="confirminfo-tips-img"></i>
						<div class="refund-layer center-layer">
							<ul class="mt10">
								<li>결제 완료 후 공급처 측에서 예약 확정 안내 드릴 예정입니다. 공급처 예약 확정 후 트립닷컴 예약 확정 이메일을 발송해드립니다.</li>
								<li>예약 확정 시간 및 성공률은 지난 예약건에 기반한 수치 (단순 참고용)</li>
								<li>정확한 예약 확정 시간은 예약 확정 메일 또는 예약 상세 페이지에서 확인해주세요.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<section id="productFeatures" class="wordTextContainer productdetail-common-width c9">
				<h2 class="title ffps">액티비티 핵심 포인트</h2>
				<ul class="textList">
					<li class="dotBefore">서울 최고의 경치 명소, N서울타워 전망대에서 멋진 시내의 도심 뷰를 감상하세요.</li>
					<li class="dotBefore">해가 지면 반짝거리는 도심의 불빛에 감성에 젖어보세요.</li>
					<li class="dotBefore">미디어아트 전시 공간인 인사이드 서울을 높치지 마세요.</li>
				</ul>
			</section>
		</header>

		<div id="optionsAndPrice">
			<div class="m_sku m_sku_trip">
				<div class="m_sku_wrap">
					<div class="m_sku_inner">
						<div class="m_sku_header">
							<div class="m_sku_header_ol">
								<h2 class="m_sku_header_ol_left">옵션 및 요금</h2>
								<div class="m_sku_header_ol_right" id="ibuact-10650010429-date-reselect">다시 선택</div>
							</div>
						</div>
						<div class="m_sku_content ">
							<div class="sku_wrapper">
								<div class="m_calendar_extra_info m_calendar_extra_info_no_calendar ">
									<div class="m_calendar_extra_valid">
										<i class=" u_icon_ttd undefined u_icon_info2"></i>
										<div class="m_textcollapse">
											<div class="m_textcollapse_content">
												<div class="m_textcollapse_txt_wrapper" style="height: auto; overflow: hidden;">
													<div>
														<div>2021년 11월 9일 - 2022년 6월 30일 유효(현지 시간)</div>
														<div class="m_t"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="m_optionsparts ">
									<div class="m_options_parts">
										<div class="m_options_parts_item">
											<div class="m_options_parts_hit">옵션 선택</div>
											<div class="m_options_parts_container">
												<div>
													<div class="options_btn null null">성인 입장권(만 19세 이상)</div>
												</div>
												<div>
													<div class="options_btn null null">청소년 입장권(만 14세이상 만 18세 이하)</div>
												</div>
												<div>
													<div class="options_btn null null">어린이 입장권(만 13세 이하)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="m_select_quantity ">
									<div class="m_select_header">
										<div class="m_select_header_title">예약 인원 선택</div>
									</div>
									<div class="m_select_quantity_container  ">
										<div class="m_select_quantity_content">
											<div class="m_select_quantity_source">
												<div>
													<div class="source_content">
														<span class="source_title  ">수량</span> <span class="source_desc "></span>
													</div>
												</div>
											</div>
											<div class="choice_options_wrapper">
												<div class="choice_options">
													<div class="m_choice_options">
														<div class="SelectQuantity_minus_0">
															<i class="u_icon_ttd undefined u_icon_subtract" style="color: rgb(40, 125, 250); font-size: 24px;"></i>
														</div>
														<span class="m_choice_options_content">
															<div class="m_input">
																<div class="m_input_content_wrap">
																	<div class="m_input_content">
																		<input defaultval="1" type="tel" class="input_val" allowclear="false" value="1">
																	</div>
																</div>
															</div>
														</span>
														<div id="SelectQuantity_plus_0">
															<i class="u_icon_ttd undefined u_icon_add" style="color: rgb(40, 125, 250); font-size: 24px;"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<article class="detail-footer-container">
			<div class="message-inner productdetail-common-inner-width">
				<div class="wordtextOutContainer">
					<section id="productDesc" class="wordTextContainer productdetail-common-width c9">
						<h2 class="title ffps">상품 소개</h2>
						<div id="_productDesc" class="mainText ffpr fs3">
							<p>
								<strong> <img src="">
								</strong>
							</p>

						</div>
					</section>
					<div id="buyNotice">
						<section id="valid" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">유효 기간</h2>
							<div id="_valid" class="mainText ffpr fs3">
								<p>2021년 11월 9일부터 2022년 6월 30일까지 유효 (현지 시간), 1회 사용 가능</p>
							</div>
						</section>
						<section id="feeInclude" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">포함 사항</h2>
							<ul class="textList">
								<li class="feeInclude">옵션에 따른 N서울타워 전망대 입장권</li>
							</ul>
						</section>
						<section id="feeExclude" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">불포함 사항</h2>
							<ul class="textList">
								<li class="feeExclude">개인 비용 및 기타 포함되지 않은 모든 사항</li>
							</ul>
						</section>
						<section id="refundRule" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">취소 및 환불 규정</h2>
							<ul class="textList">
								<li class="dotBefore">해당 상품은 예약이 완료되면 변경 및 취소가 불가합니다.</li>
							</ul>
						</section>
						<section id="howToUse" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">사용방법</h2>
							<ul class="textList">
								<li class="dotBefore">예약페이지 내 바우처 코드(16자리)를 무인발권기에 입력 후 입장권으로 교환해주세요.</li>
								<li class="dotBefore">주소: 서울특별시 용산구 남산공원길 105 서울타워 본관 (Plaza) 5층</li>
								<li class="dotBefore">운영시간: 평일 12:00 - 21:00, 주말/공휴일 11:00 - 21:00</li>
								<li class="dotBefore">입장권 교환 시간: ~20:30</li>
								<li class="dotBefore">입장권 교환 장소: N서울타워 N Plaza 5층 키오스크</li>
							</ul>
						</section>
						<section id="attention" class="wordTextContainer productdetail-common-width c9">
							<h2 class="title ffps">주의 사항</h2>
							<div id="_attention" class="mainText ffpr fs3">
								<ul>
									<li>36개월 미만 유아 무료 입장(보호자 1명당 1명에 한함)</li>
								</ul>
							</div>
						</section>
					</div>
				</div>
			</div>
		</article>


		<div class="toastcomponent"></div>
	
	<div name="review-header" id="review-header" class="review-header">	
	<div name="reviewContainer" id="reviewContainer" class="reviewContainer">
		<div class="reviewHeaderContainer">
			<div class="review-box">
				<div>
					<div class="review-title">리뷰 작성하기</div>
					<div class="reivew-tip">
						<span name="tip-text" class="tip-text">
							
						</span>
					</div>
				</div>
			</div><!-- review-box -->
		</div><!-- reviewHeaderContainer -->
		
		<div class="review-writeContainer">
			<ul class="review-write-list">
				<div class="review-write-form">
					<li class="review-write-detail">
					
						<div class="review-write-user">
							<a style="color: rgb(15, 41, 77); text-decoration: none;">
								<img class="review-write-userImg" alt="user_icon" width="50" height="50" src="https://cdn.pixabay.com/photo/2021/10/15/21/11/squid-game-6713440_1280.jpg">
							</a>
							<div class="review-write-userInfo">
								<div class="reivew-write-userName">
									user_name
								</div><!-- reivew-write-userName -->
							</div><!-- review-write-userInfo -->
						</div><!-- review-write-user -->
						
						<div class="review-write-content">
							<form id="pop_review_writeForm">
								<input type="hidden" id="main_seq" name="main_seq" value="99">
								<input type="hidden" id="content_seq" name="content_seq" value="3"/>
								<input type="hidden" id="pop_seq" name="pop_seq" value="${param.pop_seq }"/>
								<!-- 평점 -->
								<div class="review-write-wrap">
								    <div class="review-write-selectScore">
								    	<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
											<input type="radio" class="btn-check" name="pop_review_score" id="btnRadio5" value=5 checked>
											<label class="score btn btn-outline-primary" for="btnRadio5">5점</label>
											
											<input type="radio" class="btn-check" name="pop_review_score" id="btnRadio4" value=4 >
											<label class="score btn btn-outline-primary" for="btnRadio4">4점</label>
												
											<input type="radio" class="btn-check" name="pop_review_score" id="btnRadio3" value=3 >
											<label class="score btn btn-outline-primary" for="btnRadio3">3점</label>
											  
											<input type="radio" class="btn-check" name="pop_review_score" id="btnRadio2" value=2 >
											<label class="score btn btn-outline-primary" for="btnRadio2">2점</label>
											  
											<input type="radio" class="btn-check" name="pop_review_score" id="btnRadio1" value=1 >
											<label class="score btn btn-outline-primary" for="btnRadio1">1점</label>
										</div>
									</div><!-- review-write-selectScore -->
								</div>
								
								<!-- 내용 -->
								<div class="review-write-wrap">
									<div class="input-group">
									  <span class="input-group-text">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</span>
									  <textarea class="form-control" name="pop_review_content" aria-label="With textarea" style="resize: none;"></textarea>
									</div>
								</div>
								
								<!-- 파일업로드 -->
								
								<button id="pop_review_writeBtn" type="button" class="btn btn-primary">등록</button>
								<button type="reset" class="btn btn-primary">다시작성</button>
								
							</form>
						</div><!-- review-write-content -->
						
					</li><!-- review-write-detail -->
				</div><!-- review-write-form -->
			</ul><!-- review-write-list -->
		</div><!-- review-writeContainer -->
	</div><!-- reviewContainer -->
	</div><!-- review -->

		<div id="detailComment" class="productdetail-comment-inner-width">
			<div class="commentContainer border-container">
				<div id="test" class="commentlist-contaier">
					<section class="productdetail-commentlist-container"><h2 class="title">리뷰<em class="commentCount">(1)</em></h2>
						<div><span class="list-score"><em class="list-good-comment">3.3</em>/5</span> <span class="list-label"></span></div>
						<p><span id="ibu_dtlopg_comment_filter_all_1" class="filter-all">전체</span></p>
						<div class="comment-list-box">
							<div class="title-ffsd">리뷰</div>
							<div class="comment-list">
								<div class="comment-list-item">
									<div>
										<div class="user-image-position"><img src="https://ak-d.tripcdn.com/images/Z80o180000013ulur1D76.jpg" data-src="https://ak-d.tripcdn.com/images/Z80o180000013ulur1D76.jpg"></div>
										<div class="user-commentinfo-position"><div><p class="user-comment-name">_NV4*****0697</p></div><div><span class="commentScore"><em class="good-comment">5.0</em>/5</span> <span class="commentDate">2021년 10월 4일</span></div></div>
									</div>
									<div class="userinfo-position-left comment-container">
										<div class="text-img"><div class="commentListText">편리하고 빠른 예약으로 즐길수 있어서 최고입니다</div><div class="show-hide-comment dn"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAOCAYAAAA1+Nx+AAAAAXNSR0IArs4c6QAAAYBJREFUOBG1UltKw1AQnUk+rIruSFGkL61VF+EGTOkiqvXfH7egQqWmrQgK4iq6COvzIxnPCb0StekLvDDcyZ3zuDO5Iv+8dFr9YsNKkciZqqipHPZqGk7DncqgcGJlM7lALFAUJp+Ig05N25NMJhrw5rHKJcUh+kxB5Ks08Uz2w7rejDMZa5BvWMFEriCQQwzEl0IiFkkH+wriAwJ73brye+TyRp7iEGPJp8U9X0q9QJ8YzAEZIHLEEJulM9Ig37St2IY3V3nBLcudQB+dCHOeCWo0IZYcV0/vf0ZUbNpmFMu1mCxizq+4bTk80oc0yeXFU1uLI2njnyzD7N33ZCcM9M7Vuf/ooHRsGyC0nDgMtrPESWaNGF6EHHKpwZpb3waY4zreeQszXUJbb75IBc/w3gGzdmKIJYdcalDL4ZMRpVslEGOp/G7VEbL2rNEmHaC1czdHPMXqrOI0JUc92eW/oBY1eZ4YoLUu8j4B3UBvWZhnkYtxVcHtDzXnkZmN8wVS06dlIL2zIQAAAABJRU5ErkJggg=="data-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAOCAYAAAA1+Nx+AAAAAXNSR0IArs4c6QAAAYBJREFUOBG1UltKw1AQnUk+rIruSFGkL61VF+EGTOkiqvXfH7egQqWmrQgK4iq6COvzIxnPCb0StekLvDDcyZ3zuDO5Iv+8dFr9YsNKkciZqqipHPZqGk7DncqgcGJlM7lALFAUJp+Ig05N25NMJhrw5rHKJcUh+kxB5Ks08Uz2w7rejDMZa5BvWMFEriCQQwzEl0IiFkkH+wriAwJ73brye+TyRp7iEGPJp8U9X0q9QJ8YzAEZIHLEEJulM9Ig37St2IY3V3nBLcudQB+dCHOeCWo0IZYcV0/vf0ZUbNpmFMu1mCxizq+4bTk80oc0yeXFU1uLI2njnyzD7N33ZCcM9M7Vuf/ooHRsGyC0nDgMtrPESWaNGF6EHHKpwZpb3waY4zreeQszXUJbb75IBc/w3gGzdmKIJYdcalDL4ZMRpVslEGOp/G7VEbL2rNEmHaC1czdHPMXqrOI0JUc92eW/oBY1eZ4YoLUu8j4B3UBvWZhnkYtxVcHtDzXnkZmN8wVS06dlIL2zIQAAAABJRU5ErkJggg=="></div></div>
									</div>
								</div>
								<div class="detail-imageShow-container dn">
									<button class="quitImageShow">
										<img width="24px" height="24px"
											src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAAXNSR0IArs4c6QAAA0ZJREFUeAHtnE1u20AMhe0uu+gVdJIWzj4HyJ1yCJ0i62Ydr3WD3iBpt+57sgawAkmZH5LDEUyAkT3SkHwfqJ8Y9hwOk10ulw7ewwf4O/wMf4b/CMfsbUttk0ZqpWZq7+HdTCsGnuAf8CX7g8Ffswk7eENNcGpbMrJ4GmXiRQdfg4Ndo/3F39MOuATNJ+ihpi0jk+6AP/3WUTf7GPChdUjUAP8KTpDdE9AQ3kVsGbjZTmLt8Fg4xDEQEC9OKcYEzXUSa4anwCGTdwLiFTzVmuokiEvtnMDj/A3XlNeM68p3zHlBFPedNNX4gnpZc6q9soP4LLB2u8OuTXPdSag8t3Momkyuz4B4wWeC1PMTU0ZzCQmVlcChpp+zdhMIeJoFrPhGTYtaYENY6hrUEyjCMqvdLJEgLPOaBRKaPQKg1pyHQEwbLf8mg+mldwJ1SKixDpzQ/Z4hVYfjGZIbOB4huYPjCZJbOB4guYdTE1IzcG4gld5eox8BBOBE5wr6RLYWhVvkEIGxFkRTgGbsNT0q4xpCNGKqiI8NKilIMlZs/SbHSQiTiGEiNjeJgMCSj37r3K1SYRVCwvRkI9Q24ASYLBie2w0phNqDYwipXTgGkNqHowhpP3AUIO0PjiAkczj88sLdPBAQvO2bd5E6P0E44floP5AU4OwHkiKc9iEZwGkXkiGc9iAVwuHFl55j/i/cUFXyH/woUCKG+m05J4GkMMlYOVrE52gI0ogpLjwmoKYQzdgx2oqPsRBgkaMYxFIAy8Itcy1pTR6rUXCNnMlgOKFmoTVzR8HyUKCHGhZheSrMUy0jLHcFVT7VZx3kEU4osHpt1QsIJDa21WqslngDxtou81rNE64pTxg3q9ksUYL42EPVa1dPEKu04Dg1DWqBC8TmThXXgoClP+p19+UlAUjXBV0QqPRn4e7ghM4rhHT9WTiCcI2gHPP/ITlIQVjJ5+TPDJC7NIXbzgkdFLYFkM4EdF/cBBBWbFzcZFjZuTTcxGkVOufzFoJST7eB3w96+xxo5f0/jD8ej8ffK/vdD0+1P6JQaomxN55iHTxmia5mrjlfKY/spOsSXQyGCfdF3gDhxgjnushboI2BDt7DeU26LxM4gfkPrLKZl+UkenkAAAAASUVORK5CYII=" data-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAAAXNSR0IArs4c6QAAA0ZJREFUeAHtnE1u20AMhe0uu+gVdJIWzj4HyJ1yCJ0i62Ydr3WD3iBpt+57sgawAkmZH5LDEUyAkT3SkHwfqJ8Y9hwOk10ulw7ewwf4O/wMf4b/CMfsbUttk0ZqpWZq7+HdTCsGnuAf8CX7g8Ffswk7eENNcGpbMrJ4GmXiRQdfg4Ndo/3F39MOuATNJ+ihpi0jk+6AP/3WUTf7GPChdUjUAP8KTpDdE9AQ3kVsGbjZTmLt8Fg4xDEQEC9OKcYEzXUSa4anwCGTdwLiFTzVmuokiEvtnMDj/A3XlNeM68p3zHlBFPedNNX4gnpZc6q9soP4LLB2u8OuTXPdSag8t3Momkyuz4B4wWeC1PMTU0ZzCQmVlcChpp+zdhMIeJoFrPhGTYtaYENY6hrUEyjCMqvdLJEgLPOaBRKaPQKg1pyHQEwbLf8mg+mldwJ1SKixDpzQ/Z4hVYfjGZIbOB4huYPjCZJbOB4guYdTE1IzcG4gld5eox8BBOBE5wr6RLYWhVvkEIGxFkRTgGbsNT0q4xpCNGKqiI8NKilIMlZs/SbHSQiTiGEiNjeJgMCSj37r3K1SYRVCwvRkI9Q24ASYLBie2w0phNqDYwipXTgGkNqHowhpP3AUIO0PjiAkczj88sLdPBAQvO2bd5E6P0E44floP5AU4OwHkiKc9iEZwGkXkiGc9iAVwuHFl55j/i/cUFXyH/woUCKG+m05J4GkMMlYOVrE52gI0ogpLjwmoKYQzdgx2oqPsRBgkaMYxFIAy8Itcy1pTR6rUXCNnMlgOKFmoTVzR8HyUKCHGhZheSrMUy0jLHcFVT7VZx3kEU4osHpt1QsIJDa21WqslngDxtou81rNE64pTxg3q9ksUYL42EPVa1dPEKu04Dg1DWqBC8TmThXXgoClP+p19+UlAUjXBV0QqPRn4e7ghM4rhHT9WTiCcI2gHPP/ITlIQVjJ5+TPDJC7NIXbzgkdFLYFkM4EdF/cBBBWbFzcZFjZuTTcxGkVOufzFoJST7eB3w96+xxo5f0/jD8ej8ffK/vdD0+1P6JQaomxN55iHTxmia5mrjlfKY/spOsSXQyGCfdF3gDhxgjnushboI2BDt7DeU26LxM4gfkPrLKZl+UkenkAAAAASUVORK5CYII=">
									</button>
									<div style="height: 15.5%;"></div>
									<div class="imageListContainer">
										<div class="imageInner"></div>
									</div>
									<div style="height: 4.1%;"></div>
									<div class="imageIndexContainer">
										<p class="ffpm tc c7">1/0</p>
										<div style="height: 1.6%;"></div>
										<div class="indexImageContainer tc"></div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>


	</div>

	<%-- <div>
		<jsp:include page="/repository/jsp/popular/pop_review_writeForm.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div> --%>

	<div id="wrap_foot">
		<footer>
			<jsp:include page="/repository/jsp/main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>



	<div id="__next-error"></div>
	<script type="text/javascript" crossorigin="anonymous" src="//webresource.tripcdn.com/res/concat?f=/resaresenglish/ibu/onlinecommon/lib/cquery_110421.352b5c2d.js,cquery_pro.6d0231d2.js"></script>
	<script src="//webresource.tripcdn.com/ares2/ibu/onlinecommon/*/default/assets/ibu_gagtag2_online_bundle.js" crossorigin="anonymous" async=""></script>
	<script crossorigin="anonymous" src="//webresource.tripcdn.com/ares/infosec/captcha/~2.5.0/default/js/captcha.min.js?expires=1d"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/100015469/ko-KR.js?etagc=15569907e1022e40db061fec6d8b6969"></script>
	<script crossorigin="anonymous" type="text/javascript" id="i18naccountpcsdk" secretkey="C03A346B910769EC" src="https://webresource.tripcdn.com/ares2/basebiz/i18naccountpcsdk/*/default/assets/i18n_account_pcsdk_bundle.js"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/6002/ko-KR.js?etagc=fa15544aedd1c400a8b82d69c3185d3f"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/6001/ko-KR.js?etagc=df43e5b6507ff0de9df67ce2e809ac7a"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/100009239/ko-KR.js?etagc=a798631ea01dacff708e040f1165822f"></script>
	<script crossorigin="anonymous" src="https://webresource.tripcdn.com/ares2/ibu/onlinecommon/*/default/assets/ibu_l10n_online_bundle.js"></script>
	<script crossorigin="anonymous" type="text/javascript" id="i18nguestverifypcsdk" secretkey="67986D7FCD5D2C5C" src="https://webresource.tripcdn.com/ares2/basebiz/i18naccountpcsdk/*/default/assets/guestVerify.js"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/330153/ko-KR.js?etagc=f5158fe4177dccce3ca0172317439256"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/330151/ko-KR.js?etagc=6a40afadabb933fac51a38441f7edf8e"></script>
	<script type="text/javascript" src="https://ak-s.tripcdn.com/modules/basebiz/i18naccountcomponentssdk/i18naccountcomponentssdk.6e306b320450e87c28afdecb4d66d8cf.js"></script>

	</div>
</body>
</html>