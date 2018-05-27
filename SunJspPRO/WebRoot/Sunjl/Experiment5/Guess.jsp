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
             当前猜测结果：<%=message %>
     <% if (message.startsWith("您猜对了"))
        { %>
        <br><a href="Random.jsp">重新获得随机字母</a>
        <% }
        else
        { %> 
        <br>请输入您的猜测：
        <form action="" method="post" name=form>
        <input type="text" name="guessnumber">
        <input type="submit" value="送出" name="submit">
         </form>
         <%}
         %>
        </font>     
</body>
</html>
