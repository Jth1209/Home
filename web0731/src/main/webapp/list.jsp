<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="board.DTO"%>
<%@page import="java.util.List"%>
<%@page import="board.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

String sqlTmp = "";
String numT = "";
String writerT = "";
String titleT = "";
String contentT = "";
String regtimeT = "";
String hitsT = "";

/*Thread thr = new Thread(new Runnable(){
	
	public void run(){
		for(;;){
			LocalDateTime c = LocalDateTime.now();
			String date = DateTimeFormatter.ofPattern("yyyy년MM월dd일 hh시mm분ss초").format(c);
			try{
				Thread.sleep(1000);
			}catch (InterruptedException e){
				e.printStackTrace();
			}
			
		}
	}
	
});

thr.start();
*/
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="css/bootsrtap.css">
    <style>
        table     { width:680px; text-align:center; }
        th        { background-color:cyan; }
        
        .num      { width: 80px; }
        .title    { width:230px; }
        .writer   { width:100px; }
        .regtime  { width:180px; }
                
        a:link    { text-decoration:none; color:blue; }
        a:visited { text-decoration:none; color:gray; }
        a:hover   { text-decoration:none; color:red;  }
    </style>
</head>
<body>

<table>
    <tr>
        <th class="num"    >번호    </th>
        <th class="title"  >제목    </th>
        <th class="writer" >작성자  </th>
        <th class="regtime">작성일시</th>
        <th                >조회수  </th>
    </tr>
<%
DAO dao = new DAO();
List<DTO> dto = dao.selectAll();
for(DTO dt : dto){
	numT = String.valueOf(dt.getNum());
	titleT = dt.getTitle();
	writerT = dt.getWriter();
	regtimeT = dt.getRegtime();
	hitsT = String.valueOf(dt.getHits());
%>    
    <tr>
        <td><%=numT %></td>
        <td style="text-align:left;">
            <a href="view.jsp?num=<%=numT %>"><%=titleT %></a>
        </td>
        <td><%=writerT %></td>
        <td><%=regtimeT %></td>
        <td><%=hitsT %></td>
    </tr>   
<%
}
%>
</table>

<br>
<input type="button" value="글쓰기" onclick="location.href='write.jsp'">
<input type="button" value="홈페이지" onclick="location.href='/web0801/index.jsp'">


</body>
</html>