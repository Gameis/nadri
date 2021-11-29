//로그인
$('#loginBtn').click(function(){
	$('#idDiv').empty();
  	$('#pwdDiv').empty();

	if($('input[name="id"]').val()=='')
		$('#idDiv').html('로그인아이디 입력');
	else if($('input[name="pwd"]').val()=='')
		$('#pwdDiv').html('로그인비밀번호 입력');
	else{
		//$('form[name="loginForm"]').submit(); - 페이지 이동
		//페이지 이동없이 출력하라
		$.ajax({
			url:'/nadri/user/login',
			type: 'post',
			data: 'id='+$('#id').val()+'&pwd='+$('#pwd').val(),
			dataType: 'text',
			success: function(data){
				data = data.trim();	//알람창에 빈공간없이 뜨기
				
				if(data == 'ok'){
					location.href='/nadri/index.jsp';
					
				}else if(data == 'fail'){
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

//회원가입
$('#writeBtn').click(function(){
	//alert("연결?");
	$('#nameDiv').empty();
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	if($('#name').val()==''){
		$('#nameDiv').html('이름을 입력해주세요');
	
	}else if($('#id').val()==''){
		$('#idDiv').html('아이디를 입력해주세요');
			
	}else if($('#pwd').val()==''){
		$('#pwdDiv').html('비밀번호를 입력해주세요 ');
		
	}else if($('#pwd').val() != $('#repwd').val()){
		$('#repwdDiv').html('비밀번호가 다릅니다');
	
	}else{
		$.ajax({
			url:'/nadri/user/write',
			type:'post',
			data:$('#writeForm').serialize(),

			success(){
				alert('회원가입이 완료되었습니다 ');
				location.href='/nadri/index.jsp';				
			},
			error(err){
				console.log(err);
			}
		});	//ajax
	}	//else	
});		//click


//아이디 중복체크
$('#id').focusout(function(){
	$('#idDiv').empty();

	if($('#id').val()==''){
		$('#idDiv').html('아이디를 입력해주세요');
	}else{
		$.ajax({
			url:"/nadri/user/checkId",
			type:'post',
			data:'id='+$('#id').val(),	//json타입형식 {'id':$('#id').val()}

			dataType:'text',
			success:function(data){
				if(data=='exist'){
					$('#idDiv').text("사용이 불가능합니다");
				}else if(data=='non-exist'){
					$('#idDiv').text('사용이 가능합니다');
				}		
			},	
			error:function(err){
				console.log(err);
			}
		});		//ajax
	}		//else
});		//focusout

//우편번호 체크
$('#zipcodeBtn').click(function(){
	window.open("/nadri/repository/jsp/user/checkPost.jsp", "checkPost", "width=500 height=500 top=200 left=700");
});

//현재 새로운창이 떠있는상태
$('#checkPostSearchBtn').click(function(){
	$.ajax({
		url:'/nadri/user/checkPostSearch',
		type:'post',		
		data:$('#checkPostForm').serialize(),
		dataType: 'json',
		
		success:function(data){
			$('#zipcodeTable tr:gt(2)').remove();
			$.each(data.list,function(index,items){
				var address = items.sido+'  '
							+items.sigungu+'  '
							+items.yubmyundong+'  '
							+items.ri+'  '
							+items.roadname+'  '
							+items.buildingname;	//마지막엔 ; 없어도 됨
							
			address = address.replace(/undefined/g,''); //undefined라는걸 g글로벌로 찾아서 ''로 바꿔라				
			$('<tr/>').append($('<td/>',{
				align:'center',
				text:items.zipcode
			})).append($('<td/>',{
				colspan:3
			
				}).append($('<a/>',{	//td안에 a태그를 붙임
					href:'#',
					text:address,
					class:'addressA'
				
			}))).appendTo($('#zipcodeTable'));												
		});	//each
		
		$('.addressA').click(function(){
			$('#zipcode', opener.document).val($(this).parent().prev().text());
		
			$('#addr1', opener.document).val($(this).text());
			window.close();		//창만 닫힐뿐 제어권이 사라진게 아니다
			$('#addr2', opener.document).focus();
		});		// addressA click
			
		},	//success
		error:function(err){
			console.log(err);
		}	
			
	});		//ajax
});		//checkPostSearchBtn click




//이메일 인증확인