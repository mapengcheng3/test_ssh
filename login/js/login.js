//function getResult(){
//	if(xmlHttpRequest.readyState==4){
//		if(xmlHttpRequest.status==20){
////			alert("更新成功");
//		}else{
//			alert("更新失败，请稍后重试");
//		}
//		
//	}
//}
function getisRegisterResult(){
	if(xmlHttpRequest.readyState==4){
		if(xmlHttpRequest.status==20){
			
			var result=xmlHttpRequest.responseText;
			alert(result);
		}else{
			alert("更新失败，请稍后重试");
		}
		
	}
}
function login(){

	
	var username=document.getElementById("u").value;
	var password=document.getElementById("p").value;
	alert(username+"     "+password)
	if(username==""){
		alert("请输入账号再提交");
		
	}else if(password==""){
		alert("请输入密码再提交");
		
	}else{
		
		 http_request = false;
	     if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
	         http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
	     } else if (window.ActiveXObject) {     // IE浏览器
	         try {
	             http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
	         } catch (e) {
	             try {
	                 http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
	            } catch (e) {}
	         }
	     }
	     if (!http_request) {
	         alert("不能创建XMLHttpRequest对象实例！");
	         return false;
	     }
	     var url='http://120.92.81.157:8080/test_ssh/student/login?username='+username+'&password='+password;
	     http_request.onreadystatechange=function()
	     {
	        if (http_request.readyState==4 && http_request.status==200)
	        {
	        	var text=http_request.responseText;
	        	var strs= new Array(); //定义一数组 
	        	strs=text.split(" "); //字符分割 
	        	if(strs[0]=="college"){
	        		
	        		window.location="http://120.92.81.157:8080/test_ssh/college/getAllStudent?college="+strs[1];
	        		return ;
	        	}
		        alert(text);   
	            if(text=="success0"){
	            	window.location="http://120.92.81.157:8080/test_ssh/stu_index.jsp";
	            }else if(text=="success1"){
	            	window.location="http://120.92.81.157:8080/test_ssh/hasBM.jsp";
	            }else if(text=="success2"){
	            	window.location="http://120.92.81.157:8080/test_ssh/status.jsp?txt=2";
	            }else if(text=="success3"){
	            	window.location="http://120.92.81.157:8080/test_ssh/status.jsp?txt=3";
	            }else if(text=="success4"){
	            	window.location="http://120.92.81.157:8080/test_ssh/status.jsp?txt=4";
	            }else if(text=="success5"){
	            	window.location="http://120.92.81.157:8080/test_ssh/status.jsp?txt=5";
	            }else if(text=="university"){
	            	window.location="http://120.92.81.157:8080/test_ssh/university/getAllStudent";
	            }else if(text=="college"){
	            	//window.location="http://120.92.81.157:8080/test_ssh/college/getAllStudent";
	            	alert("账号或者密码错误。请重新登陆");
	            }
	            
	        }
	     }
	     http_request.open('POST',url , true);	//创建与服务器的连接
	     http_request.send(null);
	  
	}
}


function register(){
	
	var username=document.getElementById("user").value;
	var password=document.getElementById("passwd").value;
	var password2=document.getElementById("passwd2").value;
	var tel=document.getElementById("tel").value;

	if(username.length!=10){
		alert("账号必须为十位数，字母和数字均可");
		
	}else if(password!=password2){
		alert(password+"            "+password2)
		alert("两次输入密码不相同，重新输入");
		
	}else if(password.length<6){
		alert("密码长度必须大于6，重新输入");
		
	}else if(tel.length!=11){
		alert("电话号码输入格式不正确");
		
	}else  {
		


		 http_request = false;
	     if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
	         http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
	     } else if (window.ActiveXObject) {     // IE浏览器
	         try {
	             http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
	         } catch (e) {
	             try {
	                 http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
	            } catch (e) {}
	         }
	     }
	     if (!http_request) {
	         alert("不能创建XMLHttpRequest对象实例！");
	         return false;
	     }
	     var url='http://120.92.81.157:8080/test_ssh/student/register?username='+username+'&password='+password+'&tel='+tel;
	   
	     

	     
	     http_request.onreadystatechange=function()
	     {
	    	
	        if (http_request.readyState==4 && http_request.status==200)
	        {
	        	
	           
	        }else{
	       
	        }
	     }
	     http_request.open('POST',url , true);	//创建与服务器的连接
	     http_request.send(null);
	     alert("注册成功,请登录进入");
	}
	
}


