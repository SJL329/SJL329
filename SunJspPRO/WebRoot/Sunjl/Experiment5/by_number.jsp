<%@ page contentType="text/html;charset=gb2312" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<html>
<body>
      <font size=2>
      <% 
        String number=request.getParameter("number");
      %>
      <inquire:select_number number="<%=number %>"/>
                ����ѧ��<%=number %>��ѯ���ļ�¼��
      <br><%=queryResultby_number %>
      </font>
</body>
</html>