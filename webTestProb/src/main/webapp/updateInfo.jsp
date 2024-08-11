<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	  <style>
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 95%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        section {
            font-family: Arial, sans-serif;
            display: flex;
            background-color: #f4f4f4;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
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
                <li><a href="registerView.jsp">회원가입</a></li>
            </ul>
        </div>
    </header>
    <section>
    	<div class="container">
        <h2>회원 정보 수정</h2>
        <form action="update.jsp" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" value="<%=id %>" readOnly>
            <label for="password">Password:</label>
            <input type="text" id="password" name="password" placeholder="새로운 비밀번호"required>
            <label for="name">UserName:</label>
            <input type="text" id="name" name="name" placeholder="새로운 닉네임"required>
            <input type="submit" value="Update">
        </form>
    	</div>
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