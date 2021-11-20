<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전 세계 인기 여행지 & 꼭 가봐야 할 명소 추천 | 트립닷컴</title>
<link rel="stylesheet" type="text/css" href="/nadri/repository/css/main/main_top.css">
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
				<img alt="트립가이드검색" src="/nadri/repository/img/main/main_top_con.png" ba>
			</div>
			<div class="index_top_title">
				<h1>트립 가이드</h1>
			</div>
			<div class="con_search_contain">
				<div class="con_search_box">
					<div class="con_search_box_text_input">
						<input style="text-overflow: ellipsis;" placeholder="여행지, 명소, 호텔 등으로 검색">
						<!-- 한줄라인 글자수 제한 / 양식에 안내문구 추가하기 -->

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