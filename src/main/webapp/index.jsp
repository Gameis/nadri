<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link href="/nadri/repository/img/main/trip.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="./repository/css/main/main_con.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="trip_common_head_con">
		<jsp:include page="./repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div>

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
							<input class="search_content" id="search_content"
								style="text-overflow: ellipsis;"
								placeholder="여행지, 명소, 호텔 등으로 검색" onclick="dis()">
							<!-- 한줄라인 글자수 제한 / 양식에 안내문구 추가하기 -->
							<div class="dropdown-content" id="dropdown-content">
								<a href="#" id="dropdown-list-a"><svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  <path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
</svg> 서울</a> <a href="#" dropdown-list-a><svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  <path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
</svg></i> 제주</a> <a href="#" dropdown-list-a><svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  <path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
</svg></i> 서귀포 </a>
							</div>
						</div>
						<div class="con_search_button">
							<div class="con_search_button_icon"></div>
						</div>

					</div>
				</div>
			</div>

			<!-- 매력 탐구 리스트 -->
			<div class="component-destinationrecommend burited_point">
				<div class="description">
					<img alt="서울" src="./repository/img/main/trip.png"> <span
						class="span-destination">서울</span> <span> 매력 탐구</span>
				</div>
				<a href="">
					<div class="button">더 보기</div>
				</a>
			</div>

			<!-- 인기여행지 -->
			<span class="popular_trip_destination">인기여행지</span>

			<div class="popular_trip_destination_index_content">
				<div class="popularcitylist">
					<div class="index_content_popular">
						<div class="index_popular-dest"
							style="z-index: 1; position: relative">

							<div class="index_popular-dest_seoul">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_seoul"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;">
											<source src="./repository/img/main/Seoul_intro.mp4"
												type="video/mp4">
										</video>
										<img alt="서울" class="Video_module"
											src="./repository/img/main/seoul_3.jpg"
											style="width: 100%; height: 100%;">
										<p class="img-wrap_title">
											<a class="title" title="서울" href="">서울</a>
										</p>
									</div>
								</div>
							</div>
							<div class="index_popular-dest_jeju">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_jeju"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;">
											<source src="./repository/img/main/Jeju_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="./repository/img/main/jeju_2.jpg" alt="제주"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="제주" href="">제주</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular-dest_gangneung">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_suwon"
										style="width: 100%; height: 350px;">
										<img class="Video_module"
											src="./repository/img/main/seoul_4.jpg" alt="제주"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="수원" href="">수원</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular-dest_jeju">
								<div class="DestinationStyle">
									<div class="img-wrap">
										<a title="" href=""> <img alt=""
											src="./repository/img/main/jeonju_1.jpg">
										</a>
										<p class="img-wrap_title">
											<a class="title" title="" href=""></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="MoreBtnStyle">
							<a style="margin-top: unset" title="인기 여행지 더 보기" href=""
								class="moreBtn">인기 여행지 더 보기</a>
						</div>
					</div>
				</div>
			</div>

			<!-- tripmoment -->
			<div class="index_trip_moment_con"
				style="position: relative; background-color: #fff; max-width: 1160px; margin: 0px auto;">
				<h2 class="trip_moment_title">트립 모먼트</h2>
				<div class="release_btn_con">
					<div class="release_btn">포스팅하러 가기</div>
				</div>
			</div>

			<!-- tripmoment slide -->
			<div class="tripmomentSlide">
				<div style="overflow: hidden" id="carousel_tripmoment_slide"
					class="carousel-slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">

							<!-- card 전체 -->
							<div class="card-group">
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="card-group">
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>개복치</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="card-group">
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>망개떡</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>찹쌀떡</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											여행하는 뚜벅이 대구대구 이월드 대구 이월드에서 따뜻한 겨울 보내기 대구에 놀이기구를 타러 이월드에 다녀왔어요
											예전 우방랜드때부터 즐겨가곤 했는데 그 이후에는 대구 갈 일도 크게 없어서 방문을 못하고 있다가 며칠 전에
											친구들과 이월드에 가게 되었어요! 역시나 놀이기구도 재미있고 단풍시즌이라서 그런지 풍경도 굉장히
											멋졌습니다.~!</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>말랑한귤</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
								<div class="cardstyle card index_card_con">
									<div style="padding-bottom: 106%" class="slide_img">
										<div class="img">
											<img src="/nadri/repository/img/main/seoul_2.jpg"
												class="card-img-top" alt="트립1">
										</div>
									</div>
									<div class="bottom_con">
										<div style="-webkit-box-orient: vertical" class="bottom_desc">
											바뀌는 거 맞는지 아닌지 확인 좀 해보자 내 버튼은 어디갔냐</div>
										<div class="bottom_user_con">
											<div class="bottom_user_left">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-person-circle"
													viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  <path fill-rule="evenodd"
														d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
												<span>모찌떡</span>
											</div>
											<div class="bottom_user_right">
												<img src="./repository/img/main/thumb.png">
												<!-- 좋아요 아이콘 -->
												<span>34</span>
												<!-- 좋아요 수 -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#areaHotel_slide" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#areaHotel_slide" data-bs-slide="next">
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
<!-- video mouseover 시 재생 -->
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
	$(function() {
		$("#search").click(
				function() {
					$(this).prop('id', 'dropdown-content')
					$('#dropdown-content').slideToggle(200);
					if ($('#dropdown-content').val() == 'visible') {
						$('#dropdown-content').val('hidden');
						$('.dropdown-content').parent().hover(
								function() {
									$('.dropdown-content').prop('style',
											'display: none;');
								});

					} else if ($('#dropdown-content').val() == 'hidden') {
						$('#dropdown-content').val('visible');
						$('.dropdown-content').parent().hover(
								function() {
									$('this').find('.dropdown-content').prop(
											'style', 'display: block;');
								},
								function() {
									$('this').find('.dropdown-content').prop(
											'style', 'display: none;');
								});
					}
				});
	});
</script>


</html>