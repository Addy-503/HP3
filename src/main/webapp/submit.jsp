<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submit</title>
</head>
<body>
<jsp:useBean id="Beans" class="org.Hp3.Beans" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="Beans"/>
<jsp:getProperty property="firstName" name="Beans"/><br>
<jsp:getProperty property="lastName" name="Beans"/><br>

Gender: <%= request.getParameter("Gender") %><br>
Languages: <%
String[] language=request.getParameterValues("Language");
if (language!=null){
	for(int i=0;i<language.length;i++){
		out.print("<br>	");
	out.print(language[i]);
	}
 
}

%><br>
Country: <%= request.getParameter("Country") %><br>
</body>
</html>