<%@tag pageEncoding="GB2312" import="java.util.*"%>
<%@attribute name="year" required="true"%>
<%@attribute name="month" required="true"%>
<%
int y=1999,m=1;
String[]day=new String[42];
try{
y=Integer.parseInt(year);
m=Integer.parseInt(month);
Calendar rili=Calendar.getInstance();
rili.set(y,m-1,1);
int 星期几=rili.get(Calendar.DAY_OF_WEEK)-1;
int dayAmount=0;
if(m==1 ||m==3 ||m==5 ||m==7 ||m==8 ||m==10 ||m==12)
dayAmount=31;
if(m==4 ||m==6 ||m==9 ||m==11)
dayAmount=30;
if(m==2)
if(((y%4==0)&&(y%100!=0))||(y%400==0))
dayAmount=29;
else
dayAmount=28;
for(int i=0;i<星期几;i++)
day[i]="--";
for(int i=星期几,n=1;i<星期几+dayAmount;i++){
day[i]=String.valueOf(n);
n++;
}
for(int i=星期几+dayAmount;i<42;i++)
day[i]="--";
}
catch(Exception exp){
out.print("年份或月份不合理");
}
%>
<%=year %>年<%=month %>月的日历：
<table border=1>
<tr><th>星期日</th><th>里期一</th><th>星期二</th><th>星期三</th><th>星期四</th><th>星期五</th><th>星期六</th>
</tr>
<% for(int n=0;n<day.length;n=n+7){
 %>  <tr>
 <%   for(int i=n;i<7+n;i++){
  %> <td><%=day[i]%></td> <% } %>
  </tr>
  <% } %>
</table>






