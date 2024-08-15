<%@page import="member.memberDAO"%>
<%@page import="member.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	memberDTO dto= (memberDTO) session.getAttribute("uname");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
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
            <%
            	if(session.getAttribute("uname") != null){
            		session.setAttribute("login", dto.getName());
            %>
            	<li><a href=#>${uname.getName() }님</a></li>
            	<li><a href="updateInfo.jsp">회원정보 수정</a></li>
                <li><a href="logout.jsp">로그아웃</a></li>
                <li><a href="delete.jsp">회원삭제</a></li>
                
            <% 		
            	}else{
            %>
                <li><a href="loginView.jsp">로그인</a></li>
                <li><a href="registerView.jsp">회원가입</a></li>
            <%		
            	}
            %>
            </ul>
        </div>
    </header>


    <figure>
        <video src="img/sk.mp4" autoplay muted loop></video>
        <div class="inner">
            <h1>미래인재를 탐구한다</h1>
            <p>SK 하이닉스를 기반으로 한 웹사이트 개발 프로젝트입니다 <br>
               다양한 컨셉으로 웹 사이트를 만드는 연습을 하고 있습니다.</p>
            <a href="https://www.skhynix.com/">sk하이닉스 바로가기</a>
        </div>
    </figure>

    <section>
        <div class="inner">
            <h1>최근 소식</h1>
            <div class="wrap">
                <article>
                    <div class="pic">
                        <img src="img/ban1.jpg" alt="1번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="https://www.msn.com/ko-kr/news/other/%EC%82%BC%EC%84%B1-sk-ai-%EB%B0%98%EB%8F%84%EC%B2%B4-%ED%9A%A8%EC%9C%A8-%EA%B7%B9%EB%8C%80%ED%99%94-%EC%A0%80%EC%A0%84%EB%A0%A5-d%EB%9E%A8-%EA%B2%BD%EC%9F%81/ar-AA1oxCn2?ocid=BingNewsSerp">AI 기반 반도체의 발전</a></h2>
                    <p>대충 AI와 반도체가 서로 협업하면서 발전된 기술을 사람들에게 제공할 수 있게 된다는 내용...</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/ban2.jpg" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="https://www.yna.co.kr/view/AKR20240807061900009">반도체 기업간의 관계</a></h2>
                    <p>대충 전 세계 반도체 중점 기업들간의 관계와 영향력의 변화에 대한 내용...</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/ban3.jpg" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="https://news.sktelecom.com/177133">반도체 성능의 한계</a></h2>
                    <p>대충 반도체가 어떤 식으로 동작하고 미래에 어떻게 발전될 수 있는지에 대한 내용...</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/ban4.jpg" alt="4번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="https://www.yna.co.kr/view/AKR20221209110000017">AI 발전과 고성능 반도체</a></h2>
                    <p>대충 현재 개발중인 AI기반 반도체의 성능이 얼마나 뛰어나고 어디까지 발전할 수 있을지에 대한 내용...</p>
                </article>
            </div>
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