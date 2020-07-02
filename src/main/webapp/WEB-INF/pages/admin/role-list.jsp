<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/static/css/bootstrap.css">
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>

<table class="table  table-hover">
  <thead>
    <tr>
      <th>#</th>
      <th>角色名称</th>
      <th>描述</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${pageInfo.list}" var="role">
    <tr>
      <td>${role.id }</td>
      <td>${role.roleName }</td>
      <td>${role.roleDesc }</td>

      <td>
        <button type="button" class="btn btn-primary" data-toggle="modal"
                data-target=".bs-example-modal-sm">修改信息</button>
        <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/role/delete?id=${role.id}'">删除</button>
        <button type="button" class="btn btn-primary"
                onclick="location.href='${pageContext.request.contextPath}/role/findRoleByIdAllPermission?id=${role.id}'"
        >添加权限</button>
      </td>
    </tr>
  </c:forEach>

  </tbody>
</table>

<nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="javascript:;"> <select class="form-control" id="changePageSize" onchange="changePageSize()">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select> </a>
    </li>
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>

    <li>
      <a href="${pageContext.request.contextPath}/role/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
    </li>
    <li><a href="${pageContext.request.contextPath}/role/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
    <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
      <li><a href="${pageContext.request.contextPath}/role/findAll?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
    </c:forEach>
    <li><a href="${pageContext.request.contextPath}/role/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
    <li>
      <a href="${pageContext.request.contextPath}/role/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
    </li>

    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>




<form action="${pageContext.request.contextPath}/role/save">
  <div class="form-group">
    <label for="exampleInputEmail1">添加名称</label>
    <input type="text"  name="roleName" class="form-control" id="exampleInputEmail1">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">添加描述</label>
    <input type="text"  name="roleDesc" class="form-control" id="exampleInputEmail1">
  </div>

  <button type="submit" class="btn btn-default">Submit</button>
</form>





<!-- Small modal -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <form style="padding:2%" action="/role/update">
        <h5>信息修改</h5>
        <div class="form-group">
          <label >用户名称</label>
          <input type="text" name="roleName" value="123" class="form-control" id="roleName" >
        </div>
        <div class="form-group">
          <label >描述</label>
          <input type="text"  name="roleDesc" value="123"  class="form-control" id="roleDesc" >
        </div>
        <div class="form-group hidden">
          <label for="id">用户id</label>
          <input type="text" class="form-control" id="id" value="" placeholder="用户id" name="id">
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
    location.href = "${pageContext.request.contextPath}/role/findAll?page=1&size="+ pageSize;

  }

  console.log($("tr:nth-child("+1+") td:nth-child(1)").text())
  $("tbody tr").each(function (i) {
    $("tbody tr").eq(i).click(function () {

      // console.log($(this).attr('src'))
      $("#id").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(1)").text())
      $("#roleName").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(2)").text())
      $("#roleDesc").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(3)").text())
      // $('iframe').attr('src', $(this).attr('src'))
      // $('title').text($(this).text())
    });
  });




</script>

<jsp:include page="admin-session.jsp"></jsp:include>

