$(function(){
	$.ajax({
		url:'/chapter06_SpringWebMaven/user/getUserList',
		type:'post',
		//보낼 데이터가 없음
		dataType:'json',
		success:function(ccc){
			console.log(JSON.stringify(ccc));	//json을 안썼지만 json형식으로 뜸 오류가 안뜸
			alert(ccc);
			
	//		$.each(ccc.list,function(index,items){
			$.each(ccc,function(index,items){
			
				$('<tr/>').append($('<td/>',{
					width:100,
					align:'center',
					text:items.name
				})).append($('<td/>',{
					width:100,
					align:'center',
					text:items.id
				})).append($('<td/>',{
					width:100,
					align:'center',
					text:items.pwd
				})).appendTo('#table');
			
			});	//each
		},	//success
		error:function(qqq){
			console.log(qqq);
		}
	
	});	//ajax
});	//function