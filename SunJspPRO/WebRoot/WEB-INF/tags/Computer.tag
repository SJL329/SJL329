<%@tag pageEncoding="GB2312"%>
<%@attribute name="numberOne" required="true"%>
<%@attribute name="numberTwo" required="true"%>
<%@attribute name="operator" required="true"%>
<%@variable name-given="result" scope="AT_END" %>
<%
double a=Double.parseDouble(numberOne);
double b=Double.parseDouble(numberTwo);
double r=0;
if(operator.equals("+"))
{r=a+b;}
if(operator.equals("-"))
{r=a-b;}
else if(operator.equals("*"))
{r=a*b;}
else if(operator.equals("/"))
{r=a/b;}
jspContext.setAttribute("result",String.valueOf(r));
%>