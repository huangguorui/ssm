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
  <title>源码下载网</title>
  <meta name="keywords" content="源码下载网,网站源码,源码下载,源代码">
  <meta name="description" content="源码下载网，提供最新免费网站源码下载，配有前台及后台管理界面演示图，绿色安全，每日更新！">
</head>

<body>
<div class="main">
  <!-- 页面头部 /-->
  <jsp:include page="header.jsp"></jsp:include>


  <div class="container  mt50px" id="app">
    <jsp:include page="choice.jsp"></jsp:include>

    <div class="row">
      <c:forEach items="${pageInfo.list}" var="project">


          <div class="col-md-3 col-lg-3" >
            <div class="thumbnail hf">
              <a href="article?id=${project.id}">
              <img src="${project.img}" alt="...">
              </a>
              <div class="caption">
                <a href="article?id=${project.id}"><h3 style="font-size: 20px">${project.title}</h3></a>

                <p>ID：${project.id}</p>
                <p>价格：${project.price} 元</p>
                <p>页数：${project.pages} 页</p>
<%--                <p>${project.content} </p>--%>
                <p><a href="article?id=${project.id}" class="btn btn-primary" role="button">支付</a> <a href="article?id=${project.id}" class="btn btn-default"
                                                                               role="button">收藏</a></p>
              </div>
            </div>
          </div>


      </c:forEach>
    </div>


  </div>
  <nav aria-label="Page navigation" style="text-align: center;">
    <ul class="pagination">
      <li>
        <a href=article.html aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
      <li><a href=article.html>1</a></li>
      <li>
        <a href="${pageContext.request.contextPath}/?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
      </li>
      <li><a href="${pageContext.request.contextPath}/?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
      <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
        <li><a href="${pageContext.request.contextPath}/?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
      </c:forEach>
      <li><a href="${pageContext.request.contextPath}/?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
      <li>
        <a href="${pageContext.request.contextPath}/?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
      </li>
      <li>
        <a href=article.html aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    </ul>
  </nav>
</div>

</div>
<!-- 页面底部 -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- 页面底部 /-->
</body>

</html>
