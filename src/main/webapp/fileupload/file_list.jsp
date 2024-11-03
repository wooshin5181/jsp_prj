<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://192.168.10.225/jsp_prj/common/images/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="http://192.168.10.210/jsp_prj/common/css/main_20240911.css">
<!-- bootstrap CDN 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>
<div id="wrap">
<div>
<a href="upload_frm.jsp">업로드</a>
<table class="table table-hover">
<thead>
<tr>
<th style="width: 80px">번호</th>
<th style="width: 120px">이미지</th>
<th style="width: 200px">파일명</th>
<th style="width: 150px">파일크기</th>
<th style="width: 200px">업로드일</th>
</tr>
</thead>
<tbody>
<% 
File loadDir=new File("C:/dev/workspace/jsp_prj/src/main/webapp/upload");
File[] listFile=loadDir.listFiles(); 
pageContext.setAttribute("listFile", listFile);
%>
<c:choose>
<c:when test="${ empty listFile }">
<tr>
<td colspan="5">업로드된 파일이 없습니다.</td>
</tr>
</c:when>
<c:otherwise>
<%int ind=0; 
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd EEEE HH:mm:ss");
String fileName="";
//확장자가 jpg,gif,png,bmp,txt,js,css,html인 경우에는 링크를 설정하여 
// 웹 브라우저에서 보이도록 만들어보세요.
boolean linkFlag=false;
String linkExt="jpg,gif,png,bmp,txt,js,css,html";

for(File tempFile : listFile){%>
<tr>
<td><%= ind+1 %></td>
<td>
<%-- <img src="../upload/<%= tempFile.getName() %>" 
	style="width: 100px;height: 50px"/>  --%>
</td>
<td>
<%
 fileName=tempFile.getName();
 linkFlag=linkExt.contains(fileName.substring(fileName.lastIndexOf(".")+1));
 if( linkFlag ){
%>
<a href="../upload/<%= fileName %>">
<%}//end if %>
<%= fileName %>
<%if( linkFlag){ out.print("</a>"); }%>

(<a href="download.jsp?fileName=<%= tempFile.getName() %>">다운로드</a>)</td>
<td><%= tempFile.length() %></td>
<td><%= sdf.format( new Date( tempFile.lastModified()) ) %></td>
</tr>
<% ind++; 
}//end for
%>
</c:otherwise>
</c:choose>

</tbody>
</table>
	
</div>
</div>
</body>
</html>










