<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="denglu"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script type="text/javascript">
// ��֤���벻Ϊ�յĽű�����
function checkForm(form) {
if(form.username.value == "") {
alert("�û�������Ϊ��!");
form.username.focus();
return false;
}
if(form.password.value == "") {
alert("���벻��Ϊ��!");
form.password.focus();
return false;
}
return true;
}
</script>
  </head>
  <body >
    <table background="images/denglu.jpg"  align=center  width="513" height="340">
    <form name="LoginForm" method="post" action="" onsubmit="return checkForm(this);">
  <tr><td border="2">
    <center>
    <h1>  
 <br><br><br>�û�����<input name="username" type="text" id="username"/><br>
��&nbsp; �룺<input type="password" name="password"  id="password"/>
    </h1>
    <h3>
    <input type="submit" value="��¼" /> ��������
    </h3>
    <h3>
    �����ǻ�Ա��<a href="Register.jsp">����ע��</a>
    </h3></td></tr></table>
    </center>
    </form>
    <%String a=request.getParameter("username");
    String b=request.getParameter("password");
    if(a!=null&&b!=null)
    {%>
    <denglu:LoginTag sname="<%=a %>" spass="<%=b %>" />
<% if(flag.equals("ok")){response.sendRedirect("Sunjl/Experiment1/Sunjl2index.jsp");} 
  	 	 else response.sendRedirect("Login.jsp "); 
  	 	 }%>
    </body>
</body>
    </html>
