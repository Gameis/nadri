<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<form id="pop_review_writeForm">
<span id="review_title"><h3>리뷰</h3></span>
	<table cellspacing="0" cellpadding="10" border="0"><!-- cellspacing 두줄없애기, cellpadding 안쪽여백 -->
		
		<tr>
			<td width="100" align="center">작성자</td>
			<td>
				<input type="text" name="member_name" id="member_name" value="${member_name }" size="50" readonly />
			</td>
		</tr>
		<tr>
			<td width="100" align="center">평점</td>
			<td>
				<label><input type="radio" name="pop_reivew_score" id="pop_reivew_score" value="1" size="50">1점</label>
				<label><input type="radio" name="pop_reivew_score" id="pop_reivew_score" value="2" size="50">2점</label>
				<label><input type="radio" name="pop_reivew_score" id="pop_reivew_score" value="3" size="50">3점</label>
				<label><input type="radio" name="pop_reivew_score" id="pop_reivew_score" value="4" size="50">4점</label>
				<label><input type="radio" name="pop_reivew_score" id="pop_reivew_score" value="5" size="50">5점</label>
			</td>
		</tr>
		<tr>
			<td width="100"align="center">내용</td>
			<td>
				<textarea style="width: 1000px; resize: none;" rows="5" cols="30" id="pop_review_content" name="pop_review_content" placeholder="댓글을 입력하세요"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="file" name="img[]" multiple>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="리뷰등록" name="pop_review_writeBtn" id="pop_review_writeBtn">
				<input type="reset" value="다시작성" name="resetBtn" id="resetBtn">
			</td>
		</tr>
		
		<tr>
			<th width="100" align="center"><a href="#">아이디들어갈자리</a></th>
			<td class="review_td">
				<textarea style="width: 1000px; resize: none;" rows="5" cols="30" readonly></textarea>
				
				<div class="container">
				  <div class="row row-cols-4">
				    <div class="col" id="review_img"><img style="width: 200px; height: 100%;"src="/nadri/repository/img/popular/review/1a2d6dd5-5a95-4c80-a15c-6f1bf3c6a8d7_choco.jpg"></img></div>
				    <div class="col" id="review_img"><img style="width: 200px; height: 100%;"src="/nadri/repository/img/popular/review/1a2d6dd5-5a95-4c80-a15c-6f1bf3c6a8d7_choco.jpg"></img></div>
				    <div class="col" id="review_img"><img style="width: 200px; height: 100%;"src="/nadri/repository/img/popular/review/1a2d6dd5-5a95-4c80-a15c-6f1bf3c6a8d7_choco.jpg"></img></div>
				    <div class="col" id="review_img"><img style="width: 200px; height: 100%;"src="/nadri/repository/img/popular/review/1a2d6dd5-5a95-4c80-a15c-6f1bf3c6a8d7_choco.jpg"></img></div>
				  </div>
				</div>
				
			</td>
		</tr>	
		
	</table>
	<input type="hidden" id="pop_review_seq" name="pop_review_seq" value=1 />
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
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
		},
		error: function(err){
			console.log(err);
		}
		
	});

});

</script>