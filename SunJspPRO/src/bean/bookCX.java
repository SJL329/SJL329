package bean;
import java.sql.*;
public class bookCX {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	public bookCX(){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=BookStore","sa","sa");
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public StringBuffer getAll(String sql,String tb_book){
		StringBuffer sjl=new StringBuffer();
		try{
			sjl.append("<table class=\"imagetable\">");     
	        DatabaseMetaData metadata=con.getMetaData();
	        ResultSet rs1=metadata.getColumns(null,null,"tb_book",null);
	        int number=0;
	        sjl.append("<tr >");
	        while(rs1.next()){
	            number++;
	            String columnName=rs1.getString(4);
	            sjl.append("<th width=\"25%\">"+columnName+"</th>"); 
	        }       
	        sjl.append("</tr>");
	         stmt=con.createStatement();
	        rs=stmt.executeQuery(sql);
	        while(rs.next()){
	        	sjl.append("<tr>");
	            for(int k=1;k<=number;k++){
	            	sjl.append("<td width=\"25%\">"+rs.getString(k)+"</td>");
	            }
	            sjl.append("</tr>");         
	        }
	        sjl.append("</table>");               
	        con.close();  
	        } 
	    catch(SQLException e){
	    	sjl.append(e);
	    }
	
	       return sjl; 
	}
}
