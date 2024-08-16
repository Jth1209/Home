<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
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
    <title>æspa</title>
    <link rel="icon" href="logo.ico" type="image/x-icon">
    <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/ie.js"></script>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index">홈페이지</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="check?identify=1">게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="check?identify=2">자료실</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="check?identify=3">쇼핑몰</a>
        </li>
        <li class="nav-item dropdown">
        <%
        	if(session.getAttribute("uname") != null){
        %>
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ${uname }님
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="logoutProcess">로그아웃</a></li>
            <li><a class="dropdown-item" href="update">회원정보수정</a></li>
            <li><a class="dropdown-item" href="delete">회원정보삭제</a></li>
          </ul>
        <%
        	}else{
        %>	
        	<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            로그인이 필요합니다
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="login">로그인</a></li>
            <li><a class="dropdown-item" href="register">회원가입</a></li>          
            </ul>	
        <% 	
        	}
        %>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <section>
  		<div class="container">
        <h2>회원 정보 수정</h2>
        <form action="updateProcess" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" value="${id }" readOnly>
            <label for="password">Password:</label>
            <input type="text" id="password" name="password" placeholder="새로운 비밀번호"required>
            <label for="name">UserName:</label>
            <input type="text" id="name" name="name" placeholder="새로운 닉네임"required>
            <input type="submit" value="Update">
        </form>
    	</div>
    </section>

    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
                <ul class="nav col-md-4 justify-content-end">
                    <li class="nav-item"><a href="https://m.cafe.daum.net/dafdgds/_rec" class="nav-link px-2 text-muted">Family Site</a></li>
                    <li class="nav-item"><a href="https://m.cafe.daum.net/dafdgds/_rec" class="nav-link px-2 text-muted">Instagram</a></li>
                    <li class="nav-item"><a href="https://m.cafe.daum.net/dafdgds/_rec" class="nav-link px-2 text-muted">Vmap</a></li>
                </ul> 
                <p class="col-md-4 mb-0 text-muted">
                    2024 æspa &copy; copyright all right reserved.
                </p>
    </footer>
</body>
</html>