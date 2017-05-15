<%@ page language="java" import="java.util.*,com.tgb.entity.*" pageEncoding="utf-8"%>
<%
List<Student> list=(List<Student>)request.getAttribute("list");
 %>
<html>
  <head>
    <title>学生列表</title>
    <link href="/test_ssh/css/button.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/test_ssh/login/js/login.js"></script>
  </head>
  
  <body>
     <a href="http://120.92.81.157:8080/test_ssh/university/getAllStudent" class="button button-3d button-primary button-rounded">查看所有学生报名信息</a>
     
     <a href="http://120.92.81.157:8080/test_ssh/university/getAllStudentByCollege?college=xinxi" class="button button-3d button-primary button-rounded">查看信息学院学生报名信息</a>
    <a href="http://120.92.81.157:8080/test_ssh/university/getAllStudentByCollege?college=lunji" class="button button-3d button-primary button-rounded">查看轮机学院学生报名信息</a>
     <a href="http://120.92.81.157:8080/test_ssh/university/getAllStudentByCollege?college=hanghai" class="button button-3d button-primary button-rounded">查看航海学院学生报名信息</a>
     <a href="http://120.92.81.157:8080/test_ssh/university/getAllStudentByCollege?college=jiaoguan" class="button button-3d button-primary button-rounded">查看管理学院学生报名信息</a>
     <hr>
     <div>
    <table border="1">
  <tr>
    <th>姓名</th>
    <th>身份证号</th>
    <th>欲报考学院</th>
    <th>欲报考专业</th>
    <th>本科学校</th>
    <th>本科专业</th>
    <th>本科绩点</th>
    <th>本科成绩排名</th>
    <th>cet4</th>
    <th>cet6</th>
    <th>奖学金</th>
    <th>各项赛事</th>
    <th>科研成果</th>
    <th>附件</th>
    <th>审核通过</th>
  </tr>
  <%for(int i=0;i<list.size();i++){ %>
  <tr>
    <th><%=list.get(i).getName() %></th>
    <th><%=list.get(i).getIndetity() %></th>
    <th><%=list.get(i).getHopecollege() %></th>
    <th><%=list.get(i).getHopemajor() %></th>
    <th><%=list.get(i).getUniversity() %></th>
    <th><%=list.get(i).getMajor() %></th>
    <th><%=list.get(i).getGrade() %></th>
    <th><%=list.get(i).getRank() %></th>
    <th><%=list.get(i).getCet4() %></th>
    <th><%=list.get(i).getCet6() %></th>
    <th><%=list.get(i).getInternship() %></th>
    <th><%=list.get(i).getAward() %></th>
    <th><%=list.get(i).getResearch() %></th>
    
  <!--  <th><button onclick="download('<%=list.get(i).getEnclosure()%>')">点击下载</button></th> --> 
    
      <th><a href="/test_ssh/university/download?filename=<%=list.get(i).getEnclosure()%>">点击下载</a></th>
    <th>
    <%if(list.get(i).getStatus().equals("3")||list.get(i).getStatus().equals("2")){%>
        <button>已审核</button>
    <%}else if(list.get(i).getStatus().equals("5")||list.get(i).getStatus().equals("4")){%>
        <button>已驳回</button>
    <%}else{ %>
    
    <button id="<%=list.get(i).getId()%>" onclick="passUniversity(<%=list.get(i).getId()%>)">通过</button>
    <button id="<%=list.get(i).getId()%>" onclick="noPassUniversity(<%=list.get(i).getId()%>)">驳回</button></th>
     <%} %>
  </tr>
  <%} %>
</table>
     </div>
  </body>
</html>
