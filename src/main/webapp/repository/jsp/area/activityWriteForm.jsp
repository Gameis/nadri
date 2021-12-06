<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="hidden" name="content_seq" id="content_seq" value="3"/>
    	<input type="hidden" name="main_seq" id="main_seq" value="99"/>
   		액티비티 이름 : <input type="text" name="activity_name" id="activity_name">
		액티비티 핵심 포인트 : <input type="text" name="activity_point" id="activity_point">
		액티비티 가격 : <input type="text" name="activity_price" id="activity_price">
		옵션 <input type="checkbox" name="activity_option" id="activity_option">
		유효 기간 <input type="text" name="activity_validDate" id="activity_validDate">
		포함 사항 <input type="text" name="activity_inclusion" id="activity_inclusion">
		취소 및 환불 규정 <input type="text" name="activity_refund" id="activity_refund">
		사용방법 <input type="text" name="" id="">
	</form>
</body>
</html>