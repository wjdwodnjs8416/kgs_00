<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DBConn"%>
<%@page import="java.sql.Connection"%>
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
	color: black;
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
	color: black;
}
</style>
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
		<%
			Connection conn = new DBConn().getConnection();
			String sql = "select student_no,student_name,student_addr,student_phone,student_birth,student_email,student_id,student_pw"
					+ " from STUDENT_TBL_01 where STUDENT_NO = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("student_no"));
			
			System.out.println(pstmt.toString());
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();

			String student_no = rs.getString("student_no");
			String student_name = rs.getString("student_name");
			String student_addr = rs.getString("student_addr");
			String student_phone = rs.getString("student_phone");
			String student_birth = rs.getString("student_birth");
			String student_email = rs.getString("student_email");
			String[] email = student_email.split("@");
			String student_id = rs.getString("student_id") == null ? "" : rs.getString("student_id");
			String student_pw = rs.getString("student_pw") == null ? "" : rs.getString("student_pw");
			conn.close();
		%>
		<h4 align="center">수강생 수정</h4>

		<form name="frm" method="post" action="updateStudentsProc.jsp">

			<input type="hidden" name="student_no" value="<%=student_no%>" />

			<table width="70%" align="center" border=1>

				<tr>

					<td align="center" bgcolor="#FFFF99">이름</td>

					<td><input type="text" name="student_name"
						value="<%=student_name%>"></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">주소</td>

					<td><input type="text" name="student_addr" size="50"
						value="<%=student_addr%>"></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">연락처</td>

					<td><input type="text" name="student_phone"
						value="<%=student_phone%>"></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">생년월일</td>

					<td><input type="text" name="student_birth"
						value="<%=student_birth%>"></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">메일주소</td>

					<td>
					<input type="text" name="student_email" value="<%=email[0]%>">@
					<input type="text" name="student_email2" value="<%=email[1]%>"> 
					<select name="email_sel" id="email_sel" onchange="emailCheck()">

							<option value="">선택</option>

							<option value="naver.com">naver.com</option>

							<option value="gmail.com">gmail.com</option>

							<option value="">직접입력</option>

					</select> <script>

							//document.frm.email_sel.value="<%=email[1]%>
						
					</script></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">아디</td>

					<td><input type="text" name="student_id"
						value="<%=student_id%>"></td>

				</tr>

				<tr>

					<td align="center" bgcolor="#FFFF99">비밀번호</td>

					<td><input type="text" name="student_pw"
						value="<%=student_pw%>"></td>

				</tr>



			</table>

			<table width="80%" align="center" border=0>

				<tr>

					<td align="center"><input type="button" value="등록"
						onclick="regCheck();"> &nbsp;&nbsp;&nbsp; <input
						type="button" value="조회" onclick="location.href='getStudents.jsp'"></td>

				</tr>
				</table>
	</section>
	<footer>HRDKOREA Copyright&copy; 2016 All right reserved.
		Human Resources Development Service of Korea </footer>
</body>
</html>