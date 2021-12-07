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
<title>Insert title here</title>
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
					<div class="bookLayer-inner">
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

		<div class=""></div>


	</div>
	<%-- <div>
		<jsp:include page="/repository/jsp/popular/pop_review_writeForm.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div> --%>

	<%-- <div id="wrap_foot">
		<footer>
			<jsp:include page="/repository/jsp/main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div> --%>
	
	<script>
                if (typeof Object.assign !== 'function') {
                    window._assignObject = function(t, s) {
                        for (var k in s) {
                            t[k] = s[k]
                        }
                        ;return t
                    }
                    ;
                } else {
                    window._assignObject = Object.assign
                }
                window.__CARGO_DATA__ = _assignObject(window.__CARGO_DATA__ || {}, {
                    "onlinefooterlinke0": "{\"about\":[{\"show\":\"1\",\"displayName\":\"About Trip.com\",\"displayNameSharkKey\":\"ButtonText_AboutUs\",\"include\":\"all\",\"link\":\"/pages/about-us/\"},{\"show\":\"1\",\"displayName\":\"NewsRoom\",\"displayNameSharkKey\":\"ButtonText_NewsRoom\",\"include\":\"en_us,zh_hk,en_hk,zh_tw,ja_jp,ko_kr,it_it,vi_vn,ru_ru,id_id,de_de,fr_fr,es_es,th_th,en_au,ms_my,en_gb\",\"link\":\"/newsroom/\"},{\"show\":\"1\",\"displayName\":\"Newsroom\",\"displayNameSharkKey\":\"ButtonText_NewsRoom\",\"exclude\":\"en_us,zh_hk,en_hk,zh_tw,ja_jp,ko_kr,it_it,vi_vn,ru_ru,id_id,de_de,fr_fr,es_es,th_th,en_au,ms_my,en_gb,pt_pt,es_mx,uk_ua,sv_se,da_dk,fi_fi,es_us\",\"link\":\"https://www.trip.com/newsroom/?locale=en-xx\"},{\"show\":\"1\",\"displayName\":\"Careers\",\"displayNameSharkKey\":\"ButtonText_Career\",\"include\":\"all\",\"link\":\"https://careers.trip.com/\"},{\"show\":\"1\",\"displayName\":\"Terms of Use\",\"displayNameSharkKey\":\"LinkButtonText_TermsAndCondition\",\"include\":\"all\",\"link\":\"https://pages.trip.com/service-guideline/terms-${locale}.html\"},{\"show\":\"1\",\"displayName\":\"Privacy Statement\",\"displayNameSharkKey\":\"ButtonText_PrivacyPolicy\",\"exclude\":\"es_us,es_mx,pt_pt\",\"link\":\"https://pages.trip.com/service-guideline/privacy-policy-${locale}.html\"},{\"show\":\"1\",\"displayName\":\"Impressum\",\"displayNameSharkKey\":\"ButtonText_Impressum\",\"include\":\"de_de\",\"link\":\"https://pages.trip.com/others/impressum-de-de.html\"},{\"show\":\"1\",\"displayName\":\"Do not sale my personal information\",\"displayNameSharkKey\":\"ButtonText_Personalinformation\",\"include\":\"en_us\",\"link\":\"https://us.trip.com/pages/treatyforcookie/\"},{\"show\":\"1\",\"displayName\":\"Trip.com Group\",\"displayNameSharkKey\":\"ButtonText_TripGroup\",\"include\":\"zh_hk,zh_tw\",\"link\":\"https://group.trip.com/?locale=zh-HK\"},{\"show\":\"1\",\"displayName\":\"Trip.com Group\",\"displayNameSharkKey\":\"ButtonText_TripGroup\",\"exclude\":\"zh_hk,zh_tw\",\"link\":\"https://group.trip.com/?locale=en-US\"}],\"otherServices\":[{\"show\":\"1\",\"displayName\":\"Investor Relations\",\"displayNameSharkKey\":\"ButtonText_InvestorRelations\",\"include\":\"all\",\"link\":\"https://investors.trip.com\"},{\"show\":\"1\",\"displayName\":\"TripPLUS\",\"displayNameSharkKey\":\"ButtonText_TripPlus\",\"exclude\":\"pt_pt,es_mx,uk_ua,sv_se,da_dk,fi_fi,es_us\",\"link\":\"/sale/TripRewards?locale=${locale}\"},{\"show\":\"0\",\"displayName\":\"Partners\",\"displayNameSharkKey\":\"ButtonText_Affiliate_trip\",\"exclude\":\"zh_tw\",\"link\":\"/pages/partners\"},{\"show\":\"1\",\"displayName\":\"Partners\",\"displayNameSharkKey\":\"ButtonText_Affiliate_trip\",\"include\":\"en_xx,zh_hk,ko_kr,ja_jp,ru_ru,th_th\",\"link\":\"/partners/index\"},{\"show\":\"1\",\"displayName\":\"Partners\",\"displayNameSharkKey\":\"ButtonText_Affiliate_trip\",\"exclude\":\"en_xx,zh_hk,ko_kr,ja_jp,ru_ru,th_th\",\"link\":\"https://www.trip.com/partners/index\"},{\"show\":\"1\",\"displayName\":\"List My Hotel\",\"displayNameSharkKey\":\"LinkButtonText_Listyourhotel\",\"include\":\"zh_hk,en_be,fr_ch,en_ch,fr_be,nl_be,de_ch,de_at,en_ie,ar_sa,ar_ae,ar_xx,en_xx,en_nz,en_il,en_sa,en_ae,en_us,nl_nl,el_gr,pt_br,tr_tr,pl_pl,en_th,en_my,en_id,en_kr,en_jp,zh_sg,en_gb,it_it,zh_tw,tl_ph,vi_vn,en_au,th_th,id_id,ms_my,en_sg,en_hk,ru_ru,es_es,de_de,fr_fr\",\"link\":\"https://ebooking.ctrip.com/ebkovsassembly/HotelApply?type=2&channel=1&lang=1\",\"linkLocale\":\"en_us\"},{\"show\":\"1\",\"displayName\":\"List My Hotel\",\"displayNameSharkKey\":\"LinkButtonText_Listyourhotel\",\"include\":\"ja_jp\",\"link\":\"https://ebooking.ctrip.com/ebkovsassembly/HotelApply?type=2&channel=1&lang=2\"},{\"show\":\"1\",\"displayName\":\"List My Hotel\",\"displayNameSharkKey\":\"LinkButtonText_Listyourhotel\",\"include\":\"ko_kr\",\"link\":\"https://ebooking.ctrip.com/ebkovsassembly/HotelApply?type=2&channel=1&lang=3\"},{\"show\":\"1\",\"displayName\":\"Hotel Cities\",\"displayNameSharkKey\":\"LinkButtonText_ListHotelCities\",\"include\":\"en_us,zh_hk,en_hk,ja_jp,ko_kr,en_sg,en_au,en_xx\",\"link\":\"/hotels/all-cities/?locale=${locale}\"},{\"show\":\"1\",\"displayName\":\"VBooking\",\"displayNameSharkKey\":\"LinkButtonText_VBooking\",\"include\":\"en_gb,th_th,en_sg,en_my,ko_kr,ja_jp,en_hk,en_xx,en_us,en_au,en_nz\",\"link\":\"/m/vbooking/home\"}],\"contactUs\":[{\"show\":\"1\",\"displayName\":\"Customer Support\",\"displayNameSharkKey\":\"ButtonText_CustomerServiceHelp\",\"include\":\"all\",\"link\":\"/pages/support/\"},{\"show\":\"1\",\"displayName\":\"Customer Service\",\"displayNameSharkKey\":\"ButtonText_CustomerService\",\"include\":\"all\",\"link\":\"/pages/customer-service/\"},{\"show\":\"1\",\"displayName\":\"Travel Safety Guide\",\"displayNameSharkKey\":\"LinkButtonText_SafetyGuide\",\"include\":\"ja_jp\",\"link\":\"https://www.anzen.mofa.go.jp/\"},{\"show\":\"1\",\"displayName\":\"Website Feedback\",\"displayNameSharkKey\":\"LinkButtonText_FeedBack\",\"include\":\"all\",\"link\":\"/feedback/\"}]}",
                    "socialmediackokre0": "[{\"name\":\"facebook\",\"link\":\"https://www.facebook.com/tripcom.kr\"},{\"name\":\"instagram\",\"link\":\"https://www.instagram.com/tripcom.kr\"},{\"name\":\"naver\",\"link\":\"http://blog.naver.com/trip_com\"},{\"name\":\"youtube\",\"link\":\"http://www.youtube.com/c/tripcomkr\"},{\"name\":\"kakao\",\"link\":\"http://pf.kakao.com/_mMxbcxl\"}]",
                    "paymentmethodckokre0": "[{\"name\":\"naver-pay\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/naver-pay.png\"},{\"name\":\"bc-card\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/bc-card.png\"},{\"name\":\"shinhan\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/shinhan.png\"},{\"name\":\"kakao-pay\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/kakao-pay.png\"},{\"name\":\"samsung\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/samsung.png\"},{\"name\":\"nh\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/nh.png\"},{\"name\":\"keb\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/keb.png\"},{\"name\":\"samsung-pay\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/samsung-pay.png\"},{\"name\":\"hyundai-pay\",\"iconUrl\":\"https://pages.trip.com/images/payment-method/hyundai-pay.png\"}]",
                    "businesspartnerckokre0": "[{\"logo\":\"https://pages.trip.com/images/business-partner/GOOGLE.png\"},{\"logo\":\"https://pages.trip.com/images/business-partner/TRIPADVISOR.png\"}]",
                    "sisterbrandckokre0": "",
                    "awardsckokre0": "[{\"awardLogo\":\"https://pages.trip.com/images/rewards/KR2020BrandAwards.png\",\"awardTxt\":\"한국소비자포럼 주관 <br />올해의브랜드대상 2년 연속 수상\"}]"
                })
            </script>

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
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/330153/ko-KR.js?etagc=eb290a57da372dd02f22abff7fc0d782"></script>
	<script crossorigin="anonymous" type="text/javascript" src="https://ak-s.tripcdn.com/locale/v2/330151/ko-KR.js?etagc=6058a3d9785d176f570e3926598b1c9c"></script>
	<script type="text/javascript" src="https://ak-s.tripcdn.com/modules/basebiz/i18naccountcomponentssdk/i18naccountcomponentssdk.6e306b320450e87c28afdecb4d66d8cf.js"></script>
	<script crossorigin="anonymous">
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-MV95N9D');
	</script>
	<script async="" crossorigin="anonymous" id="__NEXT_PAGE__/detail" src="https://webresource.tripcdn.com/ares2/activity/ottd-online-international-website-application/2.12.3/default/_next/ottd-online-international-website-application-2.12.3/page/detail.js"></script>
        <script async="" crossorigin="anonymous" id="__NEXT_PAGE__/_app" src="https://webresource.tripcdn.com/ares2/activity/ottd-online-international-website-application/2.12.3/default/_next/ottd-online-international-website-application-2.12.3/page/_app.js"></script>
        <script async="" crossorigin="anonymous" id="__NEXT_PAGE__/_error" src="https://webresource.tripcdn.com/ares2/activity/ottd-online-international-website-application/2.12.3/default/_next/ottd-online-international-website-application-2.12.3/page/_error.js"></script>
        <script src="https://webresource.tripcdn.com/ares2/activity/ottd-online-international-website-application/2.12.3/default/_next/static/commons/main-2.12.3.js" crossorigin="anonymous" async=""></script>
        <div>
            <script type="text/javascript" crossOrigin="anonymous">
                if (typeof head_foot_init === 'function') {
                    head_foot_init();
                }
                ;$('.li-country-click-able').click(function(event) {
                    if ($(this).data('locale-code') != 'en_us' && $(this).data('locale-code') != 'en_hk' && $(this).data('locale-code') != 'zh_hk' && $(this).data('locale-code') != 'en_gb' && $(this).data('locale-code') != 'en_my' && $(this).data('locale-code') != 'en_sg' && $(this).data('locale-code') != 'en_au' && $(this).data('locale-code') != 'ko_kr' && $(this).data('locale-code') != 'ja_jp' && $(this).data('locale-code') != 'en_xx' && $(this).data('locale-code') != 'zh_tw' && $(this).data('locale-code') != 'en_nz' && $(this).data('locale-code') != 'en_il' && $(this).data('locale-code') != 'en_sa' && $(this).data('locale-code') != 'en_ae' && $(this).data('locale-code') != 'en_ie' && $(this).data('locale-code') != 'en_ch' && $(this).data('locale-code') != 'en_be') {
                        location.href = 'https://' + $(this).data('domain') + '?locale=' + $(this).data('locale-code')
                    }
                })
                window.onload = function() {
                    try {
                        var minHeight = window.innerHeight - document.querySelector('.ottd-header').clientHeight - document.querySelector('.ottd-footer').clientHeight;
                        $('#__next').css({
                            'min-height': minHeight + 'px',
                            'box-sizing': 'border-box'
                        });
                    } catch (e) {}
                }

                window.onresize = function() {
                    try {
                        var newHeight = window.innerHeight - document.querySelector('.ottd-header').clientHeight - document.querySelector('.ottd-footer').clientHeight;
                        $('#__next').css({
                            'min-height': newHeight + 'px'
                        });
                    } catch (e) {}
                }
            </script>
        </div>
        <script crossorigin="anonymous" src="https://webresource.tripcdn.com/ares2/fx/nfesHybrid/0.0.11/default/webvitals.es5.js"></script>
</body>
</html>