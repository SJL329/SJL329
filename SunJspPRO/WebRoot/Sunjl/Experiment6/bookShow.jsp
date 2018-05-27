<%@ page language="java" import="java.util.*,bean.*" pageEncoding="GB2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="hchaxun" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'bookShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.imagetable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.imagetable th {
	background:#b5cfd2 url('cell-blue.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
table.imagetable td {
	background:#dcddc0 url('cell-grey.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>
  </head>
  
  <body >
     <center>
   
 
  
    <%String hstr=request.getParameter("sunnumber");
    if(hstr!=null){
    byte b[]=hstr.trim().getBytes("ISO-8859-1");
    hstr=new String(b);
    %>
     <jsp:useBean id="book" class="bean.Book" scope="page"></jsp:useBean>
    <jsp:setProperty property="querycontent" name="book" value="<%=hstr %>"/>
    <jsp:getProperty property="queryresult" name="book"/>
    <%} %>
    <form action="Sunjl/Experiment6/book.jsp" mothod="post" name=form>
    <input type="submit" value="·µ»Ø²éÑ¯"> 
    </form>
    </center>
    
  </body>
</html>
