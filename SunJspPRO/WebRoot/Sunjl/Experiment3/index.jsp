
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<table border="0">
<tr><td height=110>
<ul>
<li><a href="putImage.jsp" target="b">��дһ��JSPҳ�棺putImage.jsp��һ��tag�ļ�Image.tag��</a></li>
<li><a href="inputAndShow.jsp" target="b">��дһ��tag�ļ�GetArea.tag���������ε�������������������ظ����ø�tag�ļ���JSPҳ�档</a></li>
<li><a href="giveYearMonth.jsp" target="b">��дһ��Calendar.tag,��tag�ļ�������ʾ������</a></li>
<li><a href="giveString.jsp" target="b">��дһ��Tag�ļ�GetWord.tag������ֽ���ַ����е�ȫ�����ʣ������ֽ����ȫ�����ʷ��ظ����ø�Tag�ļ���JSPҳ�档</a></li>
</ul>
</td></tr>
<tr><td height="450" width=1800>
<iframe width=100% height=300 name="b"></iframe>
</td></tr>
</table>
</body>
</html>
