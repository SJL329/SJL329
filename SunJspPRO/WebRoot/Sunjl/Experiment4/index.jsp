<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<table border="0">
<tr><td height=110>
<ul>
<li><a href="Number.jsp" target="b">四则运算</a></li>
<li><a href="../../Login.jsp" target="b">用户登录界面</a></li>
<li><a href="../../Register.jsp" target="b">用户注册界面</a></li>
</ul>
</td></tr>
<tr><td height="450" width=1800>
<iframe width=100% height=300 name="b"></iframe>
</td></tr>
</table>
</body>
</html>
