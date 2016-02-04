<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" data-ng-app> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <c:set var="titlevalue">
        <tiles:insertAttribute name="title" ignore="true" />
    </c:set>
    <title><fmt:message key="${titlevalue}"/></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
    <link href="<c:url value="/resources/css/app.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" />

</head>
<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="menu"/>
    <tiles:insertAttribute name="body"/>
    <tiles:insertAttribute name="footer"/>
<!-- Add your site or application content here -->


<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
    (function (b, o, i, l, e, r) {
        b.GoogleAnalyticsObject = l;
        b[l] || (b[l] =
                function () {
                    (b[l].q = b[l].q || []).push(arguments)
                });
        b[l].l = +new Date;
        e = o.createElement(i);
        r = o.getElementsByTagName(i)[0];
        e.src = '//www.google-analytics.com/analytics.js';
        r.parentNode.insertBefore(e, r)
    }(window, document, 'script', 'ga'));
    ga('create', 'UA-XXXXX-X');
    ga('send', 'pageview');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>

<script src="<c:url value="/resources/js/app.js"/>"></script>
<script src="<c:url value="/resources/js/main.js"/>"></script>

</body>
</html>