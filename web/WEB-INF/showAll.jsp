<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/14
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.cn.vo.*" %>
<%@ page import="java.sql.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'showAll.jsp' starting page</title>

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
    List<DeptVo> list = new ArrayList<DeptVo>();
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","1234");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM dept");
        while(rs.next()){
            DeptVo deptVo = new DeptVo();
            deptVo.setId(rs.getString("id"));
            deptVo.setAddress(rs.getString("address"));
            deptVo.setD_id(rs.getInt("d_id"));
            deptVo.setD_name(rs.getString("d_name"));
            deptVo.setEmpnumber(rs.getInt("empnumber"));
            list.add(deptVo);
        }
        request.setAttribute("list",list); //把list集合放入request对象中
    }catch(Exception e){
        e.printStackTrace();
    }
%>
<body>
<table border="1" align="center" width="70%">
    <tr>
        <td>部门编号</td>
        <td>部门地址</td>
        <td>部门人数</td>
        <td>部门名称</td>
        <td>部门id</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${list.id }</td>
            <td>${list.address }</td>
            <td>${list.empnumber }</td>
            <td>${list.d_name }</td>
            <td>${list.d_id }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
</body>
</html>
