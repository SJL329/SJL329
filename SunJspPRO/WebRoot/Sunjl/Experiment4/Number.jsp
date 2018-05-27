<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="jisuan"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Number.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=pink>
   <%
    String a=request.getParameter("numberOne");
    String b=request.getParameter("numberTwo");
    String op=request.getParameter("operator");
   if(a==null||b==null||op==null){a="0";b="0";op="";}
    %>
<jisuan:Computer numberOne="<%=a %>" numberTwo="<%=b %>" operator="<%=op %>"/>
¼ÆËã½á¹û£º<%=a%><%=op %><%=b %>=<%=result%>
    
    <form action="" method="post">
    <input type="text" name="numberOne" value="<%=a %>"/>
    <select name="operator">
    <option value="+" <% if(op.equals("+")) out.print("selected");%>>+</option>
    <option value="-" <% if(op.equals("-")) out.print("selected");%>>-</option>
    <option value="*" <% if(op.equals("*")) out.print("selected");%>>*</option>
    <option value="/" <% if(op.equals("/")) out.print("selected");%>>/</option>
    </select>
    <input type="text" name="numberTwo" value="<%=b %>"/>=
    <input type="text" name="result" value="<%=result %>"/>
    <input type="submit" value="jisuan"/>
    </form>
   
  </body>
</html>
