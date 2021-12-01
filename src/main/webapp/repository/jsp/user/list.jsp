<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img alt="기본이미지" src="/nadri/repository/img/user/defaultimage.jfif" width="70" height="70" 
style="cursor:pointer;" onclick="location.href='/nadri/repository/jsp/user/imageForm.jsp'">
<h3 style="display:inline;color:green;">등록된 이미지</h3>
	<table id="table" border="1" cellspacing="0" cellpadding="5">
		<tr>
			<th width="100">이름</th>
			<th width="100">아이디</th>
			<th width="100">이메일</th>
			<th width="100">핸드폰</th>	
			<th width="100">주소</th>	
			<th width="100">가입일</th>	
		</tr>			
			
	</table>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/nadri/repository/js/user/list.js"></script>	
</body>
</html>