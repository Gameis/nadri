<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/nadri/repository/css/tripmoment/tripmomentWriteForm.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div>

		<div class="travel_guide_root_class">
			<div class="PublishMainContainer">
				<div class="PublishCenterContainer ">
					<h1 class="title">트립 모먼트 작성하기</h1>
					<div class="PublishImageContainer publish tripmt">
						<p class="image-warn image-warn-h5" style="display: block;">하나
							이상의 사진을 추가해주세요.</p>
						<div class="publish-title">사진 업로드</div>
						<p class="sub-title">여행 특징이 담긴 사진을 업로드해주세요.</p>
						<form action="" id="uploadImageForm" method="post" class="photos"
							enctype="application/x-www-form-urlencoded">
							<div class="add li h5">
								<div class="cell">
									<div class="icon-upload">
										<svg xmlns="http://www.w3.org/2000/svg" fill="currentColor"
											class="bi bi-camera-fill" viewBox="0 0 16 16">
  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
  <path
												d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z" />
</svg>
									</div>
									<p class="current-total">
										0
										<!--  -->
										/
										<!--  -->
										20
									</p>
									<input type="file" multiple name="image" accept="image/*"
										class="image-upload">
								</div>
							</div>
						</form>
						<p class="image-warn image-warn-online">하나 이상의 사진을 추가해주세요.</p>
					</div>
					<!-- 제목 추가 -->
					<div class="PublishTitleContainer">
						<div class="publish-title">
							제목 추가 <span class="supplement">(선택)</span>
						</div>
						<input type="text" placeholder="제목이 포함된 게시글은 인기글로 선정될 확률이 높아요.">
					</div>

					<div class="PublishContentContainer">
						<div class="nadritripmoment publish-title">
							여행 스토리를 공유해주세요! <span class="supplement">(선택)</span>
						</div>
						<div class="nadritripmoment input">
							<div id="textarea"
								placeholder="나만의 여행 스토리를 다른 여행자와 함께 공유해보세요! 특별한 사진을 추가하면 더 많은 여행자들이 볼 수 있어요. (예시 : 여행 팁, 맛집, 카페 등 추천)"
								class="nadritripmoment" contenteditable="true" data-tribute="true"></div>
							<div class="nadritripmoment tipsView">
								<span class="nadritripmoment tipsContent">50자 이상 작성 시, </span> <span
									class="nadritripmoment tipsReword"> &nbsp; '최고에요' 태그 게시물
								</span> <span class="nadritripmoment tipsContent"> 선정 기회 </span>
							</div>
						</div>
					</div>
					<!-- 위치 추가 -->
					<div class="PublishLocationContainer tripmt location-view">
						<div class="location-view-for-online">
							<div class="publish-title">위치 추가</div>
							<div class="location-input false" id="location">
								<i class="input-tips-left">하나 이상의 위치를 선택해주세요.</i> <i
									class="input-tips-right"></i> <input type="text"
									placeholder="위치를 추가해주세요.">
							</div>
						</div>
					</div>
					<div class="PublicPrivacyContainer tripmt-pv">
						<div class="agreement">
							<div class="checkbox">
								<img alt="checkbox"
									src="/nadri/repository/img/main/checkbox.png"
									class="checkbox-icon"> <span class="privacy-text">콘텐츠
									업로드에 있어서, 트립닷컴의 이용약관에 동의합니다.</span> <a class="protocol"
									href="https://pages.trip.com/m/service-clause-ko-kr.html">이용약관</a>
							</div>
						</div>
					</div>
					<div class="PublishSubmitContainer tripmt-pv">
						<div class="submit">확인</div>
					</div>
				</div>
				<!-- PublishImageContainer -->
			</div>
			<!-- PublishMainContainer -->
		</div>

		<!-- footer -->
		<div id="wrap_foot">
			<footer>
				<jsp:include page="../main/main_footer.jsp">
					<jsp:param value="param1" name="param1" />
				</jsp:include>
			</footer>
		</div>
	</div>
	
<script type="text/javascript">
	$(function(){
		
	});
</script>	
</body>
</html>