<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)session.getAttribute("login");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	 <style>
       body      {background-color:#ffffff;}
    	header	  {background-color:#BECDFF;}
        table     { width:680px; text-align:center; margin: auto; }
        th        { background-color:#000000; color:#ffffff;}
        input[type=text], textarea { width:100%; }
        h1        {text-align: center}
        .find-btn {text-align: center; margin:auto;}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SKT 하이닉스</title>
    <link rel="icon" href="sk.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/ie.js"></script>
</head>

<body>

    <header>
        <div class="inner">
            <h1><a href="#">SK 하이닉스</a></h1>

            <ul id="gnb">
                <li><a href="https://namu.wiki/w/SK">소개</a></li>
                <li><a href="https://www.youtube.com/@SKhynix">유튜브</a></li>
                <li><a href="boards.jsp">게시판</a></li>
                <li><a href="https://www.instagram.com/skhynix_official">인스타</a></li>
            </ul>

            <ul class="util">
            	<li><a href=#><%=name %>님</a></li>
            	<li><a href="updateInfo.jsp">회원정보 수정</a></li>
                <li><a href="logout.jsp">로그아웃</a></li>
                <li><a href="delete.jsp">회원삭제</a></li>
            </ul>
        </div>
    </header>
	<section>
	<form method="post" action="writeProcess.jsp">
	<h1>게시글 작성</h1>
		    <table>
		        <tr>
		            <th>제목</th>
		            <td><input type="text" name="title"  maxlength="80"
		                       value="" required>
		            </td>
		        </tr>
		        <tr>
		            <th>작성자</th>
		            <td><input type="text" name="writer" maxlength="20"
		                       value="<%=name %>" readonly>
		            </td>
		        </tr>
		        <tr>
		            <th>내용</th>
		            <td><textarea name="content" rows="10" required></textarea>
		            </td>
		        </tr>
		    </table>
	    <br>
	    <div class="find-btn">
		    <input type="submit" value="저장">
		    <input type="button" value="취소" onclick="history.back()">
	    </div>
	</form>
	</section>   
    <footer>
        <div class="inner">
            <div class="upper">
                <h1>SK 하이닉스</h1>
                <ul>
                    <li><a href="https://namu.wiki/w/%EB%82%98%EB%AC%B4%EC%9C%84%ED%82%A4:%EB%8C%80%EB%AC%B8">정보 제공 : namuwiki</a></li>
                    <li><a href="https://www.skhynix.com/">sk하이닉스</a></li>
                </ul>
            </div>

            <div class="lower">
                <address>
                    동서울대학교 컴퓨터소프트웨어 학과<br>
                    1906098 장태호 제작
                </address>
                <p>
                    2024 SK 하이닉스 &copy; copyright all right reserved.
                </p>
            </div>
        </div>
    </footer>




</body>

</html>