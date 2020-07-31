<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  Created by IntelliJ IDEA.
  User: fengxun
  Date: 2020/7/30
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表--------显示所有书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <%--添加书籍--%>
            <div class="col-md-4">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toaddBook">添加书籍</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <%--搜索框--%>
            <div class="col-md-8" >
                    <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBookName" method="post" style="float: right">
                        <span style="color: red ;font-weight: bold">${error}</span>
                        <input type="text" class="form-control" name="name" placeholder="请输入查询的书籍名称">
                         <input class="btn btn-primary" type="submit">
                    </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <%--遍历书籍库--%>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toupdateBook?id=${book.bookID}" class="btn btn-primary">修改</a>
                            <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}" class="btn btn-primary">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>
</body>
</html>
