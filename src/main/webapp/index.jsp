<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link rel="stylesheet" type="text/css"
	href="/nadri/repository/css/main/main_top.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="/nadri/repository/css/tripmember/loginmodal.css">

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
			<span class="popular_trip_destination">인기여행지 <input
				type="button" id="addAreaBtn" class="addButton" value="+">
			</span>


			<div class="popular_trip_destination_index_content">
				<div class="popularcitylist">
					<div class="index_content_popular">
						<div class="index_popular-dest" id="index_popular-dest"
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
											<a class="title" title="서울"
												href="/nadri/main/area?main_seq=99">서울</a>
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
									<div class="Video_module_gangneung"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/Gangneung_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/gangneung_3.jpg" alt="강릉"
											style="width: 100%; height: 100%;"></img>
										<p class="img-wrap_title">
											<a class="title" title="강릉" href="">강릉</a>
										</p>
									</div>
								</div>
							</div>

							<div class="index_popular">
								<div class="DestinationStyle">
									<i class="img-wrap"></i>
									<div class="Video_module_jeonju"
										style="width: 100%; height: 350px;">
										<video id="video" class="Video_module"
											style="width: 100%; height: 100%;" muted="muted"
											autoplay="true" loop="loop">
											<source src="/nadri/repository/img/main/Jeonju_intro.mp4"
												type="video/mp4">
										</video>
										<img class="Video_module"
											src="/nadri/repository/img/main/jeonju_7.jpg"
											style="width: 100%; height: 100%;">
										<p class="img-wrap_title">
											<a class="title" title="전주" href="">전주</a>
										</p>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>

			<!-- tripmoment -->
			<div class="index_trip_moment_con"
				style="position: relative; background-color: #fff; max-width: 1160px; margin: 0px auto;">
				<h2 class="trip_moment_title">트립 모먼트</h2>
				<div class="release_btn_con">
					<div class="release_btn">
						<a type="button" href="/nadri/tripmoment/tripmoment_writeForm" style="color: #fff;">포스팅하러 가기</a>
					</div>
				</div>
			</div>

			<!-- tripmoment slide -->
			<div class="tripmomentSlide">
				<div id="carousel_tripmoment_slide" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner" id="moment_carousel_inner"></div>
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

<script src="/nadri/repository/js/tripmember/tripmember.js"></script>
<script src="/nadri/repository/js/modal/modal.js"></script>	



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

<script type="text/javascript">
	var Video_module_gangneung = document
			.getElementsByClassName('Video_module_gangneung')[0]
	var video = document.getElementById('video')
	Video_module_gangneung.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_gangneung.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	var Video_module_jeonju = document
			.getElementsByClassName('Video_module_jeonju')[0]
	var video = document.getElementById('video')
	Video_module_jeonju.addEventListener('mouseover', function() {
		video.play()
	}, false);
	Video_module_jeonju.addEventListener('mouseout', function() {
		video.pause()
	}, false);
</script>

<script type="text/javascript">
	$(function(){
		$.ajax({
			url : '/nadri/main/mainImgPrint',
			type : 'get',
			success : function(data) {
				alert(JSON.stringify(data));
				alert('성공~');
				
			$.each(data, function(index, items){	
				
				$('<div>', {
					class : "index_popular"
				}).append($('<div>', {
					class : 'DestinationStyle'
				}).append($('<div>', {
					class : 'img-wrap'
				}).append($('<a>', {
					title: '',
					href : ''
				}).append($('<img>', {
					alt : '',
					src : '/nadri/repository/img/' + items.img_path + '/' + items.img_name
				}))).append($('<p>', {
					class : "img-wrap_title"	
				}).append($('<a>', {
					class : "title",
					title : "",
					href : "",
					text : '제주'
				}))))).appendTo($('#index_popular-dest'));
				
			})//each
				
			},
			error : function(err) {
				alert('???')
			}
		});
	});
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
function locationhref(moment_seq) {
	location.href="/nadri/tripmoment/tripmomentView?moment_seq=" + moment_seq 
	}
	
	$(function() {
		$.ajax({
			url : '/nadri/tripmoment/onTripmoment',
			type : 'get',
			success : function(data) {
				alert('성공');
				alert(JSON.stringify(data));
					var count = -1;
			        var momentCount = 1;	

				$.each(data, function(index, items){
					if(index % 4 == 0) {

			            if(index == 0) {
			              $('<div/>', {
			                class: 'carousel-item active'
			              }).append($('<div/>', {
			                class: 'card-group'
			              })).appendTo($('#moment_carousel_inner'));
			            }else {
			              $('<div/>', {
			                class: 'carousel-item'
			              }).append($('<div/>', {
			                class: 'card-group'
			              })).appendTo($('#moment_carousel_inner'));
			            }            
			            count++;
			          }
					
					$('<div>', {
						class: 'cardstyle card index_card_con',
						onclick : 'locationhref('+ items.moment_seq + ')'
					}).append($('<div>', {
						style: 'padding-bottom: 106%', 
						class: 'slide_img'
					}).append($('<div>', {
						class: 'img'
					}).append($('<img>', {
						src: '/nadri/repository/img/' + items.img_path + '/' + items.img_name,
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
					})))).appendTo($('#moment_carousel_inner .card-group:eq(' + count + ')'));
				})//each
				
			},
			error : function(err) {
				alert('실패')
			}
		});
	});
</script>
<!-- -->
</html>