<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <title>用户登录</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
</head>

<body>
<div class="box">
    <p>用户登录</p>
    <form action="/isLogin" method="post">
        ${message}
        <div class="form-group">
            <label for="exampleInputEmail1">用户名</label>
            <input type="nickname" class="form-control" id="exampleInputEmail1" name="nickname" placeholder="用户名">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">密码</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="密码">
        </div>
        <!-- <div class="checkbox">
          <label>
            <input type="checkbox"> Check me out
          </label>
        </div> -->
        <button type="" class="btn btn-default">立即登录</button>
        <a href="./reg">用户注册</a>

    </form>

</div>


</body>

</html>
<style>
    .box {
        min-width: 320px;
        height: auto;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        border-radius: 10px;
        border: 1px solid #ccc;
        padding: 20px;


    }

    .box p {
        text-align: center;

    }
</style>