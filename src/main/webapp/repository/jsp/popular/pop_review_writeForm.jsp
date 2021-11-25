<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <style type="text/css">
table {
	border-collapse: collapse;
}
#imageboardWriteForm div{
	font-size: 8pt;
	color: red;
	font-weight: bold;
}
</style> -->

<h3>이미지 등록</h3>
<form id="pop_review_writeForm">
	<table cellspacing="0" cellpadding="5" border="1"><!-- cellspacing 두줄없애기, cellpadding 안쪽여백 -->
		<tr>
			<td width="100" align="center">작성자</td>
			<td>
				<input type="text" name="member_name" id="member_name" value="member_name" size="50" readonly>
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
			<td width="100" align="center">내용</td>
			<td>
				<textarea cols="50" rows="15" name="pop_review_content" id="pop_review_content"></textarea>
			</td>
		</tr>
		
		<!-- <tr>
			<td colspan="2">
				<input type="file" name="img">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="file" name="img">
			</td>
		</tr> -->
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
	</table>
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