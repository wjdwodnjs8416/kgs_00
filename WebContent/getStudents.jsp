<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
		<h4 align="center">수강생 조회/수정</h4>
		<table border="1" width="700px" align="center">
			<tr>
				<th>수강생번호</th>
				<th>이름</th>
				<th>연락처</th>
				<th>생년월일</th>
				<th>메일주소</th>
				<th>아디</th>
				<th>비밀번호</th>
				<th>수강과목수</th>
			</tr>
			<%
			Connection conn = new DBConn().getConnection();
			
			String sql = "select STUDENT_NO, STUDENT_NAME, STUDENT_ADDR, STUDENT_PHONE, to_char(STUDENT_BIRTH, 'yyyy/mm/dd') STUDENT_BIRTH, STUDENT_EMAIL, STUDENT_ID, STUDENT_PW, " + "(select count(*) from register_tbl_01 where student_no = STUDENT_TBL_01.STUDENT_NO) as register_cnt" + " from STUDENT_TBL_01 order by STUDENT_NO";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String student_id = rs.getString("STUDENT_ID");
				String student_pw = rs.getString("STUDENT_PW");
			%>
			<tr>
				<td style="text-align: center;"><a
					href="updateStudents.jsp?student_no=<%=rs.getString("STUDENT_NO")%>"><%=rs.getString("STUDENT_NO") %></a></td>
				<td><%=rs.getString("STUDENT_NAME") %></td>
				<td style="text-align: left"><%=rs.getString("STUDENT_PHONE") %></td>
				<td style="text-align: center"><%=rs.getString("STUDENT_BIRTH") %></td>
				<td style="text-align: left"><%=rs.getString("STUDENT_EMAIL") %></td>
				<td style="text-align: center"><%=student_id==null?"":student_id %></td>
				<td style="text-align: left"><%=student_pw==null?"":student_pw %></td>
				<td style="text-align: right"><%=rs.getString("register_cnt") %></td>

			</tr>
			<%}
			conn.close();
			%>
		</table>

	</section>
	<footer>HRDKOREA Copyright&copy; 2016 All right reserved.
		Human Resources Development Service of Korea </footer>
</body>
</html>