<%@ page import="com.project01.abc.Person" %><%--
  Created by IntelliJ IDEA.
  User: 丁小豆
  Date: 2018/11/26
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Person person = new Person(1,"jfh");
    pageContext.setAttribute("Person",person);

   ${person}
   ${person.getName()





















   }


    %>
</body>
</html>
