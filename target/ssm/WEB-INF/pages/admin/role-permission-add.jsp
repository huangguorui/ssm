<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/static/css/bootstrap.css">
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
${role}
${permissionList}
<form action="${pageContext.request.contextPath}/role/addPermissionToRole">

<table class="table  table-hover">
    <thead>
    <tr>
        <th>#</th>
        <th>选择</th>
        <th>权限名称</th>
        <th>权限路径</th>
    </tr>
    </thead>

    <tbody>
    <input type="hidden" name="roleId" value="${role.id}">
    <c:forEach items="${permissionList}" var="user">
        <tr>
            <td><input type="checkbox" name="ids" value="${user.id}"></td>
            <td>${user.id }</td>
            <td>${user.permissionName }</td>
            <td>${user.url }</td>


        </tr>
    </c:forEach>
        <button type="submit" class="btn btn-default">Submit</button>

    </tbody>
</table>
</form>




    <div class="form-group">
        <label for="exampleInputEmail1">添加用户</label>
        <input type="text"  name="nickname" class="form-control" id="exampleInputEmail1" placeholder="nickname">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">添加密码</label>
        <input type="text"  name="password" class="form-control" id="exampleInputEmail1" placeholder="nickname">
    </div>







<!-- Small modal -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <form style="padding:2%" action="/user/update">
                <h5>信息修改</h5>
                <div class="form-group">
                    <label for="nickname">用户名</label>
                    <input type="text" name="nickname" value="123" class="form-control" id="nickname" placeholder="用户名">
                </div>
                <div class="form-group">
                    <label for="password">用户密码</label>
                    <input type="text"  name="password" value="123"  class="form-control" id="password" placeholder="用户密码">
                </div>
                <div class="form-group hidden">
                    <label for="id">用户id</label>
                    <input type="text"  name="id"  value="22"  class="form-control" id="id" value="1" placeholder="用户id" name="id">
                </div>


                <button type="submit" class="btn btn-default">确定修改</button>
            </form>
        </div>
    </div>
</div>
<script>

    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();

        //向服务器发送请求，改变没页显示条数
        location.href = "${pageContext.request.contextPath}/user/findAll?page=1&size="+ pageSize;

    }


    console.log($("tbody tr:nth-child("+1+") td:nth-child(1)").text())

    $("tbody tr").each(function (i) {
        $("tbody tr").eq(i).click(function () {

            // console.log($(this).attr('src'))
            $("#id").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(1)").text())
            $("#nickname").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(2)").text())
            $("#password").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(3)").text())
            // $('iframe').attr('src', $(this).attr('src'))
            // $('title').text($(this).text())
        });
    });




</script>
<jsp:include page="admin-session.jsp"></jsp:include>
