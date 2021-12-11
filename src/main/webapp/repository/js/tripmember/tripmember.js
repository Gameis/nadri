

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
			url:'/nadri/member/login',
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
			url:'/nadri/member/logOut',
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


//회원가입
$('#writeBtn').click(function(){
	// alert("연결?");
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
			url:'/nadri/member/write',
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
			url:"/nadri/member/checkId",
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
	window.open("/nadri/repository/jsp/member/checkPost.jsp", "checkPost", "width=500 height=500 top=200 left=700");
});


//현재 새로운창이 떠있는상태
$('#checkPostSearchBtn').click(function(){
	$.ajax({
		url:'/nadri/member/checkPostSearch',
		type:'post',		
		data:$('#checkPostForm').serialize(),
		dataType: 'json',
		
		success:function(data){
			//alert(JSON.stringify(data));
			
			$('#zipcodeTable tr:gt(2)').remove();
			$.each(data, function(index,items){
				var address = items.sido+'  '
							+items.sigungu+'  '
							+items.yubmyundong+'  '
							+items.ri+'  '
							+items.roadname+'  '
							+items.buildingname;	//마지막엔 ; 없어도 됨
							
			address = address.replace(/null/g,''); //null이라는것을 g 글로벌전체에서 찾아서 ''로 바꿔라				
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


//이메일 인증번호전송
var mailcode = "";
$("#mailcheckBtn").click(function(){
	$('#email1').empty();
  	$('#email2').empty();

	if($('#email1').val()==''){
		$('#mailcheckDiv').html('메일주소를 입력해주세요');
	}	
	else if($('#email2').val()==''){
		$('#mailcheckDiv').html('메일주소를 입력해주세요');
	}	

	else{
	  	var email = $("#email1").val()+"@"+$("#email2").val(); //입력한 이메일
		console.log(email);
	   	$.ajax({
	        type:"GET",
	        url:"/nadri/member/mailCheck?email=" + email,

	        
	           success:function(data){
	   	            alert("인증메일을 전송하였습니다");       
	          	 	console.log("data : " + data);
	             $("#mailcheck").attr("disabled",false);
	             $(".mail_check_input_box").attr("id", "mailcheck_true"); 
	              	mailcode = data;
	        	},	//success
	        	
	            error:function(err){
					console.log(err);
				}	   
  	  });	//ajax
    }	//else
});	//click
 
 /* 인증번호 비교 */
$("#mailcheck").blur(function(){		//포커스가 나갔을때

    var inputCode = $("#mailcheck").val();        // 사용자가 메일로 받은 입력코드    
    
    if(inputCode == mailcode){                            // 일치할 경우
       	$("#mailcheckDiv").html("메일인증되었습니다.");
   	} else {                                            // 일치하지 않을 경우
        $("#mailcheckDiv").html("인증번호를 다시 확인해주세요.");
	}


});		//blur


