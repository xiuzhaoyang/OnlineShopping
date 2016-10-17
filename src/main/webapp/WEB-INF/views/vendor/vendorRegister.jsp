<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section class="content-header">
	<h1>Add Customer</h1>
	<ol class="breadcrumb">
		<li><a href="<spring:url value="/"/>"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="<spring:url value="/customers/list/"/>"><i
				class="fa fa-dashboard"></i> Customer List</a></li>
		<li class="active">Add Customer</li>
	</ol>
</section>

<section class="content">
	<div class="row">
		<div class="col-lg-12 connectedSortable">
			<div class="box box-info">
				<div class="box-body">
					<form:form class="cmxform form-horizontal tasi-form"
						id="signupForm" commandName="newVendor" method="post">
						<div class="form-group ">
							<label for="vendor_name" class="control-label col-lg-2">Vendor
								Name</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="vendor_name" id="vendor_name" placeholder="" />
								<form:errors path="vendor_name" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="reg_num" class="control-label col-lg-2">Registration
								Number</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="reg_num" id="reg_num" placeholder="" />
								<form:errors path="reg_num" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="city" class="control-label col-lg-2">City</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="city" id="city" placeholder="" />
								<form:errors path="city" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="country" class="control-label col-lg-2">Country</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="country" id="country" placeholder="" />
								<form:errors path="country" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="state_name" class="control-label col-lg-2">State</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="state_name" id="state_name" placeholder="" />
								<form:errors path="state_name" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="email" class="control-label col-lg-2">Email</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="email" id="email" placeholder="" />
								<form:errors path="email" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="allocated_space" class="control-label col-lg-2">Allocated
								Space</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="allocated_space" id="allocated_space" placeholder="" />
								<form:errors path="allocated_space" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="used_space" class="control-label col-lg-2">Used
								Space</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="used_space" id="used_space" placeholder="" />
								<form:errors path="used_space" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="cc_num" class="control-label col-lg-2">CC
								NUMBER</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="cc_num" id="cc_num" placeholder="" />
								<form:errors path="cc_num" cssClass="error" />
							</div>
						</div>

						<div class="form-group ">
							<label for="status" class="control-label col-lg-2">Status</label>
							<div class="col-lg-10">
								<form:input required="" class=" form-control" type="text"
									path="status" id="status" placeholder="" />
								<form:errors path="status" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button class="btn btn-danger" type="submit">Save</button>
								<a href="list"><button class="btn btn-default" type="button">Cancel</button></a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</section>