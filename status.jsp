<%@ page language="java" import="java.util.*,com.tgb.entity.*" pageEncoding="utf-8"%>
<%
Student student=(Student)session.getAttribute("student");
String status=request.getParameter("txt");
 %>
<html>
  <head>
 
    
    <title>My JSP 'hasBM.jsp' starting page</title>
  
  </head>
  
  <body>
  <%if(status.equals("2")){ %>
  <h1><center>感谢您申请大连海事大学推免研究生，您已通过学校审核，接下来是学院审核，请等待后续通知</center></h1>
    <hr>
    <%} %>
    <%if(status.equals("3")){ %>
  <h1><center>感谢您申请大连海事大学推免研究生，您已通过学院审核，处于预录取状态</center></h1>
    <hr>
    <%} %>
    
    <%if(status.equals("4")){ %>
  <h1><center>感谢您申请大连海事大学推免研究生，您未通过学校审核，谢谢您的参与</center></h1>
    <hr>
    <%} %>
    
    <%if(status.equals("5")){ %>
  <h1><center>感谢您申请大连海事大学推免研究生，您未通过学院审核，谢谢您的参与</center></h1>
    <hr>
    <%} %>
    <center>
<table border="1">
  <tr>
    <th>姓名</th>
    <th><%=student.getName() %></th>
  </tr>
  <tr>
    <th>身份证号</th>
    <th><%=student.getIndetity() %></th>
  </tr>
    <tr>
    <th>电话号码</th>
    <th><%=student.getTel() %></th>
  </tr>
  <tr>
    <th>本科院校</th>
    <th><%=student.getUniversity() %></th>
  </tr>
  <tr>
    <th>本科专业</th>
    <th><%=student.getMajor() %></th>
  </tr>
  <tr>
    <th>英语四级成绩</th>
    <th><%=student.getCet4() %></th>
  </tr>
  <tr>
    <th>英语六级成绩</th>
    <th><%=student.getCet6() %></th>
  </tr>
  <tr>
    <th>综合绩点</th>
    <th><%=student.getGrade() %></th>
  </tr>
  <tr>
    <th>专业成绩排名</th>
    <th><%=student.getRank() %></th>
  </tr>
  <tr>
    <th>奖学金获得</th>
    <th><%=student.getInternship() %></th>
  </tr>
  <tr>
    <th>比赛奖项</th>
    <th><%=student.getAward() %></th>
  </tr>
  <tr>
    <th>科研成果</th>
    <th><%=student.getResearch() %></th>
  </tr>
  <tr>
    <th>欲推免学院</th>
    <th><%=student.getHopecollege() %></th>
  </tr>
  <tr>
    <th>欲推免专业</th>
    <th><%=student.getHopemajor() %></th>
  </tr>
  <tr>
    <th>备注信息</th>
    <th><%=student.getOtherinfo() %></th>
  </tr>
 
</table>
</center>
  </body>
</html>
