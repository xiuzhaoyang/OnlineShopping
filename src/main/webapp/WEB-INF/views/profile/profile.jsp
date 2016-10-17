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
	<h1>Customer Profile</h1>
	<ol class="breadcrumb">
		<li><a href="<spring:url value="/"/>"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Customer Profile</li>
	</ol>
</section>

<div class="row">
	<div class="col-lg-12">
		<section class="panel">
			<table class="table table-striped table-advance table-hover">
				<thead>
					<tr>
						<th><i class="fa fa-credit-card"></i>First Name</th>
						<th><i class="fa fa-credit-card"></i>Last Name</th>
						<th><i class="fa fa-credit-card"></i>Username</th>
						<th><i class="fa fa-credit-card"></i>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="count" value="1" scope="page" />
					<tr>
						<td class="hidden-phone">${customer.firstName}</td>
						<td class="hidden-phone">${customer.lastName}</td>
						<td class="hidden-phone">${user.username}</td>
						<td class="hidden-phone"><a
							href="${pageContext.request.contextPath}/customer/edit/${customer.customerId}">
								<button class="btn btn-success btn-xs">
									<i class="fa fa-pencil"></i>
								</button>
						</a></td>
					</tr>
				</tbody>
			</table>
		</section>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<section class="panel">
			<div class="col-lg-6">
				<h2>Address</h2>
				<a class="btn btn-success"
					href="${pageContext.request.contextPath}/address/add"
					data-toggle="modal"> Create New Address </a>
				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>
							<th><i></i>#</th>
							<th><i class="fa fa-credit-card"></i>Address</th>
							<th><i class="fa fa-credit-card"></i>Type</th>
							<th><i class="fa fa-credit-card"></i>City</th>
							<th><i class="fa fa-credit-card"></i>state</th>
							<th><i class="fa fa-credit-card"></i>zip</th>
							<th><i class="fa fa-credit-card"></i>Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="address" items="${addresses}">
							<tr>

								<td class="hidden-phone"><a href="#"> ${count} <c:set
											var="count" value="${count + 1}" scope="page" /></a></td>
								<td class="hidden-phone">${address.addressLine1}</td>
								<td class="hidden-phone">${address.addressType}</td>
								<td class="hidden-phone">${address.city}</td>
								<td class="hidden-phone">${address.stateName}</td>
								<td class="hidden-phone">${address.zipCode}</td>
								<td class="hidden-phone">${address.addressType}</td>
								<td class="hidden-phone"><a
									href="${pageContext.request.contextPath}/address/edit/${address.id}">
										<button class="btn btn-success btn-xs">
											<i class="fa fa-pencil"></i>
										</button>
								</a> <a data-toggle="modal" href="#confirmRemove">
										<button class="btn btn-danger btn-xs confirmRemove"
											id="${pageContext.request.contextPath}/address/delete/${address.id}">
											<i class="fa fa-trash-o "></i>
										</button>
								</a> <!-- Modal -->
									<div class="modal fade" id="confirmRemove" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Are you sure remove</h4>
												</div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<a id="urlAddIdAddress" href="">
														<button class="btn btn-danger" type="button">
															Confirm</button>
													</a>
												</div>
											</div>
										</div>
									</div> <!-- modal --></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-lg-6">
				<h2>Contact</h2>
				<a class="btn btn-success"
					href="${pageContext.request.contextPath}/contactInformation/add"
					data-toggle="modal"> Create New Contact </a>
				<table class="table table-striped table-advance table-hover">
					<thead>
						<tr>
							<th><i></i>#</th>
							<th><i class="fa fa-credit-card"></i>Type</th>
							<th><i class="fa fa-credit-card"></i>Information</th>
							<th><i class="fa fa-credit-card"></i>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="count1" value="${1}" scope="page" />
						<c:forEach var="contact" items="${contacts}">
							<c:set var="count" value="1" scope="page" />
							<tr>
								<td class="hidden-phone"><a href="#"> ${count1} <c:set
											var="count1" value="${count1 + 1}" scope="page" /></a></td>
								<td class="hidden-phone">${contact.informationType}</td>
								<td class="hidden-phone">${contact.informationField}</td>
								<td class="hidden-phone"><a
									href="${pageContext.request.contextPath}/contactInformation/edit/${contact.id}">
										<button class="btn btn-success btn-xs">
											<i class="fa fa-pencil"></i>
										</button>
								</a> <a data-toggle="modal" href="#confirmRemove">
										<button class="btn btn-danger btn-xs confirmRemove"
											id="${pageContext.request.contextPath}/contactInformation/${contact.id}">
											<i class="fa fa-trash-o "></i>
										</button>
								</a> <!-- Modal -->
									<div class="modal fade" id="confirmRemove" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title">Are you sure remove</h4>
												</div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-default"
														type="button">Close</button>
													<a id="urlAddIdInformation" href="">
														<button class="btn btn-danger" type="button">
															Confirm</button>
													</a>
												</div>
											</div>
										</div>
									</div> <!-- modal --></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</div>
</div>
<script>
	$(document).ready(function() {
		$(".confirmRemoveAddress").click(function() {
			console.log(this.customer);
			$('#urlAddIdAddress').attr('href', this.customer);
		});
	});
	$(document).ready(function() {
		$(".confirmRemoveInformation").click(function() {
			console.log(this.customer);
			$('#urlAddIdInformation').attr('href', this.customer);
		});
	});
</script>
