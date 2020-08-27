<%--
  Created by IntelliJ IDEA.
  User: Tanyiqu
  Date: 2020/8/7
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="teacher" scope="request" class="com.ws.domain.Teacher"/>

<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>课程助手 - 教师</title>
    <script src="../js/util.js"></script>
    <link rel="short icon" href="../imgs/logo.png">
    <script src="../js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="../js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/teacher-index.css">
    <script src="../js/interfaces.js"></script>
    <script>
        let allCourses = [];
    </script>
</head>

<body>

<header>

    <img src="../imgs/logo.png" alt="">
    <h2>网络课程助手（logo暂定）</h2>

    <div class="account">
        <span id="tno">${teacher.data.tno}</span>
        <img id="headAvatar" src="${teacher.data.avatar}" alt="">

    </div>
</header>

<div class="content-top">
    <div class="middle">
        <div class="avatar">
            <img src="${teacher.data.avatar}" alt="">
        </div>

        <div class="hello">
            <h3>${teacher.data.name}，上午好！</h3>
            <h4>就在线学习而言，重要的不是你花了多少钱，而是你投入了多少时间和精力。</h4>
        </div>
    </div>

    <div class="manage"></div>
</div>

<div class="toolbar">
    <div class="item active">
        <h3>课程</h3>
    </div>

    <div class="item">
        <h3>已完结</h3>
    </div>

    <div class="search-bar">
        <input class="search-courses" type="text" placeholder="搜索我的课程">
        <i></i>
    </div>
</div>

<div class="order">
    <span class="active">按创建时间排序</span>
    <span>按名字排序</span>
</div>

<div class="loading" style="text-align: center">
    <img src="../imgs/loading.gif" alt="" style="margin-top:30px ">
</div>

<div class="failed" style="text-align: center;display: none">
    <img src="../imgs/failed.gif" alt="" style="margin-top:30px ">
</div>

<div class="courses" style="display: none">

    <div class="course">
        <img src="" alt="">
        <div class="title">
            <h4 class="name">Java高级应用</h4>
            <h4 class="numbers">67人</h4>
        </div>
    </div>

</div>

<script src="../js/t-index.js"></script>
</body>

</html>