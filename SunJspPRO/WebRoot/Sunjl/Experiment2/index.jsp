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
<li><a href="inputName.jsp" target="b">编写两个JSP页面，分别为inputName.jsp和people.jsp</a></li>
<li><a href="first.jsp" target="b">编写first.jsp</a></li>
<li><a href="../Experiment1/Sunjl2index.jsp" target="b">使用include指令标记，实现实验一导航条部分的超链接部分</a></li>
<li><a href="one.jsp" target="b">编写四个JSP页面：one.jsp、two.jsp、three.jsp、error.jsp</a></li>
</ul>
</td></tr>
<tr><td height="450" width=1800>
<iframe width=100% height=300 name="b"></iframe>
</td></tr>
</table>
</body>
</html>
