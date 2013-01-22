<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Minification sample</title>
    <link rel="stylesheet" href="<c:url value="/gui/css/first.css" />" />
    <link rel="stylesheet" href="<c:url value="/gui/css/second.css" />" />
  </head>
  <body>
    <h1>Minification sample</h1>

    <button id="button1">Button 1</button>
    <button id="button2">Button 2</button>

    <script type="text/javascript" src="<c:url value="/gui/js/jquery-1.9.0.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/gui/js/custom_script1.js" />"></script>
    <script type="text/javascript" src="<c:url value="/gui/js/custom_script2.js" />"></script>

  </body>
</html>