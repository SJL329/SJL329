<%@ page contentType="text/html;charset=gb2312" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<html>
<body>
      <font size=2>
      <% 
        String number=request.getParameter("number");
      %>
      <inquire:select_number number="<%=number %>"/>
                根据学号<%=number %>查询到的记录：
      <br><%=queryResultby_number %>
      </font>
</body>
</html>