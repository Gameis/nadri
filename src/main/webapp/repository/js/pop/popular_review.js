//imageboardWriteForm.jsp 이미지 등록 버튼클릭
$('#pop_review_writeBtn').click(function(){
	debugger
	if($.trim($('#member_seq').val() || "") == ""){
		alert('로그인 후 이용 가능합니다.');
		return
	}else if($('.form-control').val() == ""){
		alert('내용을 입력해주세요.');
		return
	}else{
	
		var formData = new FormData($('#pop_review_writeForm')[0]);//form안에 있는 모든 것
		$.ajax({
			url: '/nadri/popular/pop_review_write',
			type: 'post',
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,
			success: function(){
				getReviewList();
				getCountView();
			},
			error: function(err){
				console.log(err);
			}
			
		});
	}//if
});
//페이징 처리
function pagination(){
	 // init bootpag
    $('#page-selection').bootpag({
	    total: 7,          // total pages
	    page: 1,            // default page
	    leaps: true         // next/prev leaps through maxVisible
	}).on("page", function(event, num){
	    $("#pageNum").val(num);
	    getReviewList();
	});
}

$('#btnradio1').click(function(){
	alert('모두보기눌렀다');
	resetValue();
	$("#pageNum").val(1);
	$("#searchType").val('');
	$("#isDesc").val('');
	getReviewList();
});

$('#btnradio2').click(function(){
	alert('최신순눌렀다');
	resetValue();
	$("#pageNum").val(1);
	$("#searchType").val('');
	$("#isDesc").val('DESC');
	getReviewList();
});

$('#btnradio3').click(function(){
	alert('긍정');
	resetValue();
	$("#pageNum").val(1);
	$("#searchType").val('POSITIVE');
	$("#isDesc").val('');
	getReviewList();
});

$('#btnradio4').click(function(){
	alert('부정');
	resetValue();
	$("#pageNum").val(1);
	$("#searchType").val('NEGATIVE');
	$("#isDesc").val('');
	getReviewList();
});

$('#btnradio5').click(function(){
	alert('사진');
	$("#pageNum").val(1);
	$("#searchType").val('IMAGE');
	$("#isDesc").val('');
	getReviewList();
});