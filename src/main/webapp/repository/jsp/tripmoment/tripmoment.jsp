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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>

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

		<!-- Tripmoment Image Carousel -->
		<div style="margin-top: 8px; width: 100%;">
			<div class="PhotoStyle photo_style">
				<div class="imageGallery">
					<div class="carouselWrap">
						<div class="carousel_list_imgs_list">
							<div class="image-gallery" aria-live="polite">
								<div class="image-gallery-content">
									<div class="image-gallery-slide-wrapper bottom">
										<div id="carouselExampleFade"
											class="carousel slide carousel-fade" data-bs-ride="carousel">
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
												<span class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#carouselExampleFade" data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Next</span>
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
											<div class="image-gallery-thumbnails-container"
												style="transform: translated3d(0px, 0px, 0px);" ThumbnailNavigation">
												<a role="button" aria-pressed="true"
													aria-label="Go to Slide 1"
													class="image-gallery-thumbnail image-gallery-thumbnail-photo-list active overview-list">

													<div class="row row-cols-4">
														<img class="col"
															src="https://youimg1.tripcdn.com/target/fd/tg/g3/M01/83/94/CggYGVXNv0KAUby6AAi8ubLd568706_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
													</div>
													
													
												</a> <img class="col"
													src="https://youimg1.tripcdn.com/target/fd/tg/g4/M0B/85/21/CggYHlXNv0uAe0xFAAr3ntqKZYk621_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
												<img class="col"
													src="https://youimg1.tripcdn.com/target/10050z000000nf6sl9C57_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
												<img class="col"
													src="https://youimg1.tripcdn.com/target/100s1f000001gx70tD814_C_196_150.jpg_.webp?proc=source%2ftrip"></img>
											</div>
											<!-- image-gallery-thumbnails-container -->
										</div>
									</div>
									<!-- image-gallery-thumbnails-wrapper container -->
								
							</div>
						</div>
					</div>
				</div>
				<!-- imageGallery -->
				<div class='BoxRight box-right'
					style="height: 950px; position: relative; z-index: 0"></div>
				<!-- BoxRight -->
			</div>
			<!-- PhotoStyle -->
		</div>
	</div>
	<!-- tripmoment -->

</body>
</html>