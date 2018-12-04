<%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/1
  Time: 8:31
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

<form action="check.jsp" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input  type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input  type="text" name="pwd"/></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="text" name="email" /></td>
        </tr>

        <tr>
            <td align="right"><input type="checkbox" name="title" value="10001" /></td>
            <td>第一个选项</td>
        </tr>
        <tr>
            <td align="right"><input type="checkbox" name="title" value="10002" /></td>
            <td>第二个选项</td>
        </tr>
        <tr>
            <td align="right"><input type="checkbox" name="title" value="10004" /></td>
            <td>第三个选项</td>
        </tr>

        <tr>
            <td align="right"><input type="submit" value="提交" /></td>
        </tr>
    </table>
</form>
<%
    Object obj = request.getAttribute("error");
    if(obj!=null){
        out.println("info=>>>>>>"+obj.toString());
    }
%>


</body>
</html>
