<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="show" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<style type="text/css">
#zhu {
	background-image: url(images/show.jpg);
	height: 1149px;
	width: 1075px;
	padding: 0px;
	float: left;
	margin-right: 30%;
	margin-left: 20%;
}

#main {
	margin-left: 19%;
	float: left;
	margin-top: 18%;
}
</style>
</head>
<body>
	<%
    String stryhxm=request.getParameter("name");
  	String strmm=request.getParameter("pass");
     %>
     <show:ShowTag sname="<%=stryhxm%>" spass="<%=strmm%>"></show:ShowTag>
<div id=zhu><table border=0 cellpadding="0" cellspacing="0" align="center" width="700" height="700" id=main>
<form action=" " method="post" onSubmit="return checkForm(this);">
<tr><td height="50" width="200" align="right">�û�������</td>
<td><input type="text" name="a" value="<%=person.getName() %>"/></td></tr>
<tr><td height="50" width="200" align="right">��&nbsp;&nbsp;&nbsp; �룺</td>
<td><input type="text" name="b" value="<%=person.getPassword() %>"/></td></tr>
<tr><td height="50" width="200" align="right">��ʵ������</td>
<td><input type="text" name="c" value="<%=person.getS1() %>"/></td></tr>
<tr><td height="50" width="200" align="right">��&nbsp;&nbsp;&nbsp; �䣺</td>
<td><input type="text" name="d" value="<%=person.getS2() %>"/></td></tr>
<tr><td height="50" width="200" align="right">��&nbsp;&nbsp;&nbsp; �ƣ�</td>
<td><input type="text" name="e" value="<%=person.getS3() %>"/></td></tr>
<tr><td height="50" width="200" align="right">��&nbsp;&nbsp;&nbsp; ��</td>
<td><select name="f">
    <option value="1" <% if(person.getS4().equals("1")) out.print("selected"); %>>��</option>
    <option value="2" <% if(person.getS4().equals("2")) out.print("selected"); %>>Ů</option>
</select></td></tr>
<tr><td height="50" width="200" align="right">�������ڣ�</td>
<td><input type="text" name="g" value="<%=person.getS5() %>"/></td></tr>
<tr><td height="50" width="200" align="right">ʡ&nbsp;&nbsp;&nbsp; �ݣ�</td>
<td><select name=h>
    <option value="1" <% if(person.getS6().equals("1")) out.print("selected"); %>>������ʡ</option>
    <option value="2" <% if(person.getS6().equals("2")) out.print("selected"); %>>����ʡ</option>
    <option value="3" <% if(person.getS6().equals("3")) out.print("selected"); %>>����ʡ</option>
    <option value="4" <% if(person.getS6().equals("4")) out.print("selected"); %>>�ӱ�ʡ</option>
    <option value="5" <% if(person.getS6().equals("5")) out.print("selected"); %>>����ʡ</option>
    <option value="6" <% if(person.getS6().equals("6")) out.print("selected"); %>>������</option>
</select></td></tr>
<tr><td height="50" width="200" align="right">�ֻ����룺</td>
<td><input type="text" name="i" value="<%=person.getS7() %>"/></td></tr>
<tr><td height="50" width="200" align="right">Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q��</td>
<td><input type="text" name="j" value="<%=person.getS8() %>"/></td></tr>
<tr><td height="20" align="center" colspan="2"><input type="submit" name="submit" >
</td></tr>
</table>
</form>
</table>
</div>
</body>
</html>