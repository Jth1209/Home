<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Cookie[] cookies = request.getCookies();

if(cookies != null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("username")){
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			break;
		}
	}
}

out.println("<script type='text/javascript'>");
out.println("alert('로그아웃 완료');");
out.println("window.location.href = 'index.jsp';");
out.println("</script>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>