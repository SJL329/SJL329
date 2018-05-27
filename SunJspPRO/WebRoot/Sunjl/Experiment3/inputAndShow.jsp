<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="xx"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputAndShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="">
    <h1>  
            上底：<input name="sup" type="text">
            下底：<input name="sdown" type="text">
             高：<input name="sheight" type="text">
    <input type="submit" value="计算梯形的面积">
    </h1>
    </form>
    <%
    String a=request.getParameter("sup");
    String b=request.getParameter("sdown");
    String c=request.getParameter("sheight");
    if(a!=null&&b!=null&&c!=null){%>
<xx:GetArea tdown="<%=b %>" theight="<%=c %>" tup="<%=a %>"/>
<%=info %>:<%=area %>
    <%} 
    %>
  </body>
</html>
