<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="Login.Login"%>
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
    <table background="../../images/denglu.jpg"  align=center  width="513" height="340">
    <form name="LoginForm" method="post" action="" onsubmit="return checkForm(this);">
  <tr><td border="2">
    <center>
    <h1>  
 <br><br><br>�û�����<input name="name" type="text" id="username"/><br>
��&nbsp; �룺<input type="password" name="password"  id="password"/>
    </h1>
    <h3>
    <input type="submit" value="��¼" /> 
    </h3>
    </td></tr></table>
    </center>
    </form>
    <% 
      String user=request.getParameter("name");
      String password=request.getParameter("password");
      if(user!=null||password!=null)
      {
      boolean flag=new Login().testLogin(user,password);
      if(flag){
               response.sendRedirect("../Experiment1/Sunjl2index.jsp");
               }
               else{
                    out.println("�û������������");
                    }
      }

      %>
    </body>
</body>
    </html>