<%@tag import="bean.*" pageEncoding="gb2312"  %>
<%@ attribute name="sname" required="true" %> 
<%@ attribute name="spass" required="true" %> 
<%@ variable name-given="person" variable-class="bean.Person" scope="AT_END"%>
<% 
	PersonArrvayList pa=new PersonArrvayList();
	Person per=pa.getInforName(sname,spass);
		jspContext.setAttribute("person",per);
%>