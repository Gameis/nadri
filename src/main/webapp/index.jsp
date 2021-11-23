<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
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
		<div class="trip_main_index_top">
			<div class="trip_main_con_search">
				<!-- 검색란 이미지 -->
				<img alt="트립가이드검색" src="/nadri/repository/img/main/main_top_con.png">
			</div>
			<div class="index_top_title">
				<h1>트립 가이드</h1>
			</div>
			<div class="con_search_contain">
				<div class="con_search_box">
					<div class="con_search_box_text_input">
						<input style="text-overflow: ellipsis;"
							placeholder="여행지, 명소, 호텔 등으로 검색">
						<!-- 한줄라인 글자수 제한 / 양식에 안내문구 추가하기 -->
					</div>
					<div class="con_search_button">
						<div class="con_search_button_icon"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="component-destinationrecommend burited_point">
		<div class="description">
			<img alt="서울" src="./repository/img/main/trip.png"> <span
				class="span-destination">서울</span> <span> 매력 탐구</span>
		</div>
		<a href="">
			<div class="button">더 보기</div>
		</a>
	</div>
	<span class="popular_trip_destination">인기여행지</span>
	<div class="popular_trip_destination_index_content">
		<div class="popularcitylist">
			<div class="index_content_popular">
				<div class="index_popular-dest"
					style="z-index: 1; position: relative">
					<div class="index_popular-dest_seoul">
						<div class="DestinationStyle">
							<i class="JGMKr_seoul"></i>
							<div class="img-wrap">
								<a title="서울" href=""> <img alt="서울"
									src="./repository/img/main/seoul_1.jpg">
								</a>
								<p class="img-wrap_title">
									<a class="title" title="서울" href="">서울</a>
								</p>
							</div>
						</div>
					</div>
					<div class="index_popular-dest_seoul">
						<div class="DestinationStyle">
							<i class="JGMKr_seoul"></i>
							<div class="Video_module_jeju"
								style="width: 100%; height: 350px;">
								<video autoplay muted loop controls
									src="./repository/img/main/Jeju_intro.mp4" class="Video_module"
									style="width: 100%; height: 100%;"></video>
								<img src="./repository/img/main/jeju_2.jpg" alt="제주사진좀보여주라좀"></img>
								<p class="img-wrap_title">
									<a class="title" title="제주" href="">제주</a>
								</p>
							</div>
						</div>
					</div>

					<div class="index_popular-dest_jeju">
						<div class="DestinationStyle">
							<i class="JGMKr_jeju"></i>
							<div class="img-wrap">
								<a title="" href=""> <img alt=""
									src="./repository/img/main/jeju_1.jpg">
								</a>
								<p class="img-wrap_title">
									<a class="title" title="" href=""></a>
								</p>
							</div>
						</div>
					</div>

					<div class="index_popular-dest_jeju">
						<div class="DestinationStyle">
							<i class="JGMKr"></i>
							<div class="img-wrap">
								<a title="" href=""> <img alt=""
									src="./repository/img/main/jeju_1.jpg">
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
		<div class="index_trip_moment_con"
			style="position: relative; background-color: #fff; max-width: 1160px; margin: 0px auto;">
			<h2 class="trip_moment_title">트립 모먼트</h2>
			<div class="release_btn_con">
				<div class="release_btn">포스팅하러 가기</div>
			</div>

			<!-- tripmoment slide -->
			<div id="tripmoment_slide">
				<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="card-group">
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="./repository/img/main/trip_seoul_1.jpg"
										class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="card-group">
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
								<div class="card">
									<img src="..." class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text"></p>
									</div>
								</div>
							</div>
						</div>

						<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div id="wrap_foot">
		<footer>
			<jsp:include page="./repository/jsp/main/main_footer.jsp">
				<jsp:param value="param1" name="param1" />
			</jsp:include>
		</footer>
	</div>
</body>
<script type="text/javascript">
	
</script>
</html>