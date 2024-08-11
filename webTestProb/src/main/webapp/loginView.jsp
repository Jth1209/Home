<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<head>
	 <style>
        section {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            
        }
        section video{
        	object-fit: cover; /*영상을 figure안쪽에 꽉 차도록 설정*/
			width: 100%;
			height: 100%;
			opacity: 0.3;
			position: cover;
			top: 0px;
			left: 0px;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
        	text-align: center;
            margin-bottom: 20px;
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        video{
        	width: 100%;
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
	    <div class="login-container">
	        <h2>로그인</h2>
	        <form action="loginProcess.jsp" method="post">
	            <input type="text" name="username" placeholder="Username" required>
	            <input type="password" name="password" placeholder="Password" required>
	            <button type="submit">로그인</button>
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
                    동서울대학교 컴퓨터 소프트웨어 학과<br>
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