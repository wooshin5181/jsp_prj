<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%
String method=request.getMethod();

if("GET".equals(method.toUpperCase())){
	response.sendRedirect("http://192.168.10.68/jsp_prj/index.html");
	return;
}//end if
%>