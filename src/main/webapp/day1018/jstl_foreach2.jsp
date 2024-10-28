<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<%
		String[] arr={"Java SE","DBMS","JDBC","HTML"};
		
		List<String> list=new ArrayList<String>();
		list.add("JSP tag's");
		list.add("내장객체");
		list.add("표준액션태그");
		list.add("EL");
		list.add("JSTL");
		
		//배열과 list를 EL에서 사용하기위해 scope객체에 저장
		pageContext.setAttribute("arrSubject", arr);
		pageContext.setAttribute("listJSP", list);
				
	%>
	<c:forEach var="subject" items="${ arrSubject }" varStatus="i" >
	
	<c:out value="${ i.count }"/>. 
	<input type="text" value="${ subject }"${ i.first?" readonly='readonly'":""  }${ i.count eq 2?" autofocus='autofocus'":"" }/><br>
	</c:forEach>
	
	<!-- list의 값을 체크박스로 만들어서 출력   -->
	<c:forEach var="element" items="${ listJSP }">
	<input type="checkbox" value="${ element }"/><c:out value="${ element }"/>
	</c:forEach>
	
	
</div>
</body>
</html>