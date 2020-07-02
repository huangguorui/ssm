<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>


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
<jsp:include page="admin-session.jsp"></jsp:include>
