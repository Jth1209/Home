<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");

String num2 = "";
String name2 = "";
String kor2 = "";
String eng2 = "";
String math2 = "";

String unum = request.getParameter("unum");
String uname = request.getParameter("uname");
String ukor = request.getParameter("ukor");
String ueng = request.getParameter("ueng");
String umath = request.getParameter("umath");

String num = request.getParameter("num");
String name = request.getParameter("name");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String math = request.getParameter("math");

String find = request.getParameter("find");
String delete = request.getParameter("delete");

String sql = "";

Connection conn = null;
PreparedStatement pstmt = null;
String URL = "jdbc:mysql://localhost:3306/spring5fs";
String id ="root";
String pw = "mysql";

Class.forName("com.mysql.cj.jdbc.Driver");

conn = DriverManager.getConnection(URL,id,pw);

if(num != null){
	sql = "select count(*) from score where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,num);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	int cnt = rs.getInt(1);
	if(cnt == 1){
		sql = "update score set name = ? , kor = ?, eng = ?, math = ? where num = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,kor);
		pstmt.setString(3,eng);
		pstmt.setString(4,math);
		pstmt.setString(5,num);
		pstmt.executeUpdate();
	}else{
		sql = "insert into score (num,name,kor,eng,math) values (?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		pstmt.setString(2, name);
		pstmt.setString(3, kor);
		pstmt.setString(4, eng);
		pstmt.setString(5, math);
		pstmt.executeUpdate();
	}
}

if(find != null){
	sql = "select * from score where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,find);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	num2 = rs.getString("num");
	name2 = rs.getString("name");
	kor2 = rs.getString("kor");
	eng2 = rs.getString("eng");
	math2 = rs.getString("math");
}

if(delete != null){
	sql = "delete from score where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,delete);
	pstmt.executeUpdate();
}

if(unum != null){
	sql = "update score set name = ?, kor = ?, eng = ?, math = ? where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,uname);
	pstmt.setString(2,ukor);
	pstmt.setString(3,ueng);
	pstmt.setString(4,umath);
	pstmt.setString(5,unum);
	pstmt.executeUpdate();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 관리 프로그램</title>
</head>
<body>
<form>
학번 : <input type = "text" name = "num" value = "<%=num2 %>"><br>
이름 : <input type = "text" name = "name" value = "<%=name2 %>"><br>
국어 : <input type = "text" name = "kor" value = "<%=kor2 %>"><br>
영어 : <input type = "text" name = "eng" value = "<%=eng2 %>"><br>
수학 : <input type = "text" name = "math" value = "<%=math2 %>"><br>
<input type = "submit" value = "제출/수정">&nbsp;&nbsp;&nbsp;&nbsp;<button type = "button" onclick ="location.href='/Servelet/update.jsp'">수정</button>
</form>
<table>
<caption>학생 성적 테이블</caption>
<tr bgcolor = "#ff9999">
<td>학번</td><td>이름</td>
<td>국어</td><td>영어</td><td>수학</td>
<td>총점</td><td>평균</td>
</tr>
<%
sql = "select * from score";
pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
while(rs.next()){
	String num1 = rs.getString("num");
	String name1 = rs.getString("name");
	String kor1 = rs.getString("kor");
	String eng1 = rs.getString("eng");
	String math1 = rs.getString("math");
	int sum = Integer.parseInt(kor1) + Integer.parseInt(eng1) + Integer.parseInt(math1);
	double avg = (double) sum / 3;	
%>
<tr>
<td><a href = "?find=<%=num1 %>"><%=num1 %></a></td><td><%=name1 %></td>
<td><%=kor1 %></td><td><%=eng1 %></td><td><%=math1 %></td>
<td><%=sum %></td><td><%=avg %></td><td><button type = "button" onclick = "location.href ='?delete=<%=num1 %>'">삭제</button></td>
</tr>
<%	 
}
%>
</table>
</body>
</html>