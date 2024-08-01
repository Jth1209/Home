<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
boolean flag = false;

Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("username")){
			flag = true;
			break;
		}
	}
}



if(flag){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
</form>
</body>
</html>
<%
}else{
%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
out.println("<script type='text/javascript'>");
out.println("alert('로그인을 진행한 후 사용할 수 있는 기능입니다.');");
out.println("window.location.href = 'index.jsp';");
out.println("</script>");
%>
</body>
</html>
<%
}
%>
