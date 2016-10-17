<!-- Content Header (Page header) -->


<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.username" var="username" />
</security:authorize>

<section class="content-header">
	<h1>
		Home Page <small>Welcome</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<!-- Left col -->
		
	<!-- /.row (main row) -->

</section>
<!-- /.content -->