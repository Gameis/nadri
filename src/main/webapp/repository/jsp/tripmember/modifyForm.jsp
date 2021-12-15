<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/nadri/repository/css/tripmember/modifyForm.css">

</head>
<body>
		
<div class="wrapper">

	<form id="modifyForm">

	<div class="wrap">
		<br>
		<div class="modifysubject">
			<span>내정보수정</span>
		</div>
		
		<div>			
			<div>
				<img id="memberImgchange" src="/nadri/repository\img/tripmember/defaultImg.png"  class="myImg" alt="변경이미지"  
				style="cursor:pointer;">
				<h3 style="display:left;color:green;">이미지 바꾸기</h3>
				
			</div>
			
			<div> 
				<input type="file" class="memberImgchange" name="memberImgchange" >	
			</div>		
		</div>
				
	<!-- 
			<div class="profile_wrap">
				<div class="imgname"></div>
				<div class="imginput_box">
					<input type="hidden" class="imginput" id="profileImg" name="profileImg" value="defaultImg.png">
				</div>
			</div>		
			 -->
			<div class="pw_wrap">
				<div class="pwname">비밀번호 변경</div><div id="pwdDiv"></div>
				<div class="pwinputbox">
					<input class="pwinput" type="password"  id="pwd" name="pwd">
				</div>
			</div>
			
			<div class="pwck_wrap">
				<div class="pwckname">비밀번호 확인</div><div id="repwdDiv"></div>
				<div class="pwckinputbox">
					<input class="pwckinput" type="password" id="repwd" name="repwd">
				</div>
			</div>
			
			
			<div class="nick_wrap">
				<div class="nickname">닉네임변경</div><div id="nickDiv"></div>
				<div class="nickinputbox">
					<input class="nickinput" id="nickName" name="nickName">
				</div>
			</div>
				
			<div class="tel_wrap">
				<div class="telname">핸드폰번호변경</div><div id="telDiv"></div>
				<div class="teltext">
					<input class="tel1" name="tel1"  id="tel1"  list="tellist">
					<datalist id="tellist">
						<option value="010">010
						<option value="011">011
						<option value="019">019
					</datalist>		
					-
					<input class="telinput" id="tel2" name="tel2"  size="6" maxlength="4">
					-
					<input class="telinput" id="tel3" name="tel3"  size="6" maxlength="4">
				</div>
			</div>
		
			<div class="email_wrap">
				<div class="emailname">이메일변경</div> <div id="emailDiv"></div>
					<div class="emailtext">
						<input type="text" name="email1" id="email1" class="emailinputbox">
						@
						<input type="text" name="email2" id="email2" list="email2" class="emailinputbox" placeholder="직접입력">
						<datalist id="email2">
							<option value="naver.com">naver.com
							<option value="daum.net">daum.net
							<option value="gmail.com">gmail.com
						</datalist>
						<div class="emailcheckbutton" id="emailcheckbutton">
							<span>인증메일전송</span>
					</div>
					</div>
								
				<div class="emailcheck_wrap">
					<div id="emailcheckDiv"></div>
					<div class="emailcheckinputbox">
						<input class="emailcheckinput" id="emailcheck">
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
					
			<div class="address_wrap">
				<div class="addressname">주소변경</div><div id="addressDiv"></div>
				<div class="addressinput1_wrap">
					<div class="addressinput1box">
						<input class="addressinput1" id="zipcode" name="zipcode" readonly>
					</div>
					
					<div class="addressbutton" id="zipcodeBtn">
						<span>우편번호검색</span>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class ="addressinput2_wrap">
					<div class="addressinput2box">
						<input class="addressinput2" placeholder="도로주소" id="address" name="address" readonly>
						
					</div>
				</div>
				
				<div class ="addressinput3_wrap">
					<div class="addressinput3box">
						<input class="addressinput3" placeholder="상세주소" id="addressDetail" name="addressDetail">
						
					</div>
				</div>
			</div>
			
			<div class="modifybutton_wrap">
				<input type="button" class="modifyBtn" id="modifyBtn" value="수정하기">
			</div>
			
		</div>
	</form>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url: '/nadri/tripmember/getTripmemberInfo',
		type: 'post',
		dataType: 'json',
		success:function(data){
			console.log(JSON.stringify(data));		//json을 안썼지만 json형식으로 뜸 오류가 안뜸
		
			$('#memberImgchange').attr('src', '/nadri/repository/img/tripmember/storage/'+data.profileImg);
			$('#nickName').val(data.nickName);
			$('#tel1').val(data.tel1);
			$('#tel2').val(data.tel2);
			$('#tel3').val(data.tel3);			
			$('#email1').val(data.email1);
			$('#email2').val(data.email2);	
			$('#zipcode').val(data.zipcode);
			$('#address').val(data.address);
			$('#addressDetail').val(data.addressDetail);
				

},
		error:function(err){
			console.log(err);
		}
		
	});	//ajax		
});	//function		
			
$('#modifyBtn').click(function(){
	$('#repwdDiv').empty();
		
 	if($('#pwd').val()==''){
		$('#pwdDiv').html('변경될 비밀번호를 입력해주세요 ');
		
	}else if(($('#repwd').val()=='')||($('#pwd').val() != $('#repwd').val())){
		$('#repwdDiv').html('비밀번호를 확인해주세요 ');
		
	}else if($('#nickName').val()==''){
		$('#pwdDiv').html('');
		$('#nickDiv').html('닉네임을 입력해주세요');

	}else if($('#tel1').val()==''||$('#tel2').val()==''||$('#tel3').val()==''){
		$('#telDiv').html('핸드폰번호가 제대로 입력되지 않았습니다');		
		
	}else if($('#email1').val()==''||$('#email2').val()==''){	
		$('#emailDiv').html('메일주소가 제대로 입력되지 않았습니다');

	}else if($('#zipcode').val()==''||$('#addr1').val()==''){
		$('#addrDiv').html('주소가 제대로 입력되지 않았습니다');
	
	}else{
		var formData = new FormData($('#modifyForm')[0]);

		$.ajax({
			url:'/nadri/tripmember/modify',
			type:'post',		
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,

			success:function(){
				alert('회원정보가 변경되었습니다 ');
			},
			error(err){
				console.log(err);
			}
		});	//ajax
	}	//else	
	
});	//modifyBtn click 


$('.memberImgchange').change(function(){
//시리얼 라이즈로 멀티파트 즉 그림형태는 못넘기는듯
	var formData = new FormData($('#modifyForm')[0]);
//	alert("뜨냐");
	$.ajax({
		url:"/nadri/tripmember/memberImgchange",
		type: 'post',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: formData,
		dataType:'text',
		
		success: function(data) {
			var date=new Date();
			//$('#memberImgchange').attr('src','/nadri/repository/img/tripmember/storage/'+data+'?timestamp='+date.getTime());
			$('#memberImgchange').attr('src','/nadri/repository/img/tripmember/storage/'+data);
			location.reload();
	
		},
		error:function(err){
			console.log(err);
		}
	});		//ajax

});

</script>
</body>
</html>