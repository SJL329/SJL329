<%@ page contentType="text/html;charset=gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="guessnumber"%>
<html>
<body bgcolor=cyan>
    <font size=2>
    <%  String str=request.getParameter("guessnumber");
        if(str==null)
        {  str="*";      
        }
        if(str.length()==0)
        {   str="*";
        }
        char a=str.charAt(0);
        int b=a;
        String number=String.valueOf(b);
        if(number.equals("42"))
        { number="*";
        } 
     %>
     <guessnumber:GuessTag number="<%=number %>"></guessnumber:GuessTag>
             ��ǰ�²�����<%=message %>
     <% if (message.startsWith("���¶���"))
        { %>
        <br><a href="Random.jsp">���»�������ĸ</a>
        <% }
        else
        { %> 
        <br>���������Ĳ²⣺
        <form action="" method="post" name=form>
        <input type="text" name="guessnumber">
        <input type="submit" value="�ͳ�" name="submit">
         </form>
         <%}
         %>
        </font>     
</body>
</html>
