<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    //Not nice! In real, it should be handled e.g. by org.springframework.web.context.support.ServletContextAttributeExporter
    pageContext.setAttribute("environment", System.getProperty("environment"));
%>

<html>
  <head>
    <title>Minification sample</title>
    <c:choose>
        <c:when test="${environment == 'development'}">
            <link rel="stylesheet" href="<c:url value="/gui/css/first.css" />" />
            <link rel="stylesheet" href="<c:url value="/gui/css/second.css" />" />
        </c:when>
        <c:otherwise>
            <link rel="stylesheet" href="<c:url value="/gui/css/minified.${version}.css" />" />
        </c:otherwise>
    </c:choose>
  </head>
  <body>
    <h1>Minification sample</h1>

    <button id="button1">Button 1</button>
    <button id="button2">Button 2</button>

    <script type="text/javascript" src="<c:url value="/gui/js/jquery-1.9.0.min.js" />"></script>

    <c:choose>
        <c:when test="${environment == 'development'}">
            <script type="text/javascript" src="<c:url value="/gui/js/custom_script1.js" />"></script>
            <script type="text/javascript" src="<c:url value="/gui/js/custom_script2.js" />"></script>
        </c:when>
        <c:otherwise>
            <script type="text/javascript" src="<c:url value="/gui/js/minified.${version}.js" />"></script>
        </c:otherwise>
    </c:choose>

  </body>
</html>