<%@ page language="java" import="java.util.*,com.tgb.entity.Student" pageEncoding="utf-8"%>
<%
//    Student student=(Student)session.getAttribute("student");
//    String status=student.getStatus();
 %>
<html>
  <head>
    <title>My JSP 'stu_index.jsp' starting page</title>
    <style>
	body {
		margin: 0;
		padding: 0;
		background-color: #F7F7F7;
		font-family: '汉仪大隶书繁';
	}

	form {
		max-width: 640px;
		width: 100%;
		margin: 24px auto;
		font-size: 28px;
	}

	label {
		display: block;
		margin: 10px 10px 15px;
		font-size: 24px;
	}

	input {
		display: block;
		width: 100%;
		height: 40px;
		font-size: 22px;
		margin-top: 10px;
		padding: 6px 10px;
		color: #333;
		border: 1px solid #CCC;
		box-sizing: border-box;
	}

	meter, progress {
		display: block;
		width: 100%;
		margin-top: 10px;
	}

	.btn {
		margin-top: 30px;
	}

	.btn input {
		color: #FFF;
		background-color: green;
		border: 0 none;
		outline: none;
		cursor: pointer;
	}

</style>
<script>
function xueyuan(str){
 
   var major=document.getElementById("hopemajor");

   if(str=="航海学院"){
       major.innerHTML="<option value='航海技术'>航海技术</option><option value='气象类'>气象类</option>	";
   }
   if(str=="轮机学院"){
       major.innerHTML="<option value='轮机工程'>轮机工程</option><option value='电气工程'>电气工程</option><option value='船舶电子电气'>船舶电子电气</option>";
   }
   if(str=="信息科学技术学院"){
       major.innerHTML="<option value='计算机科学与技术'>计算机科学与技术</option><option value='软件工程'>软件工程</option><option value='网络工程'>网络工程</option><option value='通信工程'>通信工程</option><option value='电子信息工程'>电子信息工程</option>";
   }
   if(str=="交通运输管理学院"){
        major.innerHTML="<option value='交通运输工程'>交通运输工程</option><option value='财务管理'>财务管理</option><option value='物流管理'>物流管理</option><option value='金融工程'>金融工程</option>";
   }
}
</script>
  </head>
  
  <body>
    <%
//     if(status.equals("0")){
     %>
     <form method="post" action="/test_ssh/student/baoming" enctype="multipart/form-data">
	 <fieldset>
		<legend>学生档案</legend>
		<label for="">
			姓名: <input type="text" required autofocus placeholder="请输入姓名" id="name" name="name">
		</label>
		<label for="">
			身份证号: <input type="text"  id="identity" name="identity" placeholder="请输入您的身份证号">
		</label>
		<label for="">

			欲读学院： <br>
			<select  style="width:100%;height:40px;font-size: 22px;" name="hopecollege" id="hopecollege" onchange="xueyuan(this.value)" >
				<option value="航海学院">航海学院</option>
				<option value="轮机学院">轮机学院</option>
				<option value="信息科学技术学院">信息科学技术学院</option>
				<option value="交通运输管理学院">交通运输管理学院</option>
				
			</select>
		</label>
		<label for="">
			欲读专业:<br> <select  style="width:100%;height:40px;font-size: 22px;" name="hopemajor" id="hopemajor"  >
			</select>
			
		</label>
		<label for="">
			本科学校: <input type="text"  name="university" id="university" step="10" >
		</label>
		<label for="">
			本科专业: <input  type="text"  name="major "id="major">
		</label>
		<label for="">
			本科绩点: <br>
			<input  type="number"  name="grade" id="grade">
		</label>
		<label for="">
			成绩排名: <br>
			<select  style="width:100%;height:40px;font-size: 22px;" name="rank" id="rank">
				<option value="10">10%</option>
				<option value="20">20%</option>
				<option value="30">30%</option>
				<option value="40">40%</option>
				
			</select>
		</label>
		<label for="">
			英语四级: <input  type="number"  name="cet4" id="cet4">
		</label>
		<label for="">
			英语六级: <input  type="number"  name="cet6" id="cet6">
		</label>
		<label for="">
			奖学金: <br>
			<textarea style="width:100%;font-size: 22px;" name="internship" id="internship" rows="4">无</textarea>
		</label>
		<label for="">
			所获奖项: <textarea style="width:100%;font-size: 22px;" name="award" id="award" rows="4">无</textarea>
		</label>
		<label for="">
			科研项目: <textarea style="width:100%;font-size: 22px;" name="research" id="research" rows="4">无</textarea>
		</label>
		
		<label for="">
			备注: <textarea style="width:100%;font-size: 22px;" name="otherinfo" id="otherinfo" rows="4">无</textarea>
		</label>

			附件: <input type="file" name="uploadFile" />
	
		<label for="" class="btn">
			<input type="submit" value="保存">
		</label>
	 </fieldset>
     </form>
     <script>
	   var score = document.getElementById('score');
	   var level = document.getElementById('level');

	   score.oninput = function () {
		  level.value = this.value;
	   }
     </script>
     
     <%
//      }
      %>
  </body>
</html>
