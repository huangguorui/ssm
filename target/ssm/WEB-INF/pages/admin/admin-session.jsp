<%--
  Created by IntelliJ IDEA.
  User: h
  Date: 2020/7/1
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String flag = (String) request.getSession().getAttribute("admin");
    if(flag==null){
        response.sendRedirect(request.getContextPath()+"/user/login");
    }
//       Admins admin=(Admins)request.getSession().getAttribute("admin");
//       if (admin==null) {
//            response.sendRedirect(request.getContextPath()+"/login.jsp");
//       }
%>
