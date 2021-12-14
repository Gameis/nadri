

//로그인
$('#loginBtn').click(function(){
	$('#modalidDiv').empty();
  	$('#modalpwdDiv').empty();

	if($('#floatingInput').val()==''){
		$('#modalidDiv').html('아이디를 입력해주세요');
	}	
	else if($('#floatingPassword').val()==''){
		$('#modalpwdDiv').html('비밀번호를 입력해주세요');
	}	
	else{

		$.ajax({
			url:'/nadri/tripmember/login',
			type: 'post',
		//	data:$('#loginForm').serialize(),
			
			data: {'id':$('#floatingInput').val(),
				   'pwd':$('#floatingPassword').val()},//{'id':$('#id').val()}
				
			success: function(data){
				//console.log(JSON.stringify(data));
				
				if(data=='ok'){
					//	alert('로그인에 성공하셨습니다');	
					location.href='/nadri/index.jsp';
				}else if(data=='fail'){
					$('#loginResult').text('로그인에 실패하셨습니다');
					$('#loginResult').css('color', 'red');
					$('#loginResult').css('font-size', '15pt');
					$('#loginResult').css('font-weight', 'bold');
				}	
				
			},		//success
			
			error: function(err){
				console.log(err);
				
			}
			
		});		//ajax
	} 		//else			
});		//click	


//로그아웃				
$('#logoutBtn').click(function(){
	$.ajax({
			url:'/nadri/tripmember/logOut',
			type: 'post',
						
		success: function(){
			alert('로그아웃 하셨습니다');	
			location.href='/nadri/index.jsp';
		},	//success
			
		error: function(err){
			console.log(err);			
		}	
			
	});	// ajax

});		//logOutBtn click			


