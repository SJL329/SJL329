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
// 验证输入不为空的脚本代码
function checkForm(form) {
if(form.username.value == "") {
alert("用户名不能为空!");
form.username.focus();
return false;
}
if(form.password.value == "") {
alert("密码不能为空!");
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
 <br><br><br>用户名：<input name="name" type="text" id="username"/><br>
密&nbsp; 码：<input type="password" name="password"  id="password"/>
    </h1>
    <h3>
    <input type="submit" value="登录" /> 
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
                    out.println("用户名或密码错误");
                    }
      }

      %>
    </body>
</body>
    </html>