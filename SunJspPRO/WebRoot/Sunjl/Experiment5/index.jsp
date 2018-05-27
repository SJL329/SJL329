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
<li><a href="Random.jsp" target="b">猜字母小游戏</a></li>
<li><a href="Test12.jsp" target="b">JDBC-ODBC桥链接方式连接Access和SQL Server2008数据库，测试是否连接成功</a></li>
<li><a href="Test3.jsp" target="b">纯驱动方式连接SQL Server2008数据库，测试数据库是否连接成功</a></li>
<li><a href="select.jsp" target="b">根据学号，查询出个人信息</a></li>
<li><a href="Login.jsp" target="b">用户登录</a></li>
</ul>
</td></tr>
<tr><td height="450" width=1800>
<iframe width=100% height=300 name="b"></iframe>
</td></tr>
</table>
</body>
</html>

