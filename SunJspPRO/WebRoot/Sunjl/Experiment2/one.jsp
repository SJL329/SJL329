<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'one.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=yellow>
     <jsp:include page="head.txt"/>
    <form action="">
    <h1>ÇëÊäÈë×Ö·û£º
    <input name="sname" type="text">
    <input type="submit" value="ËÍ³ö"></h1>
    </form>
    <%
    String str=request.getParameter("sname");
    if(str!=null){
      char x=str.charAt(0);
      if(x>'l'&&x<='z'){%>
      <jsp:forward page="three.jsp">
         <jsp:param value="<%=x %>" name="xx"/>
         </jsp:forward>
      <% }else if(x>='a'&&x<='l'){%>
      <jsp:forward page="two.jsp">
         <jsp:param value="<%=x %>" name="xx"/>
         </jsp:forward>
      <% }else{%>
      <jsp:forward page="error.jsp">
         <jsp:param value="<%=x %>" name="xx"/>
         </jsp:forward>
      <% }
    }
     %>
  </body>
</html>
