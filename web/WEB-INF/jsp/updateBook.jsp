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
                    <small>书籍列表--------修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--隐藏域--%>
        <input type="hidden" name="bookID" value="${Sbook.bookID}">
        <div class="form-group">
            <label >书籍名称</label>
            <input type="text" class="form-control"  name="bookName" value="${Sbook.bookName}" placeholder="bookName" required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text" class="form-control"  name="bookCounts" value="${Sbook.bookCounts}" placeholder="bookCounts" required>
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text" class="form-control"  name="detail" value="${Sbook.detail}" placeholder="detail" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary">
        </div>

    </form>
</div>


</body>
</html>
