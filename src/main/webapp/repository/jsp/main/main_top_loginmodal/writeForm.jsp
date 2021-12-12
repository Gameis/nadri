<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/nadri/repository/css/tripmember/writeForm.css">
</head>
<body>

<div class="wrapper">
	<form id="writeForm">
	<div class="wrap">
			<div class="subjecet">
				<span>회원가입</span>
			</div>
			
			<div class="user_wrap">
				<div class="user_name">이름</div><div id="nameDiv"></div>
				<div class="user_input_box">
					<input class="user_input" id="name" name="name">
				</div>
			</div>
			
			<div class="id_wrap">
				<div class="id_name">아이디</div><div id="idDiv"></div>
				<div class="id_input_box">
					<input class="id_input" id="id" name="id">
				</div>
			</div>
			
			<div class="pw_wrap">
				<div class="pw_name">비밀번호</div><div id="pwdDiv"></div>
				<div class="pw_input_box">
					<input class="pw_input" type="password" id="pwd" name="pwd">
				</div>
			</div>
			
			<div class="pwck_wrap">
				<div class="pwck_name">비밀번호 확인</div>
				<div class="pwck_input_box">
					<input class="pwck_input" type="password" id="repwd" name="repwd">
				</div>
			</div>
			
			<div class="nick_wrap">
				<div class="nick_name">닉네임</div><div id="nickDiv"></div>
				<div class="nick_input_box">
					<input class="nick_input" id="nickName" name="nickName">
				</div>
			</div>
	
			
	
		
			<div class="id_wrap">
				<div class="img_name">사진</div>
				<div class="img_input_box">
					<input class="img_input" id="profileImg" name="profileImg">
				</div>
			</div>
	


				
			<div class="tel_wrap">
				<div class="tel_name">핸드폰</div>
				
				<select name="tel1" class="tel" id="tel1" name="tel1">
					<option value="010" selected>010</option>
					<option value="011" >011</option>
					<option value="019" >019</option>
				</select>
				-
				<input type="text" id="tel2" name="tel2" class="tel2" size="6" maxlength="4">
				-
				<input type="text" id="tel3" name="tel3" class="tel2" size="6" maxlength="4">
			
			</div>
	
			

			<div class="mail_wrap">
				<div class="mail_name">이메일</div> 
					<div>
					<input type="text" name="email1" id="email1" class="mail_input_box">
					@
					<input type="text" name="email2" id="email2" list="email2" class="mail_input_box" placeholder="직접입력">
					<datalist id="email2">
						<option value="naver.com">naver.com
						<option value="daum.net">daum.net
						<option value="gmail.com">gmail.com
					</datalist>
					<div class="mail_check_button">
						<span>인증번호전송</span>
					</div>
					</div>
					
				<div class="mail_check_wrap">
					<div class="mail_check_input_box">
						<input class="mail_check_input">
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
					
			<div class="address_wrap">
				<div class="address_name">주소</div>
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1" id="zipcode" name="zipcode">
					</div>
					
					<div class="address_button" id="zipcodeBtn">
						<span>우편번호검색</span>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2" placeholder="도로주소" id="address" name="address">
						
					</div>
				</div>
				
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3" placeholder="상세주소" id="addressDetail" name="addressDetail">
						
					</div>
				</div>
			</div>
			
			<div class="member_button_wrap">
				<input type="button" class="member_button" id="writeBtn" value="가입하기">
			</div>
			
		</div>
	</form>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

//우편번호 체크
$('#zipcodeBtn').click(function(){
	window.open("/nadri/repository/jsp/tripmember/checkPost.jsp", "checkPost", "width=500 height=500 top=200 left=700");
});

</script>
</body>
</html>
