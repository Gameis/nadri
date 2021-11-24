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
<form enctype="multipart/form-data" id="imageboardWriteForm" method="post" 
action="/chapter06_SpringWebMaven/user/imageboardWrite">
	<table cellspacing="0" cellpadding="5" border="1"><!-- cellspacing 두줄없애기, cellpadding 안쪽여백 -->
		<tr>
			<td width="100" align="center">상품코드</td>
			<td>
				<input type="text" name="imageId" id="imageId" value="img_" size="50">
			</td>
		</tr>
		<tr>
			<td width="100" align="center">상품명</td>
			<td>
				<input type="text" name="imageName" id="imageName" size="50">
			</td>
		</tr>
		<tr>
			<td width="100" align="center">단가</td>
			<td>
				<input type="text" name="imagePrice" id="imagePrice" size="50">
			</td>
		</tr>
		<tr>
			<td width="100" align="center">개수</td>
			<td>
				<input type="text" name="imageQty" id="imageQty" size="50">
			</td>
		</tr>
		<tr>
			<td width="100" align="center">내용</td>
			<td>
				<textarea cols="50" rows="15" name="imageContent" id="imageContent"></textarea>
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
				<input type="button" value="이미지등록" name="imageboardWriteBtn" id="imageboardWriteBtn">
				<input type="reset" value="다시작성" name="resetBtn" id="resetBtn">
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
//imageboardWriteForm.jsp 이미지 등록 버튼클릭
$('#imageboardWriteBtn').click(function(){
	alert('이미지등록 버튼클릭했다');
	
	$('#imageboardWriteForm').submit();

});
</script>