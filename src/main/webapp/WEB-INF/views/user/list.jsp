<%-- 
    Document   : list
    Created on : May 16, 2015, 7:47:04 PM
    Author     : 
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- jQuery 2.1.4 -->
<script
	src="<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js" />"></script>
<!-- jQuery UI 1.11.2 -->
<script
	src="<c:url value="/resources/plugins/jQuery/jquery-ui.min.js" />"
	type="text/javascript"></script>

<section class="content-header">
	<h1>System Users List Page</h1>
	<ol class="breadcrumb">
		<li><a href="<spring:url value="/"/>"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">System User list</li>
	</ol>
</section>

<div class="row">
	<div class="col-lg-12">
		<section class="panel">
			<div class="panel-body">
				<c:if test="${!empty message}">
					<div class="alert alert-success" role="alert">${message}</div>
				</c:if>
				<a class="btn btn-success"
					href="${pageContext.request.contextPath}/user/add"
					data-toggle="modal"> Create User </a>
			</div>
			<table class="table table-striped table-advance table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th><i class="fa fa-credit-card"></i> Username</th>
						<th><i class="fa fa-envelope-o"></i> Password</th>
						<th><i class="fa fa-mobile"></i> Status</th>
						<th><i class=" fa fa-align-justify"></i> Customer Id</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="count" value="1" scope="page" />
					<c:forEach var="user" items="${systemUsers}">
						<tr>
							<td><a href="#"> ${count} <c:set var="count"
										value="${count + 1}" scope="page" /></a></td>
							<td class="hidden-phone">${user.username}</td>
							<td>${user.password}</td>
							<td>${user.enabled}</td>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
</div>
<script>
	$(document).ready(function() {
		$(".confirmRemove").click(function() {
			console.log(this.id);
			$('#urlAddId').attr('href', this.id);
		});
	});
</script>
