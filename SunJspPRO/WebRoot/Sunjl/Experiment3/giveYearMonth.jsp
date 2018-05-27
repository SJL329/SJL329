<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="year"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'giveYearMonth.jsp' starting page</title>
    
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
  <form>
    <h1>  
            Äê£º<input name="year" type="text"/>
            ÔÂ£º<input name="month" type="text"/>
    <input type="submit" value="ËÍ³ö"/>
    </h1>
    </form>
    <%
    String a=request.getParameter("year");
    String b=request.getParameter("month");
    if(a!=null&&b!=null){%>
<year:Calendar month="<%=b %>"  year="<%=a %>"/>
    <%} 
    %>
  </body>
</html>
