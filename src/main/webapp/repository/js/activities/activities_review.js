//리뷰수 및 유저정보 가져오기
function getActReviewCnt(){
	$.ajax({
		url: '/nadri/activities/getActReviewCnt',
		type: 'get',
		success: function(data){
			alert(JSON.stringify(data));
			debugger
			const total_cnt_act_review = parseFloat($.trim(data.reviewCnt.total_cnt_act_review || 0));
			const total_avg_act_review = parseFloat($.trim(data.reviewCnt.total_avg_act_review || 0));
			
			if(data.userInfo != undefined){
				$('.review-write-userImg').prop("src", "/nadri/repository/img/member/"+$.trim(data.userInfo.profileImg));
				$('.review-write-userInfo .reivew-write-userName').text($.trim(data.userInfo.nickName));
			}else{
				$('.review-write-userImg').prop("src", "/nadri/repository/img/member/defaultImg.png");
				$('.review-write-userInfo .reivew-write-userName').text("로그인해주세요");
			}
			
			$('.productdetail-commentlist-container .title .commentCount').text(total_cnt_act_review);
			$('.list-score .list-good-comment').text(total_avg_act_review);
		}, error: function(err){
			console.log(err);
		}
	});
}

//리뷰작성버튼 클릭
$('#act_review_writeBtn').click(function(){

	if($.trim($('#member_seq').val() || "") == ""){
		alert('로그인 후 이용 가능합니다.');
		return
	}else if($('.form-control').val() == ""){
		alert('내용을 입력해주세요.');
		return
	}else{
	
		$.ajax({
			url: '/nadri/activities/actReviewWrite',
			type: 'get',
			data: $('#pop_review_writeForm').serialize(),
			success: function(data){
				alert('글쓰기 등록 완료');
				//getReviewList();
				//getCountView();
			},
			error: function(err){
				console.log(err);
			}
			
		});
	}//if
});