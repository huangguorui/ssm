<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<link rel="stylesheet" href="./static/css/bootstrap.css">
<script src="./static/js/jquery.min.js"></script>
<script src="./static/js/bootstrap.min.js"></script>
<table class="table  table-hover">
  <thead>
    <tr>
      <th>#</th>
      <th>用户名</th>
      <th>用户密码</th>
      <th>用户注册时间</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${userList}" var="user">
    <th scope="row">1</th>
    <tr>
      <td>${user.id }</td>
      <td>${user.username }</td>
    </tr>
  </c:forEach>


    <tr>
      <th scope="row">1</th>
      <td>123</td>
      <td>123</td>
      <td>默认用户</td>
      <td>2020-04-24 16:41</td>
      <td>
        <button type="button" class="btn btn-primary" data-toggle="modal"
          data-target=".bs-example-modal-sm">修改信息</button>
        <button type="button" class="btn btn-danger">删除</button>
      </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>123</td>
      <td>123</td>
      <td>默认用户</td>
      <td>2020-04-24 16:41</td>
      <td>
        <button type="button" class="btn btn-primary" data-toggle="modal"
          data-target=".bs-example-modal-sm">修改信息</button>
        <button type="button" class="btn btn-danger">删除</button>
      </td>
    </tr>
  </tbody>
</table>
<nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>



<!-- Small modal -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <form style="padding:2%">
        <h5>信息修改</h5>
        <div class="form-group">
          <label for="exampleInputEmail1">用户名</label>
          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="用户名">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">用户密码</label>
          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="用户密码">
        </div>
        <div class="form-group hidden">
          <label for="exampleInputEmail1">用户id</label>
          <input type="text" class="form-control" id="exampleInputEmail1" value="1" placeholder="用户id" name="id">
        </div>


        <button type="submit" class="btn btn-default">确定修改</button>
      </form>
    </div>
  </div>
</div>