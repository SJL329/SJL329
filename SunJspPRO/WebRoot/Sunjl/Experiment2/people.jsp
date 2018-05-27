<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'people.jsp' starting page</title>
    
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
    <%!
    StringBuffer person;
    int count;
       public void judge(){
       if(count==0){
       person=new StringBuffer();
    }
    }
    public void addPerson(String p){
    person.append("   "+p);
    count++;
    }
     %>
     <% 
         String str=request.getParameter("sname");
         if(str==""||str.length()>=10){%>
         <jsp:forward page="../inputName.jsp"/>
         <%}
         judge();
         addPerson(str);
         out.print("<h1>姓名为："+person+"</h1>"+"<h1>目前已访问人数:"+count+"</h1>");
     %>
  </body>
</html>
