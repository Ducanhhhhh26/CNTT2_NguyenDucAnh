<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/04/2026
  Time: 7:23 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .details-container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .info-row { margin-bottom: 10px; }
        .label { font-weight: bold; }
    </style>
</head>
<body>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<jsp:include page="fragments/header.jsp">
    <jsp:param name="title" value="Chi tiết Sách" />
</jsp:include>

<div class="details-container">
    <c:choose>
        <c:when test="${not empty book}">
            <div class="info-row">
                <span class="label">ID:</span>
                <span>${book.id}</span>
            </div>
            <div class="info-row">
                <span class="label">Tên Sách:</span>
                <span>${book.name}</span>
            </div>
            <div class="info-row">
                <span class="label">Tác Giả:</span>
                <span>${book.author}</span>
            </div>
            <div class="info-row">
                <span class="label">Giá Bán:</span>
                <span><fmt:formatNumber value="${book.price}" groupingUsed="true" maxFractionDigits="0"/> VND</span>
            </div>
        </c:when>
        <c:otherwise>
            <p style="color: red;">Không tìm thấy sách!</p>
        </c:otherwise>
    </c:choose>

    <div style="margin-top: 20px;">
        <a  href="${pageContext.request.contextPath}/books">&#8592; Quay lại danh sách</a>
    </div>
</div>

<jsp:include page="fragments/footer.jsp" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
