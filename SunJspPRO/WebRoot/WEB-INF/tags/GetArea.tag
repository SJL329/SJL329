<%@tag pageEncoding="GB2312"%>
<%@attribute name="tup" required="true"%>
<%@attribute name="tdown" required="true"%>
<%@attribute name="theight" required="true"%>
<%@variable name-given="area" variable-class="java.lang.String" scope="AT_END" %>
<%@variable name-given="info" variable-class="java.lang.String" scope="AT_END" %>
<%
double tup1=Double.parseDouble(tup);
double tdown1=Double.parseDouble(tdown);
double theight1=Double.parseDouble(theight);
double x=(tup1+tdown1)*theight1/2;
jspContext.setAttribute("area",String.valueOf(x));
jspContext.setAttribute("info","Ãæ»ý");
%>

