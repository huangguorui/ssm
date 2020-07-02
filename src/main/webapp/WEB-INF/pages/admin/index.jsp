<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <title>文件后台管理系统</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
</head>

<body>
<%
    String flag = (String) request.getSession().getAttribute("admin");
    if(flag==null){
        response.sendRedirect(request.getContextPath()+"/user/login");
    }
//       Admins admin=(Admins)request.getSession().getAttribute("admin");
//       if (admin==null) {
//            response.sendRedirect(request.getContextPath()+"/login.jsp");
//       }
%>
<nav class="navbar navbar-default ">
    <div class="container-fuild">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">后台权限管理系统</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">后台权限管理系统</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="##">快捷导航</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="##">首页</a></li>
                <li><a href="##">控制器</a></li>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="搜索">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <li><a href="##">${admin}</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">操作 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">我的账户</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/user/loginOut">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>




<nav style="display: none" class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                后台管理系统
            </a>
            <a class="navbar-brand" href="#">控制台</a>
            <a class="navbar-brand" href="#">商品管理</a>

        </div>
    </div>
</nav>
<div class="row">
    <div class="col-md-3  col-xs-3 col-sm-3 col-lg-3 height100 left" style="padding-right: 0;">
        <div class="list-group leftUrl">
        <span href="#" class="list-group-item active">
          文件后台管理系统
        </span>

            <a href="#" src="role-permission/findAll" class=" list-group-item">角色资源列表</a>
            <a href="#" src="permission/findAll" class=" list-group-item">权限列表</a>
            <br>
            <br>
            <br>

            <a href="#" src="users-role/findAll" class=" list-group-item">用户角色对应列表</a>
            <a href="#" src="role-permission/findAll" class=" list-group-item">角色权限对应列表【不可使用】</a>
            <br>
            <br>
            <br>
<%--            <a href="#" src="account/findAll" class=" list-group-item">文件管理列表</a>--%>
            <a href="#" src="role/findAll" class=" list-group-item">角色权限操作列表</a>
            <a href="#" src="user/findAll" class=" list-group-item">用户角色操作列表</a>

<%--            <a href="#" src="user-add.jsp" class=" list-group-item">添加用户</a>--%>
            <a href="#" src="project/findAll" class=" list-group-item">项目列表</a>
            <a href="#" src="/project/edit" class=" list-group-item">添加项目</a>
        </div>

    </div>
    <div class="col-md-9 col-xs-9 col-sm-9 col-lg-9 height100 ">
        <iframe src="project/findAll" frameborder="0" scrolling="no"></iframe>

    </div>
</div>


</body>

</html>
<style>
    html,
    body,
    .row {
        width: 100%;
        height: 500%;

    }

    li {
        list-style: none;
    }

    .height100 {
        height: 100%;
    }

    .left {
        border-right: 1px solid #c1c1c1;
        box-sizing: border-box;
    }

    iframe {
        width: 100%;
        height: 100%;
    }

    .left p {
        width: 100%;
        height: 50px;
        line-height: 50px;
        text-align: center;
        margin: 0;
    }

    .left p:hover {
        cursor: pointer;
        background: #ccc;
        color: #fff;
    }
</style>
<script>
    $(".leftUrl a").each(function (i) {
        $(".leftUrl a").eq(i).click(function () {
            console.log($(this).attr('src'))
            $('iframe').attr('src', $(this).attr('src'))
            $('title').text($(this).text())
        });
    });
</script>
<jsp:include page="admin-session.jsp"></jsp:include>
