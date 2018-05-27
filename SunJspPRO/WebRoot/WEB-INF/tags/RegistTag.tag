<%@ tag import="bean.*" pageEncoding="gb2312" %>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="spass" required="true"%>
<%@ attribute name="s1" required="true" %> 
<%@ attribute name="s2" required="true" %> 
<%@ attribute name="s3" required="true" %> 
<%@ attribute name="s4" required="true" %> 
<%@ attribute name="s5" required="true" %> 
<%@ attribute name="s6" required="true" %> 
<%@ attribute name="s7" required="true" %> 
<%@ attribute name="s8" required="true" %> 
<%@ variable name-given="flag" variable-class="java.lang.String" scope="AT_END"%>
<%
    PersonArrvayList pa=new PersonArrvayList();
    //调用 用户注册方法
    String m=pa.Register(sname,spass,s1,s2,s3,s4,s5,s6,s7,s8);
    jspContext.setAttribute("flag",m);
 %>
