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
<input type="button" value="이미지변경하기">

<form id="modifyForm">
	<table border="1" cellspacing="0" cellpadding="5">
				
		<tr>
			<td>현재 이메일</td>
			<td>
				<input type="text" name="email" id="email" readonly>
				<input type="button" name="mailchange" id="mailchange" value="메일변경하기">
			</td>
		</tr>	
		<tr>
			<td>현재 전화번호</td>
			<td>
				<input type="text" name="phone" id="phone" readonly>
				<input type="button" name="phonechange" id="phonechange" value="핸드폰번호변경하기">
			</td>
		</tr>	

		<tr>
			<td>현재 주소</td>
			<td>
				<input type="text" name="address" id="address" readonly>
				<input type="button" name="addchange" id="addchange" value="주소변경하기">
			</td>
		</tr>	
	
	
	
		<tr>
			<td>비밀번호 변경</td>
			<td>
				<input type="button" name="pwd" id="pwd" value="비밀번호변경하기">
				<div id="pwdDiv"></div>
			</td>
			
		</tr>	
										
	</table>

</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
/*
//관리자용 회원 정보확인
$('#searchBtn').click(function(){
	$('#resultDiv').empty();
	
	$.ajax({
		url:'/nadri/repository/jsp/member/getMember',
		type:'post',
		data:{'searchId':$('#searchId').val()},

		success:function(data){
			console.log(JSON.stringify(data));
			alert(JSON.stringify(data));
			
			if(data==''){
				$('#resultDiv').text('찾고자 하는 아이디가 없습니다');
				$('#resultDiv').css('color','red');
				$('#resultDiv').css('font-weight','bold');
				
			}else{
				$('#name').val(data.name);
				$('#id').val(data.id);
				
			}
		},
		error:function(err){
			console.log(err);
		}
	});	//ajax
});	// srarchBtn click

//다시 작성 버튼
$('#resetBtn').click(function(){
	$('#searchBtn').trigger('click');	//강제로 이벤트 발생 시키는걸 뜻함
	
});	//resetBtn click


*/




//mail 바꾸기
$('#mailcg').click(function(){
	window.open("/nadri/repository/jsp/member/modifychange.jsp", "modifychange", "width=500 height=500 top=200 left=700");
});
//현재 새로운창이 떠있는상태
$('#mailcg').click(function(){
	$.ajax({
		url:'  		/member/modify',
		type:'post',
		data:$('#modifyForm').serialize(),
		success:function(){
			alert("메일주소가 변경되었습니다");
			location.href="  	/member/list";
		},
		error:function(err){
			console.log(err);
		}
		
	});	//ajax
	
});	//fodifyBtn click 


//phone 전화번호 바꾸기
$('#phonecg').click(function(){
	$.ajax({
		url:'  		/member/modify',
		type:'post',
		data:$('#modifyForm').serialize(),
		success:function(){
			alert("핸드폰 번호가 변경되었습니다");
			location.href="  	/member/list";
		},
		error:function(err){
			console.log(err);
		}
		
	});	//ajax
	
});	//fodifyBtn click 


//add 주소 바꾸기
$('#addcg').click(function(){
	$.ajax({
		url:'  		/member/modify',
		type:'post',
		data:$('#modifyForm').serialize(),
		success:function(){
			alert("주소가 변경되었습니다");
			location.href="  	/member/list";
		},
		error:function(err){
			console.log(err);
		}
		
	});	//ajax
	
});	//fodifyBtn click 

</script>

</body>
</html>