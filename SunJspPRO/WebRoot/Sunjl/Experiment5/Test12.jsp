<%@ page contentType="text/html;charset=gb2312"%> 
<%@ page import="java.sql.*" %>
<html>
<body bgcolor=cyan>
      <%
      Connection con;
      Statement sql;
      ResultSet rs;
      try{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      }
      catch(ClassNotFoundException e)
      {
      out.print(e);
      }
      try { con=DriverManager.getConnection("jdbc:odbc:redsun","sa","sa");
      sql=con.createStatement();
      rs=sql.executeQuery("SELECT * FROM message");
      out.print("<table border=2>");
      out.print("<tr>");
      out.print("<th width=50>"+"number");
      out.print("<th width=50>"+"name");
      out.print("<th width=100>"+"birthday");
      out.print("<th width=100>"+"email");
      out.print("</tr>");
      while(rs.next())
      {
      out.print("<tr>");out.print("<td>"+rs.getString(1)+"</td>");
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
