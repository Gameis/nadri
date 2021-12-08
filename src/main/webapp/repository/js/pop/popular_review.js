	//imageboardWriteForm.jsp 이미지 등록 버튼클릭
	$('#pop_review_writeBtn').click(function(){
		alert('리뷰등록 버튼클릭했다');
		
		var formData = new FormData($('#pop_review_writeForm')[0]);//form안에 있는 모든 것
		$.ajax({
			url: '/nadri/popular/pop_review_write',
			type: 'post',
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,
			success: function(){
				alert('이미지 등록 완료');
				getReviewList();
			},
			error: function(err){
				console.log(err);
			}
			
		});

	});

	