<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/1
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>



<body>
<%
    //获取表单提写数据
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("pwd");
    String email = request.getParameter("email");
    /* 获取checkbox的值*/
    String[] titles = request.getParameterValues("title");
    String alltitle="";
    if(titles!=null && titles.length!=0){
        for(int i=0;i<titles.length;i++){
            alltitle += titles[i]+"&nbsp";
        }
    }
    //判断登陆是否成功
    if(!username.equals("admin")){
        request.setAttribute("error", "登陆失败！");
        request.getRequestDispatcher("login.jsp").forward(request, response);

    }else{
        //登陆成功，创建session会话，保存登陆状态
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        //session设置过期时间
        session.setMaxInactiveInterval(5);
        response.sendRedirect("newsDetail.jsp");

    }

%>
</body>
</html>