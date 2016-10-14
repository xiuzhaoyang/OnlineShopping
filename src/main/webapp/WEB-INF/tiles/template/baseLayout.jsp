<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title><tiles:insertAttribute ignore="true" name="title"/></title>
        <jsp:include page="baseCss.jsp" />
    </head>


    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a  href="<spring:url value="/"/>" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>Web</b>Store</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Web</b>Store</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <jsp:include page="navigation.jsp" />
            <div class="content-wrapper">
                <tiles:insertAttribute name="content"/> 
            </div>
            <jsp:include page="footer.jsp" />

            <jsp:include page="baseJS.jsp" />
        </div>
    </body>
</html>
