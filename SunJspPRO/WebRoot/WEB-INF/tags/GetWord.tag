<%@tag pageEncoding="GB2312" import="java.util.*"%>
<%@attribute name="str" required="true"%>
<%@variable name-given="wordlist" variable-class="java.util.ArrayList" scope="AT_END" %>
<%
ArrayList<String>list=new ArrayList<String>();
String regex="[\\s\\d\\p{Punct}]+";
String words[]=str.split(regex);
for(int i=0;i<words.length;i++){
  list.add(words[i]);
  }
jspContext.setAttribute("wordlist",list);
%>

