<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
ul{
	list-style-type:none;
	margin: 0;
    padding: 0;
}
.navi > li{
	float: left;
}
.navi > li > a{
	padding: 10px 50px;
}
li a{
	background-color: #39f;
    text-decoration: none;
    font-weight: bold;
    color: #000000;
    display: block;
    text-align: center;
    padding: 10px;
}
.navi li ul{	/* << li 하위의 ul = 서브메뉴 */
	display: none;
}
</style>
</head>
<body>

    <ul class="navi">
        <li><a href="#">홈</a></li>
        <li><a href="#">게시판</a>
        <li><a href="#">로그인</a>
        <li><a href="#">회원가입</a></li>
    </ul>
</body>
</html>