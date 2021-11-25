<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액티비티</title>
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_top.css">
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_footer.css">
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_con.css">

</head>
<body>
<!-- 헤드 -->
<div class="content-containar">

<div class="trip_common_head_con">
		<jsp:include page="/repository/jsp/main/main_top.jsp">
			<jsp:param value="param1" name="param1" />
		</jsp:include>
	</div>

	<!-- 검색창 -->
	<div class=""></div>



<!-- 메인 -->
	<!-- 상단 메뉴  -->
	<div class="content-category">
		<div class="category-list">
			<span class="category-item-text">전체</span>
			<span class="category-item-text">명소 & 공연</span>
			<span class="category-item-text">이색 체험</span>
			<span class="category-item-text">WI-FI & 유심</span>
		</div>	
	</div>	
	
	<!-- 왼쪽 카테고리 -->
	<div class="left-content-containar">
		<div class="filter-containar">
			<div class="filter-title-city">도시</div>
			
			<div class="filter-data-city">
				<div id="서울" class="select-name">서울</div>
				<div id="부산" class="select-name">부산</div>
				<div id="제주" class="select-name">제주</div>
			</div>
		</div>
		
		<div class="filter- containar"></div>
			<div class="filter-title-date">출발 날짜</div>
			
			<div class="filter-data-date">
				<div id="오늘" class="select-day">오늘</div>
				<div id="내일" class="select-day">내일</div>
				<div id="날짜 선택" class="select-day">날짜선택</div>
			</div>
			
		<div class="filter- containar"></div>
	
	</div>
	
	<!-- 오른쪽 카테고리  -->
	<div class="right-content-containar">
		<div class="content-containar">
			<div class="content-list">
				<h3 class="search-result">
					"액티비티 검색결과 총 "
					<span class="result-count">5</span>
					"개"
				</h3>
				<div class="filter-container"></div>
				<div class="sort">
					<div class="sort1" id="sort1">추천순</div>
					<div class="sort2" id="sort2">평점순</div>
					<div class="sort3" id="sort3">가격(높은순)</div>
				</div>
			</div>
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
	
</div>
</body>
</html>