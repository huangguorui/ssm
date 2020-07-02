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
  <title>大学生作业网</title>

</head>

<body>
<div class="main">
  <jsp:include page="header.jsp"></jsp:include>
  <div class="container  mt50px" id="app">
    <jsp:include page="choice.jsp"></jsp:include>

    <ol class="breadcrumb">
      <li><a href="#">首页</a></li>
      <li><a href="#">栏目</a></li>
      <li class="active">  ${projectInfo.title}</li>
    </ol>


    <div class="article">
      <div>

        <div class="plate">

          <h1 class="title">  ${projectInfo.title}</h1>
          <div class="hots">当前文章共有${projectInfo.views}人赞同</div>

          ${projectInfo.content}

        <%--          <p> 购买时请把详细要求和模板编号发给我</p>--%>
<%--          <p> 作品介绍：可另付费修改，承诺：每份网页记录去向，绝不会有撞车情况！</p>--%>
<%--          <img src="/static/images/about.jpg" alt="">--%>
<%--          <img src="/static/images/about.jpg" alt="">--%>
        </div>

        <hr>
        <div class="row">
          <div class="col-md-4 col-lg-4">
            <div class="thumbnail">
              <img src="/static/images/weixin.png" alt="...">

              <div class="caption">
                <h3>微信</h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-lg-4">
            <div class="thumbnail">
              <img src="/static/images/weixin.png" alt="...">

              <div class="caption">
                <h3>支付宝</h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-lg-4">
            <div class="thumbnail">
              <img src="/static/images/weixin.png" alt="...">

              <div class="caption">
                <h3>QQ交谈</h3>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
    <nav aria-label="...">
      <ul class="pager">
        <li class="previous"><a href=article.html><span aria-hidden="true">&larr;</span> 上一篇作业：我的个人博客制作</a></li>
        <li class="next"><a href=article.html>下一篇作业：我的个人博客制作 <span aria-hidden="true">&rarr;</span></a></li>
      </ul>
    </nav>
  </div>

</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
