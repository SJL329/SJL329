<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body bgcolor=pink>
     <font size=2>
             ����ָ�����һ��a��z֮�����ĸ����£�
     <%
     int num=(int)(Math.random()*(122-97))+97;
     session.setAttribute("count",new Integer(0));
     session.setAttribute("save",new Integer(num));
     %>
     <BR><a href="Guess.jsp"> ȥ�������ĸ</a></font>
</body>
</html>