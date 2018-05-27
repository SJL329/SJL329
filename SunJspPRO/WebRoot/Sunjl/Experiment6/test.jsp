<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body bgcolor=yellow>
<%
Connection con;
Statement sql;
ResultSet rs;
try{Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
}
catch(Exception e)
{
out.print(e);
}
try { String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=BookStore";
String user="sa";
String password="sa";
con=DriverManager.getConnection(uri,user,password);
sql=con.createStatement();
rs=sql.executeQuery("SELECT * FROM tb_book");
out.print("<table border=2>");
out.print("<tr>");
out.print("<th width=50>"+"bookid");
out.print("<th width=50>"+"bookname");
out.print("<th width=100>"+"author");
out.print("<th width=100>"+"price");
out.print("</tr>");
while(rs.next())
{
out.print("<tr>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("</tr>");
}
out.print("</table>");
con.close();
}
catch(SQLException e)
{
out.print(e);
}
 %>
  </body>
</html>
