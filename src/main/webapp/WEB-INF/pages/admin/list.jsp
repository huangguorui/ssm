
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--${list}--%>

<c:forEach  items="${list}" var="account">
    <p>
        <span> ${account.id}</span>
        <span> ${account.name}</span>
        <span> ${account.money}</span>
    </p>

</c:forEach>

</body>
</html>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script>
    $.ajax({
        type:"get",
        url:"http://localhost:8080/ssm_war/account/findAll?username=123&password=123", //必选。规定吧请求发送到那个URL。
        data:data,//可选。映射或字符串值。规定连同请求发送到服务器的数据。
        success:function(data){
            console.log(data)
        }, //可选，请求成功时执行的回调函数。
        datatype:dataType//可选。规定预期的服务器响应的数据类型。默认执行职能判断(xml,json,script 或html)
    });



</script>

