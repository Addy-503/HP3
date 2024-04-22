<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>added properties</title>
</head>
<body>
<jsp:useBean id="Beans" class="org.Hp3.Beans" scope="page"></jsp:useBean>
FirstName:<jsp:getProperty property="firstName" name="Beans"/><br>
LastName:<jsp:getProperty property="lastName" name="Beans"/><br>
</body>
</html>