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
      <th>标题</th>
      <th>价格</th>
      <th>页数</th>
    </tr>
  </thead>
  <tbody>


  <c:forEach items="${pageInfo.list}" var="project">
    <tr>
      <td>${project.id }</td>
      <td>${project.title }</td>
      <td>${project.price }</td>
      <td>${project.pages }</td>
      <td><img src="${project.img }" height="30px" alt=""></td>

      <td>
        <button type="button" class="btn btn-primary" data-toggle="modal"
                data-target=".bs-example-modal-sm">修改信息</button>
        <button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/project/delete?id=${project.id}'">删除</button>
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
      <a href="${pageContext.request.contextPath}/user/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
    </li>
    <li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
    <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
      <li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
    </c:forEach>
    <li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
    <li>
      <a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
    </li>

    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

<%--<form action="${pageContext.request.contextPath }/project/save"--%>
<%--      method="post" enctype="multipart/form-data">--%>
<%--  <input type="text" name="title" width="120px">--%>
<%--  选择文件:<input type="file" name="file" width="120px"> <input--%>
<%--        type="submit" value="上传">--%>
<%--</form>--%>


<form action="${pageContext.request.contextPath}/project/save" enctype="multipart/form-data"  method="post">
  <div class="form-group">
    <label >添加标题</label>
    <input type="text"  name="title" class="form-control"  >
  </div>
  <div class="form-group">
    <label >添加价格</label>
    <input type="text"  name="price" class="form-control"  >
  </div>
  <div class="form-group">
    <label >添加页数</label>
    <input type="text"  name="pages" class="form-control"  >
  </div>

<%--  <div class="form-group">--%>
<%--    <label >添加图片</label>--%>
<%--    <input type="file"  name="img" class="form-control"  >--%>
<%--  </div>--%>
  <div class="form-group">
    <label >添加图片</label>
    <input type="file"  name="file" class="form-control"  >
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>





<!-- Small modal -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <form style="padding:2%" action="/project/update">
        <h5>信息修改</h5>
        <div class="form-group">
          <label >添加标题</label>
          <input type="text"  name="title" class="form-control" id="title" >
        </div>
        <div class="form-group">
          <label >添加价格</label>
          <input type="text"  name="price" class="form-control" id="price"  >
        </div>
        <div class="form-group">
          <label >添加页数</label>
          <input type="text"  name="pages" class="form-control" id="pages" >
        </div>

        <div class="form-group">
          <label >添加图片</label>
          <input type="text"  name="img" class="form-control" id="img" >
        </div>
        <div class="form-group hidden">
          <label for="id">用户id</label>
          <input type="text"  name="id"   class="form-control" id="id" value="1" placeholder="用户id">
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
  console.log($("tr:nth-child("+1+") td:nth-child(1)").text())
  $("tbody tr").each(function (i) {

    $("tbody tr").eq(i).click(function () {
      console.log(i,i,i)
      // console.log($(this).attr('src'))
      $("#id").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(1)").text())
      $("#title").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(2)").text())
      $("#price").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(3)").text())
      $("#pages").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(4)").text())
      $("#img").val($("tbody tr:nth-child("+(i+1)+") td:nth-child(5) img").attr("src"))
    });
  });
</script>
<jsp:include page="admin-session.jsp"></jsp:include>

