<%--
  Created by IntelliJ IDEA.
  Author: 冯奕骅
  Date: 15/1/2
  Time: 18:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:if test="${empty requestScope.headerIncluded and empty param.headerIncluded}">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">

    <!-- jQuery -->
    <link type="text/css" href="${pageContext.request.contextPath}/lib/jquery/css/jquery-ui.min.css" rel="stylesheet"/>
    <link type="text/css" href="${pageContext.request.contextPath}/lib/jquery/css/jquery-ui.structure.min.css" rel="stylesheet"/>
    <link type="text/css" href="${pageContext.request.contextPath}/lib/jquery/css/jquery-ui.theme.min.css" rel="stylesheet"/>
    <!-- Bootstrap -->
    <link type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- jQuery -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/js/jquery-ui-1.11.2.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- Juicer -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/juicer-min.js"></script>
    <script type="text/javascript">
        juicer.set({
            'tag::operationOpen': '{@',
            'tag::operationClose': '}',
            'tag::interpolateOpen': '{{',
            'tag::interpolateClose': '}}',
            'tag::noneencodeOpen': '{{{',
            'tag::noneencodeClose': '}}}',
            'tag::commentOpen': '{#',
            'tag::commentClose': '}'
        });
    </script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/ie10-viewport-bug-workaround.js"></script>
    <!-- WebSocket自动重连 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/reconnecting-websocket.min.js"></script>

    <c:set var="headerIncluded" value="1" scope="request"/>
</c:if>