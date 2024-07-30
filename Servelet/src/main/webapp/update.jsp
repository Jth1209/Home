<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 업데이트</title>
</head>
<body>
<h1>수정할 정보 입력</h1>
<form action = "/Servelet/manageScore.jsp">
수정할 학번 : <input type = "text" name= "unum"><p/>

이름 : <input type = "text" name = "uname"><br>
국어 : <input type = "text" name = "ukor"><br>
영어 : <input type = "text" name = "ueng"><br>
수학 : <input type = "text" name = "umath"><br>
<input type = "submit" value = "수정">
</form>
</body>
</html>