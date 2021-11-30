<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="/nadri/repository/css/tripmoment/tripmoment.css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>


	<div class="travel_guide_root_class">
		<div class="TravelDetailContainer">
			<div id="tripmoment">
				<!-- 경로 및 검색창 -->
				<div class="tripmoment_path">
					<div class="tripmomentPath">
						<div class="tripmomentPathItem">
							<a href="#">홈</a>
						</div>
						<div class="tripmomentPathItem">
							<a href="#">트립 가이드</a>
						</div>
						<div class="tripmomentPathItem">
							<a href="#">아시아</a>
						</div>
						<div class="tripmomentPathItem">
							<a href="#">대한민국</a>
						</div>
						<div class="tripmomentPathItem">
							<a href="#">서울</a>
						</div>
					</div>
					<div class="tripmomentSearch">
						<div class="tripmomentSearch_input">
							<input type="text" placeholder="여행지, 명소, 호텔 등으로 검색">
						</div>
						<div class="tripmomentSearch_button">
							<div class="tripmomentSearch_icon"></div>
						</div>
					</div>
				</div>

				<!-- Tripmoment container -->
				<div style="margin-top: 8px; width: 100%;">
					<div class="PhotoStyle photo_style">
						<div class="imageGallery">
							<div class="carouselWrap">
								<div class="carousel_list_imgs_list">
									<div class="image-gallery" aria-live="polite">
										<div class="image-gallery-content">
											<div class="image-gallery-slide-wrapper bottom">
												<div id="carouselExampleFade"
													class="carousel slide carousel-fade"
													data-bs-ride="carousel">
													<div class="carousel-inner">
														<div class="carousel-item active">
															<img
																src="https://youimg1.tripcdn.com/target/100s1f000001gx70tD814_C_640_470.jpg_.webp?proc=source%2ftrip"
																class="d-block w-100" alt="...">
														</div>
														<div class="carousel-item">
															<img
																src="https://youimg1.tripcdn.com/target/fd/tg/g3/M01/83/94/CggYGVXNv0KAUby6AAi8ubLd568706_C_640_470.jpg_.webp?proc=source%2ftrip"
																class="d-block w-100" alt="...">
														</div>
														<div class="carousel-item">
															<img
																src="https://youimg1.tripcdn.com/target/fd/tg/g4/M0B/85/21/CggYHlXNv0uAe0xFAAr3ntqKZYk621_C_640_470.jpg_.webp?proc=source%2ftrip"
																class="d-block w-100" alt="...">
														</div>
													</div>
													<button class="carousel-control-prev" type="button"
														data-bs-target="#carouselExampleFade" data-bs-slide="prev">
														<span class="carousel-control-prev-icon"
															aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
													</button>
													<button class="carousel-control-next" type="button"
														data-bs-target="#carouselExampleFade" data-bs-slide="next">
														<span class="carousel-control-next-icon"
															aria-hidden="true"></span> <span class="visually-hidden">Next</span>
													</button>
												</div>

												<div class="image-gallery-index">
													<span class="image-gallery-index-current">1</span> <span
														class="image-gallery-index-separator">/</span> <span
														class="image-gallery-index-total">8</span>
												</div>
											</div>
											<!-- image-gallery-slide-wrapper bottom -->

											<!-- thumbnails -->
											<div
												class="image-gallery-thumbnails-wrapper container image-gallery-overview">
												<div class="image-gallery-thumbnails">
													<div>
														<button type="button"
															class="image-gallery-left-nav image-gallery-overview-left-nav">
															<i class="c-icon icon-back-top arrow-left"></i>
														</button>

														<button type="button"
															class="image-gallery-right-nav image-gallery-overview-right-nav">
															<i class="c-icon icon-back-top arrow-right"></i>
														</button>
													</div>
													<div class="row row-cols-4"
														style="transform: translated3d(-516px, 0px, 0px);"ThumbnailNavigation">

														<a role="button" aria-pressed="true"
															aria-label="Go to Slide 3"
															class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">
															<img class="col"
															src="/nadri/repository/img/main/seoul_1.jpg"></img>
														</a> <a role="button" aria-pressed="true"
															aria-label="Go to Slide 3"
															class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">
															<img class="col"
															src="/nadri/repository/img/main/seoul_1.jpg"></img>
														</a> <a role="button" aria-pressed="true"
															aria-label="Go to Slide 3"
															class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">
															<img class="col"
															src="/nadri/repository/img/main/seoul_1.jpg"></img>
														</a> <a role="button" aria-pressed="true"
															aria-label="Go to Slide 3"
															class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">
															<img class="col"
															src="/nadri/repository/img/main/seoul_1.jpg"></img>
														</a> <a role="button" aria-pressed="true"
															aria-label="Go to Slide 4"
															class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">
															<img class="col"
															src="/nadri/repository/img/main/seoul_1.jpg"></img>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- BoxRight -->
						<div class='BoxRight box-right'
							style="height: 950px; position: relative; z-index: 0">
							<div class="trip_User trip_moment_user userContainer">
								<div class="trip_container">
									<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
										fill="currentColor" class="bi bi-person-circle"
										viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
											d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
								</div>
								<span class="nickname">귤좋아하는배찌</span>
							</div>

							<!-- scroll_content start -->
							<div class="scroll_content">
								<div class="article_title">🎈🎈🎈서울 추천 맛집🎈🎈🎈</div>
								<div class="article_content"
									style="position: relative; overflow: hidden;">
									<div style="white-space: pre-line;" class="content_collapse">
										광교에 오시는 분들에게 좋은 맛집과 걷기좋은 곳 알려드릴게요 ! ☑️ 에이프론 위치 : 경기 수원시 영통구
										센트럴파크로127번길 138 1층Apron 시간 : 10:00-21:00 (* 공용주차장이있는데 넓지가않아서
										골목 중간중간에 대여할 수도 있습니다) 추천하는 메뉴는 수제 토마토소스가 매력적인 햄앤치즈 샤워도우 토스트 /
										갈릭칠리새우 오일 파스타 👍🏻 맛집이라고 소문난 곳이라 꼭 한번 가보세요!! - 다 드시고나서 조용한데
										경치좋은 산책코스는 광교 저수지 인데요 !! 봄에는 벚꽃이, 가을에는 단풍이 들어서 정말 예쁘답니다 그래서
										점심이나 저녁드리시고 걷는거 좋아하시는 분들은 추천드려요 ❤️ #광교여행 #단풍 #카페거리 #광교 #겨울을부탁해</div>

									<div
										style="background-color: rgb(255, 255, 255); width: 30px; height: 22px; position: absolute; bottom: 0px; right: 0px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-arrow-down"
											viewBox="0 0 16 16">
  <path fill-rule="evenodd"
												d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z" />
