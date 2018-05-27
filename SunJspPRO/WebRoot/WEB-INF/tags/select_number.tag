<%@ tag pageEncoding="gb2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="queryResultby_number" scope="AT_END" %>
<%
    StringBuffer result;
    result=new StringBuffer();
    try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    }
    catch(Exception e){
    }
    Connection con;
    Statement sql;
    ResultSet rs;
    try{
        result.append("<table border=1>");
        String uri="jdbc:sqlserver://localhost:1433;DatabaseName=Student";
        con=DriverManager.getConnection(uri,"sa","sa");
        sql=con.createStatement();
        DatabaseMetaData metadata=con.getMetaData();
        ResultSet rs1=metadata.getColumns(null,null,"message",null);
        int countColumns=0;
        result.append("<tr>");
        while(rs1.next()){
            countColumns++;
            String columnName=rs1.getString(4);
            result.append("<td>"+columnName+"</td>"); 
        }
        rs1.close();
        result.append("</tr>");
        String condition="select * from Student.dbo.message Where number='"+number+"'";
        rs=sql.executeQuery(condition);
        while(rs.next()){
            result.append("<tr>");
            for(int k=1;k<=countColumns;k++){
                result.append("<td>"+rs.getString(k)+"</td>");
            }
            result.append("</tr>");         
        }
        result.append("</table>");
        rs.close();
        sql.close();
        con.close();
    }
    catch(SQLException e){
        result.append(e);
    }
    jspContext.setAttribute("queryResultby_number",new String(result));   
%>