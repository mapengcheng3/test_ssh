<%@ page language="java" import="java.util.*,com.tgb.entity.*"
	pageEncoding="utf-8"%>

<%
College college=(College)session.getAttribute("college");
List<Student> list=(List<Student>)request.getAttribute("list");

String[] majors=college.getMajors().split(",");
 %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="/test_ssh/css/button.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/test_ssh/login/js/login.js"></script>
<title>My JSP 'college.jsp' starting page</title>

</head>

<body>
	 <a href="http://120.92.81.157:8080/test_ssh/college/getAllStudent?college=<%=college.getUsername() %>" class="button button-3d button-primary button-rounded">查看所有学生报名信息</a>
	<%for(int i=0;i<majors.length;i++){%>
	<a href="http://120.92.81.157:8080/test_ssh/college/getAllStudentByMajor?major=<%=majors[i] %>" class="button button-3d button-primary button-rounded"><%=majors[i]%></a>
	<%} %>
	<br>
	<hr>
	
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
    <%if(list.get(i).getStatus().equals("5")){%>
        <button>已拒绝</button>
    <%} 
    if(list.get(i).getStatus().equals("3")){%>
        <button>已接受</button>
    <%}
    if(list.get(i).getStatus().equals("2")){ %>
    
    <button onclick="passCollege(<%=list.get(i).getId()%>)">通过</button>
    <button onclick="noPassCollege(<%=list.get(i).getId()%>)">驳回</button></th>
     <%} %>
  </tr>
  <%} %>
</table>


</body>
</html>
