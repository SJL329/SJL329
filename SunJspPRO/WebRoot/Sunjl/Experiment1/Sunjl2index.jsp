<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>

<body bgcolor="#B8E9FC">
<div id=main>
<div id=banner><img src="../../images/banner.jpg" width="1900" height="150" /></div>
<div id=导航>
<%@include file="../DaoHang.txt" %>
</div>
<div id=您的位置>
 <div class="文字1">您的位置：<a href="" class="文字2">Java精品课程</a>》<span class="文字1">网站首页</span></div></div>
<div id=左侧>
 <div id=最新公告>
  <div class="文字3">最新公告<span class="文字2">&nbsp;&nbsp;期末考试自测复习通知</span><font size=  "3" color="#B9B900">&nbsp;&nbsp;2011/4/2</font></div><div class="更多">更多</div>
</div>
 <div id=课程简介><div id=横条><div class="文字3">课程简介</div></div>
 <p><font size=4>&nbsp;&nbsp;&nbsp;&nbsp;《Java语言程序设计》是为软件工程、软件技术、信息管理等专业开设的一门专业技能课，同时作为计算机应用技术和软件技术专业方向课。其主要任务：帮助学生树立正确的学习态度，充分认识学习Java程序设计的重要性；系统地介绍Java语言中面向对象程序设计的思想、类与对象的创建与使用、图形用户界面编程的方法、事件处理机制、异常处理机制、输入输出流、Applet就程序的编写方法、多线程的基本概念、网絡编程方法等，为学生后继课程的学习打下坚实的基础。</font></p>
 </div>
 <div id=教与学><div id=横条><div class="文字3">教与学</div></div>
 <div class="图片"><img src="../../images/1.jpg" width=170 height="100"/><p>第一张图片</p></div>
 <div class="图片"><img src="../../images/2.jpg" width=170 height="100"/><p>第二张图片</p></div>
 <div class="图片"><img src="../../images/3.jpg" width=170 height="100"/><p>第三张图片</p></div>
 <div class="图片"><img src="../../images/2.jpg" width=170 height="100"/><p>第四张图片</p></div>
 <div class="图片"><img src="../../images/1.jpg" width=170 height="100"/><p>第五张图片</p></div>
 </div>
 <div id=学习宝典><div id=横条><div class="文字3">学习宝典</div><div class="更多">更多</div></div>
 <div class="排序"><a href="" class="文字4">Swing组件JList的列表数据修改了，如何通知...</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">在Java applet中如何实现一个模式对话框</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">编写Java application时，如何设置proxy的</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">如何设置Java WebServer的CLASSPATH，以包...</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">当用JDBC向数据库中插入数据或从数据库中提...</a></div><div  class="时间">2011/4/2</div>
 </div>
 <div id=业界资讯><div id=横条><div class="文字3">业界资讯</div><div class="更多">更多</div></div>
 <div class="排序"><a href="" class="文字4">java认证备考Java入门：面向对象的思雜方法…</a></div>          
 <div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">Java之父高斯林宣布加盟谷歌</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">java异常类总结</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">PING和TELNET用法介绍</a></div><div  class="时间">2011/4/2</div>
 <div class="排序"><a href="" class="文字4">每5秒生成一个隨机数代码</a></div><div  class="时间">2011/4/2</div>
 </div>
</div>
<div id=右侧>
 <div id=常见问题><div id=横条><div class="文字3">常见问题</div><div class="更多">更多</div></div>
 <div class="排序"><a href="" class="文字4">应如何控制结果集ResultSet… </a></div><div  class="时间">2011/4/6</div>
 <div class="排序"><a href="" class="文字4">JAVA和C++的区别</a></div><div  class="时间">2011/4/6</div>
 <div class="排序"><a href="" class="文字4">学习Java语言的点要</a></div><div  class="时间">2011/4/6</div>
 <div class="排序"><a href="" class="文字4">Java新手编程的三十条规则</a></div><div  class="时间">2011/4/6</div>
 <div class="排序"><a href="" class="文字4">JAVA中异常使用范围的一些思考</a></div><div  class="时间">2011/4/6</div>
 </div>
 <div id=网友评论><div id=横条><div class="文字3">网友评论</div><div class="更多">更多</div></div>
 <div class="排序"><a href="" class="文字4">asdfsa</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">fwergr</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">www</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">www</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">www</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">www</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">dvs</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">asedf</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">asfdas</a></div><div  class="时间">2011/6/6</div>
 <div class="排序"><a href="" class="文字4">asfas</a></div><div  class="时间">2011/6/6</div>
 </div>  
 <div id=在线调查><div id=横条><div class="文字3">在线调查</div><div class="更多">更多</div></div>
 <font size=3><p>您认为本站的内容对您的java设计水平提高有多大帮助？</p></font>
 <form action="" method="get">
 <div><label><input name="Fruit" type="radio" value="" />帮助很大</label></div>
 <div><label><input name="Fruit" type="radio" value="" />帮助比较大</label></div>
 <div><label><input name="Fruit" type="radio" value="" />帮助很少</label></div>
 <div><label><input name="Fruit" type="radio" value="" />没有帮助</label></div>
 <center><input type=submit value=投票>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value=查看></center>
 </form>
 </div>
 </div>
 </div>
 <div id=下></div>
</body>
</html>
