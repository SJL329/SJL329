<%@ tag import="bean.*" pageEncoding="gb2312" %>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="spass" required="true"%>
<%@ variable name-given="flag" variable-class="java.lang.String" scope="AT_END"%>
<%
    PersonArrvayList pa=new PersonArrvayList();
    //���� �û�ע�᷽��
    String m=pa.isPerson(sname,spass);
    jspContext.setAttribute("flag",m);
 %>