<%-- 
    Document   : regist
    Created on : 2016-5-16, 13:50:29
    Author     : ivan93
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="regist.action" method="post">
<table>
<caption><h2>用户登录</h2></caption>
<tr>
<td>username: </td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>password: </td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td><input type="submit" name="submit" /></td>
</tr>
</table>
</form>
</center>
</body>
</html>
