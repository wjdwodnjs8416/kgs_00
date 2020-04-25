<%@page import="db.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		<h4 align="center">■ 월별신청현황</h4>
		<table border="1" width="300px" align="center">
			<tr>
				<th>신청년월</th>
				<th>수강인원</th>
			</tr>
		<% 	
		Connection conn = new DBConn().getConnection();
		
			String sql = "select register_date, " +
						" count(*) cnt " +
						" from register_tbl_01 " + 
						" group by register_date";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
		%>	
		<tr>
		<td style="text-align: center;"><%=rs.getString("yymm") %></td>
		<td style="text-align: right; padding-right: 20px;"><%=rs.getString("cnt") %></td>
		</tr>
		<%} %>
	</table>
	<br>
	<h4 align="center">■ 수강신청정보조회</h4>
	<table border="1" width="700dx" align="center">
	<tr>
	<th>수강신청번호</th>
	<th>수강생</th>
	<th>과목명</th>
	<th>신청일자</th>
	<th>이수여부</th>
	</tr>
	
	<%sql = "select REGISTER_SEQ, STUDENT_NO, " + "(select student_name from student_tbl_01 where STUDENT_NO = REGISTER_TBL_01.STUDENT_NO) student_name, " + "SUBJECT_SEQ, " + "(select subject_name from subject_tbl_01 where SUBJECT_SEQ = REGISTER_TBL_01.SUBJECT_SEQ) subject_name, " + " REGISTER_DATE,decode(REGISTER_STATUS,'0','신청','1','완료','취소') as REGISTER_STATUS " + " from REGISTER_TBL_01 " + "order by REGISTER_SEQ desc";
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()) {
	%>
	<tr>
	<td style="text-align: center;"><%=rs.getString("REGISTER_SEQ") %></td>
	<td>(<%=rs.getString("STUDENT_NO") %>)<%=rs.getString("STUDENT_NAME") %></td>
	<td style="text-align: left;"><%=rs.getString("subject_name") %></td>
	<td style="text-align: center;"><%=rs.getString("REGISTER_DATE") %></td>
	<td style="text-align: center;"><%=rs.getString("REGISTER_STATUS") %></td>
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