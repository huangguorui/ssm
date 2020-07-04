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

  <link rel="stylesheet" href="/static/css/bootstrap.css">
  <script src="/static/js/jquery.min.js"></script>
  <script src="/static/js/bootstrap.min.js"></script>
  <style>
    .thumbnail img {

    }
    @media (min-width: 992px){
      .thumbnail img {
        overflow: hidden;
        width: 100%;
        height: 150px !important;
      }
    }
    @media (max-width: 992px){
      .thumbnail img {
        overflow: hidden;
        width: 100%;
        height: auto !important;
      }
    }

  </style>
</head>

<body>
<div class="main">

  <nav class="navbar navbar-default navbar-fixed-top nav_style">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">源码下载网</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">源码下载网</a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        </ul>
        </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./index.html">首页</a></li>
          <li><a href="./custom.html">网页定制</a></li>
          <li><a href="./pay.html">支付方式</a></li>
          <li><a href="free.html">免费下载专区</a></li>
          <li><a href="help.html">帮助中心</a></li>
          <li><a href="./login.html">登录</a></li>
          <li><a href="./reg.html">注册</a></li>
          <form class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="搜索">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
          </form>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">操作 <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">我的账户</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">退出</a></li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <div class="container  mt50px" id="app">
    <div class=" search">
      <div>网页主题：

        <button class="btn btn-default" type="submit">人物博客</button>
        <button class="btn btn-default" type="submit">学校网页</button>
        <button class="btn btn-default" type="submit">新闻时政</button>
        <button class="btn btn-default" type="submit">电影音乐</button>
        <button class="btn btn-default" type="submit">体育运动</button>
        <button class="btn btn-default" type="submit">旅游美食</button>
        <button class="btn btn-default" type="submit">购物电商</button>
        <button class="btn btn-default" type="submit">汽车军事</button>
        <button class="btn btn-default" type="submit">文化环保</button>
        <button class="btn btn-default" type="submit">公司企业</button>
        <button class="btn btn-default" type="submit">其他成品</button>
      </div>
      <div>网页页数：
        <button class="btn btn-default" type="submit">1-2页</button>
        <button class="btn btn-default" type="submit">3-5页</button>
        <button class="btn btn-default" type="submit"> 6-10页</button>
        <button class="btn btn-default" type="submit">11-15页</button>
        <button class="btn btn-default" type="submit">16-20页</button>
        <button class="btn btn-default" type="submit">21-30页</button>
        <button class="btn btn-default" type="submit">30页以上</button>

      </div>

      <div>使用技术：
        <button class="btn btn-default" type="submit">html+css</button>
        <button class="btn btn-default" type="submit">表格</button>
        <button class="btn btn-default" type="submit">DIV</button>
        <button class="btn btn-default" type="submit">特效</button>
        <button class="btn btn-default" type="submit">音乐</button>
        <button class="btn btn-default" type="submit">表单</button>
        <button class="btn btn-default" type="submit">框架</button>
        <button class="btn btn-default" type="submit">论文</button>
      </div>


    </div>



      <div class="row">
        <c:forEach items="${pageInfo.list}" var="project">
          <a href="##">

          <div class="col-md-3 col-lg-3" >
          <div class="thumbnail">
            <img src="${project.img}" alt="...">
            <div class="caption">
              <h3>${project.title}</h3>

              <p>ID：${project.id}</p>
              <p>价格：${project.price}</p>
              <p>页数：${project.pages}页</p>
              <p><a href="#" class="btn btn-primary" role="button">支付</a> <a href="#" class="btn btn-default"
                                                                             role="button">收藏</a></p>
            </div>
          </div>
        </div>
          </a>

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
        <a href="${pageContext.request.contextPath}/show/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
      </li>
      <li><a href="${pageContext.request.contextPath}/show/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
      <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
        <li><a href="${pageContext.request.contextPath}/show/findAll?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
      </c:forEach>
      <li><a href="${pageContext.request.contextPath}/show/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
      <li>
        <a href="${pageContext.request.contextPath}/show/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
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
<div class="footer ">
  <div class="container">
    <div class="row footer-top">
      <div class="col-md-6 col-lg-6">
        <p>关于我们</p>
        <p>本站已通过国家信息产业部备案。我们郑重承诺：每一个在本站获取毕业设计的同学，我们都会为您提供完善的服务保障。本站力争为大家提供网页定做，HTML静态学生网页成品，网页毕业设计制作指导等实用资源,
          旨在为朋友们在工作或学习时提高效率、节省时间。

        </p>
      </div>
      <div class="col-md-6  col-lg-5 col-lg-offset-1">
        <div class="row about">
          <div class="col-sm-3">
            <h4>帮助</h4>
            <ul class="list-unstyled">
              <li>
                <a href="javascript:;">网页作业定制 </a>
              </li>
              <li>
                <a href="javascript:;">毕业设计定制 </a>
              </li>
              <li>
                <a href="javascript:;">支付方式 </a>
              </li>
              <li>
                <a href="javascript:;">帮助中心 </a>
              </li>
              <li>
                <a href="javascript:;">网站设计 </a>
              </li>
              <li>
                <a href="javascript:;">网页毕业设计 </a>
              </li>
            </ul>
          </div>
          <div class="col-sm-3">
            <h4>网页下载</h4>
            <ul class="list-unstyled">
              <li><a href="javascript:;" title="" target="_blank">静态网页作业</a></li>
              <li><a href="javascript:;">网页作业</a></li>
              <li><a href="javascript:;">网页制作作业</a></li>
              <li><a href="javascript:;">学生网页制作</a></li>
              <li><a href="javascript:;">网页设计作品</a></li>
            </ul>
          </div>
          <div class="col-sm-4">
            <h4>友链</h4>
            <ul class="list-unstyled">
              <li><a href="javascript:;" target="_blank">网页制作成品下载</a></li>
              <li><a href="javascript:;" target="_blank">大学生网页作业</a></li>
              <li><a href="javascript:;" target="_blank">网页作业</a></li>
              <li><a href="javascript:;" target="_blank">网页作业模板</a></li>
              <li><a href="javascript:;" target="_blank">网页成品</a></li>
            </ul>
          </div>
          <!-- <div class="col-sm-2">
            <h4>赞助</h4>
            <ul class="list-unstyled">
              <li><a href="javascript:;" target="_blank">我的站点</a></li>
              <li><a href="javascript:;" target="_blank">我的站点</a></li>
            </ul>
          </div> -->
        </div>
      </div>
    </div>
    <hr>
    <div class="row footer-bottom">
      <ul class="list-inline text-center">
        <li><a href="javascript:;" target="_blank">我的站点</a></li>
        <li>我的站点</li>
      </ul>
    </div>
  </div>
