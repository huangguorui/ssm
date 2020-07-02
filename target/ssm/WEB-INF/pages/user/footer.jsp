<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="footer" >
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
<script src="/static/js/jquery.min.js"></script>

<script>
    //点击图片放大全屏start
    var runPrefixMethod = function (element, method) {
        var usablePrefixMethod;
        ["webkit", "moz", "ms", "o", ""].forEach(function (prefix) {
            if (usablePrefixMethod) return;
            if (prefix === "") {
                // 无前缀，方法首字母小写
                method = method.slice(0, 1).toLowerCase() + method.slice(1);
            }

            var typePrefixMethod = typeof element[prefix + method];

            if (typePrefixMethod + "" !== "undefined") {
                if (typePrefixMethod === "function") {
                    usablePrefixMethod = element[prefix + method]();
                } else {
                    usablePrefixMethod = element[prefix + method];
                }
            }
        });

        return usablePrefixMethod;
    };
    if (typeof window.screenX === "number") {
        var eleFull = document.querySelectorAll(".article img");
        for (var i = 0; i < eleFull.length; i++)
            eleFull[i].addEventListener("click", function () {
                if (runPrefixMethod(document, "FullScreen") || runPrefixMethod(document, "IsFullScreen")) {
                    runPrefixMethod(document, "CancelFullScreen");
                    this.title = this.title.replace("退出", "");
                } else if (runPrefixMethod(this, "RequestFullScreen")) {
                    this.title = this.title.replace("点击", "点击退出");
                }
            });
    } else {
        alert("爷，现在都什么时代了，你还在用这么土的浏览器~~");
    }
    //点击图片放大全屏end

</script>

