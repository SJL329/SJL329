<%@tag pageEncoding="GB2312" import="java.util.*"%>
<%@attribute name="number" required="true"%>
<%@variable name-given="message" scope="AT_END" %>
<% 
String mess="";
Integer integer=(Integer)session.getAttribute("save");
int realnumber=integer.intValue();
int guessnumber=0;
boolean boo=true;
try { guessnumber=Integer.parseInt(number);
}
catch (Exception exp)
{boo=false;
}
if(boo)
{ if(guessnumber==realnumber)
{ int n=((Integer)session.getAttribute("count")).intValue();
  n=n+1;
  session.setAttribute("count",new Integer(n));
  mess="���¶��ˣ����ǵ�"+n+"�β²�";
}
else if(guessnumber>realnumber)
{ int n=((Integer)session.getAttribute("count")).intValue();
  n=n+1;
  session.setAttribute("count",new Integer(n));
  mess="���´��ˣ����ǵ�"+n+"�β²�";
}
else if(guessnumber<realnumber)
{ int n=((Integer)session.getAttribute("count")).intValue();
  n=n+1;
  session.setAttribute("count",new Integer(n));
  mess="����С�ˣ����ǵ�"+n+"�β²�";
}
else if(number.equals("�㻹û��ʼ�²�"))
{ 
mess="�㻹û��ʼ�²�";
}
jspContext.setAttribute("message",mess);
}
else
{ jspContext.setAttribute("message","���������Ĳ²�");
}
%>
