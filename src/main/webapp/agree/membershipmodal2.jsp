<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
#writeForm div {
	color: pink;
	font-size: 8pt;
	font-weight: bold;
}
</style>
<%--write폼에 아이디를 줌 로그인폼에아이디를 주는게 훨씬 편함 --%>
<form name="writeForm" id="writeForm">
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<td width="100" align="center">이름</td>
			<td>
				<input type="text" name="name" id="name" placeholder="이름 입력">
				<div id= "nameDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">아이디</td>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디 입력">
		<%-- 	<input type="button" value="중복체크" id="checkIdBtn">  --%> 
	
		<%--text에서 hidden으로 바꿔라 --%> 
				<input type="text" name="check" id="check" value="">
				<div id= "idDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd" size="30" placeholder="비밀번호 입력">
				<div id= "pwdDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">재확인</td>
			<td>
				<input type="password" name="repwd" id="repwd" size="30" placeholder="비밀번호 확인">
				<div id= "repwdDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">성별</td>
			<td>
			<%-- radio는 한개만 선택가능함 --%>
				<input type="radio" name="gender" value="0" checked>남
				<input type="radio" name="gender" value="1">여
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">이메일</td>
			<td>
				<input type="text" name="email1">
				@
				<%--input list와 datalist id가 연결된다 --%>
				<input type="text" name="email2" list="email2" placeholder="직접입력">
				<datalist id="email2">
					<option value="naver.com">naver.com
					<option value="daum.net">daum.net
					<option value="gmail.com">gmail.com
				</datalist>
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">핸드폰</td>
			<td>
				<select name="tel1" style="width: 70px;">
					<option value="010" selected>010</option>
					<option value="011" >011</option>
					<option value="019" >019</option>
				</select>
				-
				<input type="text" name="tel2" size="6" maxlength="4">
				-
				<input type="text" name="tel3" size="6" maxlength="4">
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">주소</td>
			<td>
				<input type="text" name="zipcode" id="zipcode" readonly>
				<input type="button" value="우편번호 검색" id="zipcodeBtn"><br>
				<input type="text" name="addr1" id="addr1" size="60" placeholder="주소" readonly><br>
				<input type="text" name="addr2" id="addr2" size="60" placeholder="상세주소">
			</td>
		</tr>
		
	</table>
</form>
<!-- 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
 -->










