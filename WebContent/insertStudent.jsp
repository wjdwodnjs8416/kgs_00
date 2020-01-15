<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생관리</title>
<style>
header {
	height: 60px;
	padding: 5px;
	background-color: gray;
	color: white;
	text-align: center;
}

nav {
	background =color: black;
	height: 30px;
	padding: 2px;
}

section {
	padding: 5px;
	background-color: yellowgreen;
	min-height: 500px
}

footer {
	color: white;
	background-color: gray;
	text-align: center;
}

a {
	text-decoration: none;
	color: white;
}
</style>
<script type="text/javascript">
	function regCheck() {
		document.getElementsByName('frm')[0].submit();
	}
</script>
</head>
<body>
	<header>
		<h3>학원수강관리</h3>
	</header>
	<nav>
		<a href="insertStudent.jsp">수강생등록</a> <a href="getStudent.jsp">수강생목록조회/수정</a>
		<a href="insertRegister.jsp">수강신청</a> <a href="getRegister.jsp">수강조회</a>
		<a href="index.jsp">홈으로</a>
	</nav>
	<section>
		<h4 align="center">수강생 등록</h4>
		<form name="frm" method="post" action="insertStudentProc.jsp">
		<table width="70%" align="center" border=1>
			<tr>
				<td align="center" bgcolor="#FFFF99">이름</td>
				<td><input type="text" name="student_name"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">주소</td>
				<td><input type="text" name="student_addr" size="50"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">연락처</td>
				<td><input type="text" name="student_phone">연락처</td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">생년월일</td>
				<td><input type="text" name="student_birth"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">메일주소</td>
				<td><input type="text" name="student_email">@<input
					type="text" name="student_email2"> <select name="email_sel"
					id="email_sel" onchange="emailCheck()">
						<option value="">선택</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="">직접입력</option>
				</select></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">아이디</td>
				<td><input type="text" name="student_id"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#FFFF99">비밀번호</td>
				<td><input type="text" name="student_pw"></td>
			</tr>
		</table>
		<table width="80%" align="center" border=0>
			<tr>
				<td align="center"><input type="button" value="등록"
					onclick="regCheck();"> <input type="button" value="조회"
					onclick="location.href='getStudent.jsp'"></td>
			</tr>
		</table>
		</form>
	</section>
	<footer>HRDKOREA Copyright&copy; 2016 All right reserved.
		Human Resources Development Service of Korea </footer>
</body>
</html>