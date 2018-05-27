<%@ page contentType="text/html;charset=gb2312"%>
<html>
<body bgcolor=pink>
     <font size=2>
             随机分给了你一个a到z之间的字母，请猜！
     <%
     int num=(int)(Math.random()*(122-97))+97;
     session.setAttribute("count",new Integer(0));
     session.setAttribute("save",new Integer(num));
     %>
     <BR><a href="Guess.jsp"> 去猜这个字母</a></font>
</body>
</html>