function isRegister(){
	var username=document.getElementById("user").value;
	if(username.length!=10){
		alert("账号必须为十位数，字母和数字均可");
		
	}else{
		http_request = false;
	     if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
	         http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
	     } else if (window.ActiveXObject) {     // IE浏览器
	         try {
	             http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
	         } catch (e) {
	             try {
	                 http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
	            } catch (e) {}
	         }
	     }
	     if (!http_request) {
	         alert("不能创建XMLHttpRequest对象实例！");
	         return false;
	     }
	     var url='http://120.92.81.157:8080/test_ssh/student/isRegister?username='+username;
	   
	     
	     http_request.open('POST',url , true);	//创建与服务器的连接
	     http_request.send(null);
	     
	     http_request.onreadystatechange=function()
	     {
	    	
	        if (http_request.readyState==4 && http_request.status==200)
	        {
	        	var text=http_request.responseText;
	           
	            if(text=="canRegister"){
	            	
	            }
	            if(text=="cannotRegister"){
	            	alert("该账号已经被注册，请尝试其他账号");
	            	document.getElementById("user").value="";
	            }
	        }else{
	       
	        }
	     }
	     http_request.open('POST',url , true);	//创建与服务器的连接
	     http_request.send(null);
	}
}


function passUniversity(id){
	
	
//	alert("hello");
////	alert(filename);
	http_request = false;
    if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
        http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
    } else if (window.ActiveXObject) {     // IE浏览器
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("不能创建XMLHttpRequest对象实例！");
        return false;
    }
    var url='/test_ssh/university/passUniversity?id='+id;
  
    
   
    
    http_request.onreadystatechange=function()
    {
   	
       if (http_request.readyState==4 && http_request.status==200)
       {
    	   var text=http_request.responseText;
    	   alert(text);
    	   if(text=="success"){
    		   window.location.reload();
    		  
    	   }
       }else{
      
       }
    }
    http_request.open('POST',url , true);	//创建与服务器的连接
    http_request.send(null);

}

function passCollege(id){
	
	
//	alert("hello");
////	alert(filename);
	http_request = false;
    if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
        http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
    } else if (window.ActiveXObject) {     // IE浏览器
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("不能创建XMLHttpRequest对象实例！");
        return false;
    }
    var url='/test_ssh/college/passCollege?id='+id;
  
    
   
    
    http_request.onreadystatechange=function()
    {
   	
       if (http_request.readyState==4 && http_request.status==200)
       {
    	   var text=http_request.responseText;
    	   alert(text);
    	   if(text=="success"){
    		   window.location.reload();
    		  
    	   }
       }else{
      
       }
    }
    http_request.open('POST',url , true);	//创建与服务器的连接
    http_request.send(null);

}
function noPassUniversity(id){
	
	
//	alert("hello");
////	alert(filename);
	http_request = false;
    if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
        http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
    } else if (window.ActiveXObject) {     // IE浏览器
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("不能创建XMLHttpRequest对象实例！");
        return false;
    }
    var url='/test_ssh/university/noPassUniversity?id='+id;
  
    
   
    
    http_request.onreadystatechange=function()
    {
   	
       if (http_request.readyState==4 && http_request.status==200)
       {
    	   var text=http_request.responseText;
    	   if(text=="success"){
    		   window.location.reload();
//    		   window.location="/test_ssh/university/getAllStudent";
    	   }
       }else{
      
       }
    }
    http_request.open('POST',url , true);	//创建与服务器的连接
    http_request.send(null);

}
function noPassCollege(id){
	
	
//	alert("hello");
////	alert(filename);
	http_request = false;
    if (window.XMLHttpRequest) {     // Mozilla……等非IE浏览器
        http_request = new XMLHttpRequest();	//创建XMLHttpRequest对象
    } else if (window.ActiveXObject) {     // IE浏览器
        try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");	//创建XMLHttpRequest对象
        } catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");	//创建XMLHttpRequest对象
           } catch (e) {}
        }
    }
    if (!http_request) {
        alert("不能创建XMLHttpRequest对象实例！");
        return false;
    }
    var url='/test_ssh/college/noPassCollege?id='+id;
  
    
   
    
    http_request.onreadystatechange=function()
    {
   	
       if (http_request.readyState==4 && http_request.status==200)
       {
    	   var text=http_request.responseText;
    	   if(text=="success"){
    		   window.location.reload();
//    		   window.location="/test_ssh/university/getAllStudent";
    	   }
       }else{
      
       }
    }
    http_request.open('POST',url , true);	//创建与服务器的连接
    http_request.send(null);

}
