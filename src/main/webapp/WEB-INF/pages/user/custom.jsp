<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>网页定制-源码下载网</title>

</head>

<body>
<div class="main">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container  mt50px input_style" id="app">

            <h3>您的需求</h3>
            <p>一次美好的合作从一封邮件开始，欢迎填写表格或发送邮件至：123@qq.com</p>
            <form class="form-horizontal">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <input type="text" class="form-control" placeholder="请输入联系人">
                        <input type="text" class="form-control" placeholder="请输入电话">
                        <input type="text" class="form-control" placeholder="请输入邮箱">
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <input type="text" class="form-control" placeholder="请输入公司名称">
                        <input type="text" class="form-control" placeholder="项目类型">
                        <input type="text" class="form-control" placeholder="开始时间">
                    </div>
                    <div class="col-md-12 col-lg-12">
                        <textarea class="form-control" rows="7" placeholder="需求概述：请告知我们产品的使用品台、功能需求、数量等"></textarea>
                    </div>
                </div>
                <input class="btn btn-success  btn-primary btn-lg" style="display:inherit;margin: 15px auto;"
                       type="submit" value="完成并提交">
            </form>

    </div>

</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
