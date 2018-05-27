<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="zifuchuan"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'giveString.jsp' starting page</title>
    
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
   ‰»Î<input type="text" name="str"/>
    <input type="submit" value="ÀÕ≥ˆ"/>
</form>
<%
    String a=request.getParameter("str");
    if(a!=null){%>
<zifuchuan:GetWord str="<%=a %>" />
<%
for(int i=0;i<wordlist.size();i++)
{
out.print(wordlist.get(i)+"<br>");
}
} %>
  </body>
</html>
