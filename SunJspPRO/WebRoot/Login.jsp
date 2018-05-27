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
    <table background="images/denglu.jpg"  align=center  width="513" height="340">
    <form name="LoginForm" method="post" action="" onsubmit="return checkForm(this);">
  <tr><td border="2">
    <center>
    <h1>  
 <br><br><br>用户名：<input name="username" type="text" id="username"/><br>
密&nbsp; 码：<input type="password" name="password"  id="password"/>
    </h1>
    <h3>
    <input type="submit" value="登录" /> 忘记密码
    </h3>
    <h3>
    还不是会员？<a href="Register.jsp">马上注册</a>
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
