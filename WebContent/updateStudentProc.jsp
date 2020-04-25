<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	
	Connection conn = new DBConn().getConnection();
	
	String sql = "update STUDENT_TBL_01 set STUDENT_NAME=?, STUDENT_ADDR=?, STUDENT_PHONE=?, STUDENT_BIRTH=?, STUDENT_EMAIL=?, STUDENT_ID=?, STUDENT_PW=?" + "where STUDENT_NO=?";
	
	String email = request.getParameter("student_email") +"@"+ request.getParameter("student_email2");
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("student_name"));
	pstmt.setString(2, request.getParameter("student_addr"));
	pstmt.setString(3, request.getParameter("student_phone"));
	pstmt.setString(4, request.getParameter("student_birth"));
	pstmt.setString(5, email);
	pstmt.setString(6, request.getParameter("student_id"));
	pstmt.setString(7, request.getParameter("student_pw"));
	pstmt.setString(8, request.getParameter("student_no"));
	int r = pstmt.executeUpdate();
	
	System.out.print(r + "°ÇÀÌ µî·ÏµÊ");
	
	conn.close();
	response.sendRedirect("getStudents.jsp");
%>


	