</svg>
									</div>
								</div>
								<div class="time">작성일 : 2020년 11월 29일</div>
								<div style="background-color: #dadfe6; height: 1px"></div>
								<div class="vote_list">
									<div style="width: 24px; height: 24px; margin-right: 16px">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
  <path
												d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
</svg>
									</div>
									<div class="user_profile vote_head_container">
										<svg xmlns="http://www.w3.org/2000/svg" fill="currentColor"
											class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
												d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
									</div>
									<svg width="32" height="32" viewBox="0 0 256 256">
										<defs>
										<style></style></defs>
										<path
											d="M128 240c-61.856 0-112-50.144-112-112S66.144 16 128 16s112 50.144 112 112-50.144 112-112 112zM64 138.667h21.333v-21.334H64v21.334zm53.333 0h21.334v-21.334h-21.334v21.334zm53.334 0H192v-21.334h-21.333v21.334z"
											fill="#DADFE6"></path></svg>
									<div class="vote_text">- 명이 해당 게시물을 좋아합니다</div>
								</div>
							</div>
							<!-- scroll content End -->
							<div class="like input_view">
								<div class="like input_phaise_container">
									<div class="like">
										<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
											fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
  <path
												d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
</svg>
									</div>
								</div>
								<div class="like_btn textarea_container">
									<div class="like textarea_2" contenteditable="true" placeholder="댓글을 남겨주세요"></div>
								</div>
								<div class="like submit" style="#287DFA88">확인</div>
							</div>
						</div>
						<!-- BoxRight End -->
					</div>
				</div>
			</div>
		</div>
		<!-- TravelDetailContainer -->
	</div>

	<script type="text/javascript"
		src="/nadri/repository/js/tripmoment/tripmoment.js"></script>
</body>
</html>