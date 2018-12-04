<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/14
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.cn.vo.*" %>
<%@ page import="java.sql.*" %>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'ShowById.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>
<%
    int d_id = Integer.parseInt(request.getParameter("d_id"));
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("创建驱动成功！");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","1234");
        System.out.println("数据库连接成功！");
        String sql = "select * from dept where d_id =?";
        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1,d_id);
        rs = pstmt.executeQuery();
        while(rs.next()){
            DeptVo deptVo = new DeptVo();
            deptVo.setId(rs.getString("id"));
            deptVo.setAddress(rs.getString("address"));
            deptVo.setD_id(rs.getInt("d_id"));
            deptVo.setD_name(rs.getString("d_name"));
            deptVo.setEmpnumber(rs.getInt("empnumber"));
            request.setAttribute("deptVo",deptVo);
            System.out.println(deptVo.getD_id());
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>
<body>
<jsp:include flush="true" page="item.jsp"></jsp:include>
<hr/>
<h2>d_id值为<%=d_id%>的数据详细信息</h2>
<table border="1" align="center" width="70%">
    <tr>
        <td>部门编号</td>
        <td>部门地址</td>
        <td>部门人数</td>
        <td>部门名称</td>
        <td>部门id</td>
    </tr>
    <tr>
        <td>${deptVo.id }</td>
        <td>${deptVo.address }</td>
        <td>${deptVo.empnumber }</td>
        <td>${deptVo.d_name }</td>
        <td>${deptVo.d_id }</td>
    </tr>
</table>
</body>
</html>
</body>
</html>
