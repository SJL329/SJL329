<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
#banner {
	float: left;
	height: 150px;
	width: 80%;
	margin-right: 10%;
	margin-left: 10%;
    background-image: url(../images/banner.jpg);
}
#left {
	float: left;
	height: 500px;
	width: 10%;
	margin-left: 10%;
}
#iframe {
	float: left;
	height: 500px;
	width: 70%;
	margin-right: 10%;
}
#left ul {
	list-style-type: none;
	text-align: center;
}
#left ul li {
	margin-top: 20px;
}
#left ul li a {
	font-size: 24px;
	font-weight: 800;
	color: #333;
	text-decoration: none;
}
</style>
</head>

<body>
<div id=banner></div>
<div id=left>
<ul>
<li><a href="Experiment1/Sunjl2index.jsp">实验一</a></li>
<li><a href="Experiment2/index.jsp" target="a">实验二</a></li>
<li><a href="Experiment3/index.jsp" target="a">实验三</a></li>
<li><a href="Experiment4/index.jsp" target="a">实验四</a></li>
<li><a href="Experiment5/index.jsp" target="a">实验五</a></li>
<li><a href="Experiment6/index.jsp" target="a">实验六</a></li>
<li><a href="">实验七</a></li>
<li><a href="">实验八</a></li>
</ul>
</div>
<div id=iframe><iframe name="a" width="100%" height="100%"></iframe></div>
</body>
</html>
