<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Name</title>
</head>
<body>
<jsp:useBean id="Beans" class="org.Hp3.Beans" scope="page"></jsp:useBean>
<jsp:setProperty property="firstName" name="Beans" value="Addy"/><br>
<jsp:setProperty property="lastName" name="Beans" value="bhai"/><br>
</body>
</html>