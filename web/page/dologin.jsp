<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/1
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登陆页</title>
</head>
<body>
<!--页面的头部-->
<div id="header">
    <!--页面顶部-->
    <div class="main-top">
        <div class="logo">
            <a href=""><span>新闻大视野</span></a>
        </div>
            <div class="login-box">
            <%
                Object obj=session.getAttribute("username");
                Object pwd=session.getAttribute("password");
                String username="";
                String password="";
                if(obj!=null &&pwd!=null){
                    username = obj.toString();
                    password = pwd.toString();%>
            <label><%="欢迎你，"+username %></label>&nbsp;&nbsp;<a href="logout.jsp">注销</a>
            <% }else{%>
            <label>用户名</label><input type="text" name="username"/>
            <label>密码</label><input type="text" name="password"/>
            <button>登录</button>
            <%}%>
            </div>
    </div>
</div>

</body>
</html>
