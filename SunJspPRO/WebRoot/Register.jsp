<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="zhuce"%>
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
if(form.a.value == "") {
alert("�û�������Ϊ��!");
form.a.focus();
return false;
}
if(form.b.value == "") {
alert("���벻��Ϊ��!");
form.b.focus();
return false;
}
if(form.d.value == "") {
alert("���䲻��Ϊ��!");
form.d.focus();
return false;
}
if(form.e.value == "") {
alert("�ǳƲ���Ϊ��!");
form.e.focus();
return false;
}
if(form.i.value == "") {
alert("�ֻ����벻��Ϊ��!");
form.i.focus();
return false;
}
if(form.j.value == "") {
alert("qq����Ϊ��!");
form.j.focus();
return false;
}
return true;
}
</script>
  </head> 
  <body> <form name="RegisterForm" action="" method="post" onSubmit="return checkForm(this);"/>
<table width="1009" height="100%" border="0"  background="images/zhuce.jpg" align="center">
      <tr width=1009 height=160><td></td></tr>
      <tr><td width=295px></td>
      <td>
      <tr><td align="center" height=45 colspan="2">�û�������
      <input type="text" name="a" id="textfield1" /> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">��&nbsp;&nbsp;&nbsp; �룺
       <input type="password" name="b" id="textfield2" /> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">��ʵ������
       <input type="text" name="c" id="textfield3" /></td></tr>
       <tr><td align="center" height=45 colspan="2">��&nbsp;&nbsp;&nbsp; �䣺
       <input type="text" name="d" id="textfield4" /> <span class="STYLE6">*</span></td></tr>
      <tr> <td align="center" height=45 colspan="2">��&nbsp;&nbsp;&nbsp; �ƣ�
      <input type="text" name="e" id="textfield5" /> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">��&nbsp;&nbsp;&nbsp; ��
      <Select name="f" size=1>
             <option value="1">��</option>
             <option value="2">Ů</option>
      </select> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">�������ڣ�
       <input type="text" name="g" id="textfield6" /></td></tr>
       <tr><td align="center" height=45 colspan="2">ʡ&nbsp;&nbsp;&nbsp; �ݣ�
         <select name="h" size=1>
            <option value="1">������ʡ</option>
            <option value="2">����ʡ</option>
            <option value="3">����ʡ</option>
            <option value="4">�ӱ�ʡ</option>
             <option value="5">����ʡ</option>
            <option value="6">������</option>
         </select> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">�ֻ����룺
       <input type="text" name="i" id="textfield7" /> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center" height=45 colspan="2">Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q��
       <input type="text" name="j" id="textfield8" /> <span class="STYLE6">*</span></td></tr>
       <tr><td align="center"  height=45 colspan="2">
       <input type="submit" value="����ע��" style="background:green; color:white ;" />
       ( <span class="STYLE6">*</span>Ϊ������)
       </td></tr>
      </td>
      </tr>
</table>
  </form>
  <% 
  	String stryhmz=request.getParameter("a");
  	String strmm=request.getParameter("b");
  	String strzsxm=request.getParameter("c");
  	String stryx=request.getParameter("d");
  	String strnc=request.getParameter("e");
  	String strxb=request.getParameter("f");
  	String strcsrq=request.getParameter("g");
  	String strsf=request.getParameter("h");
  	String strsjhm=request.getParameter("i");
  	String strqq=request.getParameter("j");
  	if(stryhmz!=null&&strmm!=null){%>
  	<zhuce:RegistTag sname="<%=stryhmz %>" spass="<%=strmm %>" s1="<%=strzsxm%>" 
  	s2="<%=stryx%>" s3="<%=strnc%>" s4="<%=strxb%>" s5="<%= strcsrq%>" s6="<%=strsf%>" 
  	s7="<%=strsjhm%>" s8="<%=strqq%>" />
  	<%=flag %>
  	<% if(flag.equals("successful")){response.sendRedirect("Show.jsp?name="+stryhmz+"&pass="+strmm);} 
  	 	 %>
    <%} 
    %>	
  </body>
</html>
