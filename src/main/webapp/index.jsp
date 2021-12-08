<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link href="/nadri/repository/img/main/trip.ico" rel="shortcut icon"
	type="image/x-icon">
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- Header -->
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
							<input class="search_content" id="searchInput"
								style="text-overflow: ellipsis;"
								placeholder="여행지, 명소, 호텔 등으로 검색">
							<!-- 한줄라인 글자수 제한 / 양식에 안내문구 추가하기 -->
							<!-- <div class="dropdown-content" id="dropdown-content">
								<a href="#" id="dropdown-list-a"> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg> 서울
								</a> <a href="#" dropdown-list-a> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
  									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg> 제주
								</a> <a href="#" dropdown-list-a> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-geo-alt-fill"
										viewBox="0 0 16 16">
									<path
											d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
									</svg>서귀포
								</a>
							</div> -->
						</div>
						<div class="con_search_button">
							<button type="submit" class="con_search_button_icon">
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

							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_seoul"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/Seoul_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/seoul_3.jpg" alt="서울"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="서울" href="">서울</a>
										</p>
									</div>
								</div>
							</div>
							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_jeju"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/Jeju_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/jeju_2.jpg" alt="제주"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="제주" href="">제주</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular">
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

							<div class="index_popular">
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

							<div class="index_popular">
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

							<div class="index_popular">
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

							<div class="index_popular">
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

							<div class="index_popular">
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
				<div id="carousel_tripmoment_slide" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">

							<!-- card 전체 -->
							<div class="card-group" id="test">



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
						data-bs-target="#carousel_tripmoment_slide" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carousel_tripmoment_slide" data-bs-slide="next">
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
<!-- 검색창 자동 완성 기능 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	List = [ "명동", "종로2가사거리", "창경궁.서울대학교병원", "명륜3가.성대입구", "종로2가.삼일교",
			"혜화동로터리.여운형활동터", "서대문역사거리", "서울역사박물관.경희궁앞", "서울역사박물관.경희궁앞", "광화문",
			"광화문", "종로1가", "종로1가", "종로2가", "종로2가", "종로3가.탑골공원", "종로3가.탑골공원",
			"종로4가.종묘", "종로4가.종묘", "종로5가.광장시장", "종로5가.광장시장", "종로6가.동대문종합시장",
			"종로6가.동대문종합시장", "동대문역.흥인지문", "동대문(흥인지문)", "동묘앞", "동묘앞", "경기상고",
			"신교동", "경기상고", "경복고교", "청운중학교", "자하문고개.윤동주문학관", "자하문고개.윤동주문학관",
			"청운중학교", "경복고교", "통인시장종로구보건소", "통인시장종로구보건소", "효자동", "사직단.어린이도서관",
			"사직동주민센터", "경복궁역", "경복궁역", "경복궁", "KT광화문지사", "광화문",
			"서울역사박물관.경교장.강북삼성병원", "광화문.금호아시아나본관앞", "광화문", "세종문화회관",
			"서울지방경찰청.경복궁역", "사직단", "광화문광화문빌딩", "덕성여중고", "안국역.종로경찰서.인사동",
			"국민은행세검정지점", "세검정초등학교", "세검정.상명대", "상명대입구.석파랑", "하림각",
			"자하문터널입구.석파정", "부암동주민센터.무계원", "부암동주민센터.무계원", "자하문터널입구.석파정", "하림각",
			"상명대입구.세검정교회", "세검정.상명대", "세검정초등학교", "국민은행세검정지점", "승가사입구",
			"구기동현대빌라", "구기터널.삼성출판박물관", "구기터널.삼성출판박물관", "구기동", "구기동", "승가사입구",
			"갑을씨티텔앞", "평창파출소", "평창동주민센터", "일성아파트", "롯데아파트", "롯데아파트",
			"벽산평창힐스아파트", "예능교회", "서울예술고등학교.평창동주민센터", "화정박물관", "강북삼성병원",
			"독립문역.서대문형무소역사관", "서대문.서울시교육청", "서대문역사거리.적십자병원", "독립문",
			"창덕궁.서울돈화문국악당", "무교동", "청계1가.광교", "청계2가.수표교", "청계4가.세운교",
			"청계5가.광장시장", "원남동", "창덕궁.우리소리박물관", "안국역.종로경찰서.인사동", "조계사",
	// ... 10891개 데이터 생략
	]
	$(function() {
		$("#searchInput").autocomplete({
			source : List,
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength : 1,// 최소 글자수
			delay : 100, //autocomplete 딜레이 시간(ms)
		//disabled: true, //자동완성 기능 끄기
		});
	});
</script>


<!-- video mouseover 시 재생 -->
<script type="text/javascript">
	var Video_module_seoul = document
			.getElementsByClassName('Video_module_seoul')[0]
	var video = document.getElementById('video')
	Video_module_seoul.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_seoul.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

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
		$.ajax({
			url : '/nadri/tripmoment/onTripmoment',
			type : 'get',
			success : function(data) {
				alert('성공');
				alert(JSON.stringify(data));
				
				$.each(data, function(index, items){
					$('<div>', {
						class: 'cardstyle card index_card_con'
					}).append($('<div>', {
						style: 'padding-bottom: 106%', 
						class: 'slide_img'
					}).append($('<div>', {
						class: 'img'
					}).append($('<img>', {
						src: '/nadri/repository/img/' + items.img_path + '/popmain/' + items.img_name,
						class: 'card-img-top',
						alt: '트립1'
					})))).append($('<div>', {
						class: 'bottom_con'
					}).append($('<div>', {
						style: '-webkit-box-orient: vertical', 
						class: 'bottom_desc',
						text: items.moment_content
					})).append($('<div>', {
						class: 'bottom_user_left'
					}).append($('<i>', {
						class: 'bi bi-person-circle'
					})).append($('<span>', {
						text: '개복치'
					}))).append($('<div>', {
						class: 'bottom_user_right'
					}).append($('<img>', {
						src: "/nadri/repository/img/main/thumb.png"
					})).append($('<span>', {
						text : '34'
					})))).appendTo($('#test'));
				})//each
				
			},
			error : function(err) {
				alert('실패')
			}
		});
	});
</script>
</html>