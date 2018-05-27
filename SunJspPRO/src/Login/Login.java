package Login;
import java.sql.*;
public class Login {
	public boolean testLogin(String user, String password) {
		boolean flag = false;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    }
	    catch(Exception e){
	    }
		Connection con = null;
	    Statement stmt = null;
	    ResultSet rs = null;
        String sql="select * from student.dbo.login Where ”√ªß√˚ = '" + user + "'" + " AND √‹¬Î='" + password + "'";
	    try{	    	    
		        String uri="jdbc:sqlserver://localhost:1433;DatabaseName=Student";
		        con=DriverManager.getConnection(uri,"sa","sa");
		    }
		    catch(SQLException e){
		    }	    
	    try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) { 
				flag = true;
			}
		} catch (SQLException ex) {			
		} 
			try {
				stmt.close();
				rs.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return flag;		
	}
}