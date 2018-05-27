<%@ tag import="bean.*" pageEncoding="gb2312" %>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="spass" required="true"%>
<%@ variable name-given="flag" variable-class="java.lang.String" scope="AT_END"%>
<%
    PersonArrvayList pa=new PersonArrvayList();
    //调用 用户注册方法
    String m=pa.isPerson(sname,spass);
    jspContext.setAttribute("flag",m);
 %>