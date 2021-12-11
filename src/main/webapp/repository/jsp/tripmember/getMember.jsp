<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img alt="기본이미지" src="/nadri/repository/img/member/defaultimage.jfif" width="70" height="70" 
style="cursor:pointer;" onclick="location.href='/nadri/repository/jsp/member/imageForm.jsp'">
<h3 style="display:inline;color:green;">등록된 이미지</h3>

	<table id="memberTable" border="0" cellspacing="0" cellpadding="5" width="1000">
					
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" id="name" readonly>

			</td>
		</tr>
		
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="id" id="id" readonly>
			</td>
		</tr>
		
		<tr>
			<td>email</td>
			<td>
				<input type="text" name="email" id="email" readonly>
	
			</td>
		</tr>	
		
		<tr>
			<td>전화번호</td>
			<td>
				<input type="text" name="tel" id="tel" readonly>
	
			</td>
		</tr>	
		
		<tr>
			<td>주소</td>
			<td>
				<input type="text" name="add" id="add" readonly>
			</td>
		</tr>								

		<tr>
			<td>트립코인</td>
			<td>
				<input type="text" name="coin" id="coin" readonly>
			</td>
		</tr>

		<tr>
			<td>회원등급</td>
			<td>
				<input type="text" name="rank" id="rank" readonly>
			</td>
		</tr>
		
		<tr>
			<td>작성한 글목록</td>
			<td>
				<input type="text" name="write" id="write" readonly>
			</td>
		</tr>
		
		<tr>
			<td>가입일</td>
			<td>
				<input type="text" name="date" id="date" readonly>
			</td>
		</tr>	
										
	</table>
	
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

$(function(){
	$.ajax({
		
		url: '/nadri/member/getMemberInfo',
		type: 'post',
		dataType: 'json',
		success:function(data){
			console.log(JSON.stringify(data));	
		
			$('#name').val(data.name);
			$('#id').val(data.id);

			$('#email').val(data.email1+"@"+data.email2);
			$('#tel').val(data.tel1+"-"+data.tel2+"-"+data.tel3);
			$('#add').val(data.zipcode+" "+data.addr1+" "+data.addr2);
			$('#date').val(data.logtime);

		},	//success
		error:function(err){
			console.log(err);
		}
	
	});	//ajax
});	//function
	
</script>
</body>
</html>