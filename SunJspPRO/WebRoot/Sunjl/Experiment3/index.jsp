
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
<li><a href="putImage.jsp" target="b">编写一个JSP页面：putImage.jsp和一个tag文件Image.tag。</a></li>
<li><a href="inputAndShow.jsp" target="b">编写一个tag文件GetArea.tag，负责梯形的面积，并将计算结果返回给调用该tag文件的JSP页面。</a></li>
<li><a href="giveYearMonth.jsp" target="b">编写一个Calendar.tag,该tag文件负责显示日历。</a></li>
<li><a href="giveString.jsp" target="b">编写一个Tag文件GetWord.tag，负责分解出字符串中的全部单词，并将分解出的全部单词返回给调用该Tag文件的JSP页面。</a></li>
</ul>
</td></tr>
<tr><td height="450" width=1800>
<iframe width=100% height=300 name="b"></iframe>
</td></tr>
</table>
</body>
</html>
