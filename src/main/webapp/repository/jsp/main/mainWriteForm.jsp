<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="mainWriteForm">
		<input type="hidden" name="content_seq" id="content_seq" value="1" /><br />
		지역이름 : <input type="text" name="main_name" id="main_name"><br />
		지역정보 : <input type="text" name="main_info" id="main_info"><br />

		메인이미지 : <input type="file" name="main_img" id="main_img" /><br /> 지역
		지역이미지 : <input type="file" name="areaMain_img" id="areaMain_img" /><br />
		이미지 : <input type="file" name="img[]" id="img" multiple /><br />
		지도이미지 : <input type="file" name="map" id="map" multiple /><br /> <input
			type="button" id="mainWriteBtn" value="작성완료" /> <input type="reset"
			value="다시작성" />
	</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	$('#mainWriteBtn').click(function() {
		var formData = new FormData($('#mainWriteForm')[0]);
		$.ajax({
			url : '/nadri/main/mainWrite',
			type : 'post',
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			data : formData,
			success : function() {
				alert('성공');
			},
			error : function() {
				alert('실패');
			}
		});
	});
});
</script>
</body>
</html>