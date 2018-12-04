<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/14
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<%
    request.setCharacterEncoding("gb2312");
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'add.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
<form action="" method="post">
    <h1><label>请输入部门信息：</label></h1>
    <label>部门号：</label><br/>
    <input type="text" name="id"/><br/>
    <label>部门名：</label><br/>
    <input type="text" name="d_name"/><br/>
    <label>部门人数：</label><br/>
    <input type="text" name="empnumber"/><br/>
    <label>地址：</label><br/>
    <input type="text" name="address"/><br/><br/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
<%
    Connection conn = null;
    PreparedStatement ps = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("创建数据库驱动成功！");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","1234");
        System.out.println("数据库连接成功！");
        String sql = "insert into dept(id,d_name,address,empnumber) values(?,?,?,?)";
        ps = conn.prepareStatement(sql);
        String id = request.getParameter("id");
        String d_name = request.getParameter("d_name");
        String address = request.getParameter("address");
        int empnumber = Integer.parseInt(request.getParameter("empnumber"));
        ps.setString(1,id);
        ps.setString(2,d_name);
        ps.setString(3,address);
        ps.setInt(4,empnumber);
        int result = ps.executeUpdate();
        if(result == 1)
            out.print("插入数据成功！");
        else
            out.print("插入数据失败，请重新插入！");
    }catch(Exception e){
        out.println("无法连接数据库，请检查数据库连接是否正确！");
    }
%>

</body>
</html>
