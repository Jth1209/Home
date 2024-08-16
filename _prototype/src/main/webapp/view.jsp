<%@page import="com.board.db.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String uname = (String)session.getAttribute("uname");
	BoardDto dto = (BoardDto)request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>세부 내용</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
		section {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            
        }
	</style>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <section>
		<div class="container" style="padding-top: 50;">
			<table class="table table-bordered table-hover">
				<tr>
					<th>제목</th>
					<td>${msg.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${msg.writer}</td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td>${msg.regtime}</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${msg.hits}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${msg.content}</td>
				</tr>
			</table>
			<%
			if (uname.equals(dto.getWriter())) {
			%>
			<button type="button" class="btn btn-outline-primary"
				onclick="location.href='list'">목록보기</button>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='write?num=${param.num}'">수정</button>
			<button type="button" class="btn btn-outline-success"
				onclick="location.href='deleteB?num=${param.num}'">삭제</button>
			<%
			} else {
			%>
			<button type="button" class="btn btn-outline-primary"
				onclick="location.href='list'">목록보기</button>
			<%
			}
			%>
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