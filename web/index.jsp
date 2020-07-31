<%--
  Created by IntelliJ IDEA.
  User: fengxun
  Date: 2020/7/29
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style type="text/css">
      body{
        background-color: aquamarine;
      }
      a{
        text-decoration: none;
        color: #000;
        font-size: 30px;


      }
      h3{
        width: 200px;
        height:30px;
        /*居中*/
        margin: 100px auto;
        text-align: center;
        line-height: 30px;
        background-color: aqua;
      /*  圆角边框*/
        border-radius: 10px;
      }
      h1{
        margin: 100px auto;
        text-align: center;
        color: black;
      }
    </style>
  </head>
  <body>
  <h1>首页</h1>
  <h3><a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a></h3>
  </body>
</html>
