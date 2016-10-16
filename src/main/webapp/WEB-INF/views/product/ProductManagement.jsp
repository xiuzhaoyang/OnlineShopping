<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>

<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="col-md">
		<div class="box box-primary">
			<div class="box-header with-border">
				<div class="col-sm-3">
					<a href="<spring:url value="/product/add" />"
						class="btn btn-primary"> Add product </a>
				</div>
				
				<!-- /.box-tools -->
			</div>

			<!-- /.box-header -->
			<div class="box-body">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th style="width: 10px">#</th>
							<th style="width: 25%">Name</th>
							<th>Description</th>
							<th style="width: 10%">Price</th>
							<th style="width: 10%">Quantity</th>
							<th style="width: 10%"></th>
						</tr>
						<c:forEach items="${products}" var="product">
							<tr>
								<td></td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.quantity}</td>
								<td><div class="col-md-3 col-sm-4">
										<a class="fa fa-fw fa-edit"
											href="<spring:url value="/product/detail/${product.id}" />"></a>
									</div>
									<div class="col-md-3 col-sm-4">
										<a class="fa fa-fw fa-remove"
											href="<spring:url value="/product/delete/${product.id}" />"></a>
									</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- /.box-body -->
			<!-- 			<div class="box-footer clearfix"> -->
			<!-- 				<ul class="pagination pagination-sm no-margin pull-right"> -->
			<!-- 					<li><a href="#">«</a></li> -->
			<!-- 					<li><a href="#">1</a></li> -->
			<!-- 					<li><a href="#">2</a></li> -->
			<!-- 					<li><a href="#">3</a></li> -->
			<!-- 					<li><a href="#">»</a></li> -->
			<!-- 				</ul> -->
		</div>
	</div>
	<!-- /.box -->
	</div>
</section>