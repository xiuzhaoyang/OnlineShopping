<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<form class="form-horizontal">
			<div class="box-body">
				<div class="form-group">
					<label class="col-sm-2 control-label"></label> <img
						class="col-sm-2" src="<c:url value="/${product.image}"></c:url>"
						alt="image" style="height: 200px; width: 200px;" />
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Name:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${product.name}"
							disabled />
					</div>

				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Price:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" value="${product.price}"
							disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Quantity:</label>
					<div class="col-sm-3">
						<input type="text" class="form-control"
							value="${product.quantity}" disabled />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Description:</label>
					<div class="col-sm-5">
						<textarea class="form-control" rows="3" disabled>${product.description}</textarea>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label"></label>
					<div class="col-sm-3">
						<a href="<spring:url value="/product/update/${product.id}" />"
							class="btn btn-primary">Edit</a> <a
							href="<spring:url value="/" />" class="btn btn-default"> <span
							class="glyphicon-hand-left glyphicon"></span> Back
						</a>
					</div>
				</div>
			</div>
			<!-- /.box-body -->

		</form>
	</div>
</section>