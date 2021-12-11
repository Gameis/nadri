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
	</table>
<%-- 
	변경할 내용	
	<table border="1" cellspacing="0" cellpadding="5">
		
		<tr>
			<td width="100" align="center">비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd" size="30" placeholder="비밀번호 입력">
				<div id= "pwdDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">재확인</td>
			<td>
				<input type="password" name="repwd" id="repwd" size="30" placeholder="비밀번호 확인">
				<div id= "repwdDiv"></div>
			</td>	
		</tr>
		

		<tr>
			<td width="100" align="center">이메일</td>
			<td>
				<input type="text" name="email1">
				@
				<input type="text" name="email2" list="email2" placeholder="직접입력">
				<datalist id="email2">
					<option value="naver.com">naver.com
					<option value="daum.net">daum.net
					<option value="gmail.com">gmail.com
				</datalist>
				<div id= "emailDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">핸드폰</td>
			<td>
				<select name="tel1" style="width: 70px;">
					<option value="010" selected>010</option>
					<option value="011" >011</option>
					<option value="019" >019</option>
				</select>
				-
				<input type="text" name="tel2" size="6" maxlength="4">
				-
				<input type="text" name="tel3" size="6" maxlength="4">
			
				<div id= "telDiv"></div>	
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">주소</td>
			<td>
				<input type="text" name="zipcode" id="zipcode" readonly>
				<input type="button" value="우편번호 검색" id="zipcodeBtn"><br>
				<input type="text" name="addr1" id="addr1" size="60" placeholder="주소" readonly><br>
				<input type="text" name="addr2" id="addr2" size="60" placeholder="상세주소">
				<div id= "addrDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="modifyBtn" value="정보수정">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
	--%>
	
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<%-- 
<script type="text/javascript" src="/nadri/repository/js/member/modifyForm.js"></script>
 --%>
 <script type="text/javascript">
$(function(){
	$.ajax({
		url: '/nadri/member/getMemberInfo',
		type: 'post',
		dataType: 'json',
		success:function(data){
			console.log(JSON.stringify(data));		//json을 안썼지만 json형식으로 뜸 오류가 안뜸
		
			$('#id').val(data.id);

			$('#email').val(data.email1+"@"+data.email2);
			$('#tel').val(data.tel1+"-"+data.tel2+"-"+data.tel3);
			$('#add').val(data.zipcode+" "+data.addr1+" "+data.addr2);
		},
		error:function(err){
			console.log(err);
		}
		
	});	//ajax		
});	//function		
			
$('#modifyBtn').click(function(){
	$('#pwdDiv').empty();
	$('#emailDiv').empty();
	$('#telDiv').empty();
	$('#addrDiv').empty();
	

	if($('#pwd').val()==''){
		$('#pwdDiv').html('비밀번호를 입력해주세요 ');
		
	}else if($('#pwd').val() != $('#repwd').val()){
		$('#repwdDiv').html('비밀번호가 다릅니다');
	}else if($('#email1').val()==''||$('#email2').val()==''){
		$('#emailDiv').html('메일주소가 제대로 입력되지 않았습니다');

	}else if($('#tel1').val()==''||$('#tel2').val()==''||$('#tel3').val()==''){
		$('#telDiv').html('핸드폰번호가 제대로 입력되지 않았습니다');

	}else if($('#zipcode').val()==''||$('#addr1').val()==''){
		$('#addrDiv').html('주소가 제대로 입력되지 않았습니다');

	}else{
		$.ajax({
			url:'/nadri/member/modify',
			type:'post',		
			data:$('#modifyForm').serialize(),

			success(){
				alert('회원정보가 변경되었습니다 ');
			},
			error(err){
				console.log(err);
			}
		});	//ajax
	}	//else	
	
});	//modifyBtn click 


</script>
</body>
</html>