</div>

</body>

</html>
<style>
  .main {
    margin: 0 auto;
  }

  .h300px div {
    height: auto;
    box-sizing: border-box;
  }

  .h300px .plate {
    margin: 5% 1%;
    height: auto;
    padding: 5%;
    border: 1px solid #e5e5e5;
    box-sizing: border-box;
  }

  .h3 {
    text-align: center;
    height: 50px !important;
    line-height: 50px !important;
  }

  .footer {
    /* color: #777;
    padding: 30px 0;
    margin-top: 70px; */
  }


  .search {
    /* margin-top: 15px;
    padding: 5px;
    box-sizing: border-box; */
  }

  .mt50px {
    margin-top: 50px;
  }

  .mt70px {
    margin-top: 70px;
  }

  .mt20px {
    margin-top: 20px;
  }

  /* 私人订制表单 */
  .input_style input {
    margin-bottom: 15px;
  }

  .input_style h3,
  .input_style p {
    text-align: center;
  }

  .search div {
    margin: 15px 0;
  }

  .search button {
    margin: 2px;
  }

  img {
    transition: all .6s;
  }

  /* 图片缩放控制 */
  .thumbnail {
    overflow: hidden;
  }

  .thumbnail img:hover {
    /* transform: rotate(360deg); */
  }

  button {
    outline: none;
  }

  /* 菜单栏层级需要比页面其余元素要高 */
  .nav_style {
    /* opacity: .6; */
    /* position: relative; */
    z-index: 99;
  }

  body {
    background: linear-gradient(90deg, rgb(18, 174, 236), pink);
    /* 标准的语法（必须放在最后） */

    /* background: url(../images/about.jpg) no-repeat;
    background-size: cover; */
  }

  /* 文章页面控制 */
  .article {
    background: #fff;
    padding: 20px;
    box-sizing: border-box;
  }

  .article h1 {
    font-size: 20px;
  }

  .article img {
    display: block;
    width: 100%;
  }
</style>
<jsp:include page="admin-session.jsp"></jsp:include>
