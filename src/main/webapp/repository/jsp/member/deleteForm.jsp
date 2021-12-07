<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원탈퇴
	<table id="table" border="0" cellspacing="0" cellpadding="5" width="1000">


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
		<td>비밀번호 확인 :</td>
		<td>
			<input type="password" id="pwd"> 
			<input type="hidden" id="dbpwd">
			<div id= "pwdDiv"></div>
			 	
 		</td>
	</tr>
	
	<tr>
	<td>탈퇴사유</td>
	</tr>	
	
	<tr>
		<td>선택 :</td>
		<td>
			 <input type="text" id="reason" list="reason" placeholder="직접입력"> 
		 	<datalist id="reason">
				<option value="aa">가격불만족
				<option value="bb">단순불편
				<option value="cc">불친절함
			</datalist>	
 		</td>
 	</tr>
 	
 	<tr>	
		<td>요구사항 :</td>
		<td>
			 <input type="checkbox" class="require"/> 
			 <input type="checkbox" class="require"/> 
			 <input type="checkbox" class="require"/> 	
			 <input type="checkbox" class="require"/> 
			기타: <br> <textarea name="opinion" cols="30" rows="5"></textarea>
 		</td> 		
	</tr>	
<tr>
	<td>
		<input type="button" id ="deleteBtn" value="회원탈퇴">
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
		
			console.log(JSON.stringify(data));		//json을 안썼지만 json형식으로 뜸 오류가 안뜸

			
			$('#name').val(data.name);
			$('#id').val(data.id);
			$("#dbpwd").val(data.pwd);
		},	//success
		
		error:function(err){
			console.log(err);
		}
	
	});	//ajax
});	//function


$('#deleteBtn').click(function(){

	$('#pwdDiv').empty();
	
	if($('#pwd').val()==''){
		$('#pwdDiv').html('비밀번호를 입력해주세요 ');
	
	}else {
		
		$.ajax({
			url:'/nadri/member/compare',
			type: 'post',
			
			data:{'pwd':$('#pwd').val()},
				
			success: function(data){
				//console.log(JSON.stringify(data));
				
				if(data=='ok'){
				//	location.href='/nadri/index.jsp';
					$('#loginResult').text('확인되었습니다');
			
					if(confirm('정말로 탈퇴하시겠습니까')){
						
						$.ajax({
							url:'/nadri/member/delete',
							type:'post',
							
							success:function(){
								alert("회원탈퇴가 완료되었습니다");
								
								$.ajax({
									url:'/nadri/member/logOut',
									type: 'post',
													
									success: function(){	
										location.href='/nadri/index.jsp';
									},		//success
										
									error: function(err){
										console.log(err);			
									}	
									
								});		// ajax
											
							},		//success
							
							error:function(err){
								console.log(err);
							}	
							
						});		//ajax		
					}
									
				}else if(data=='fail'){
					$('#loginResult').text('비밀번호가 다릅니다');
					$('#loginResult').css('color', 'red');
					$('#loginResult').css('font-size', '15pt');
					$('#loginResult').css('font-weight', 'bold');
				}	
				
			},		//success
			
			error: function(err){
				console.log(err);			
			}
			
		});		//ajax
	}	//else
});	// search click

</script>
</body>
</html>