<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form id="popWriteForm">
    	<input type="hidden" name="content_seq" id="content_seq" value="3">
    	<input type="hidden" name="main_seq" id="main_seq" value="99"/>
        명소이름 : <input type="text" name="pop_name" id="pop_name">
        영업시간 : <input type="text" name="pop_businessTime" id="pop_businessTime">
        관광시간 : <input type="text" name="pop_tourismTime" id="pop_tourismTime">
        전화번호 : <input type="text" name="pop_call" id="pop_call">
        x : <input type="text" name="map_x" id="map_x">
        y : <input type="text" name="map_y" id="map_y">
        이미지 : <input type="file" name="img[]" id="img" multiple>
        <input type="button" id="popWriteBtn" value="작성완료">
        <input type="reset" value="다시작성">
    </form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/nadri/repository/js/area/area.js"></script>
</body>
</html>