<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">

		<form:form class="form-horizontal" commandName="productForm"
			action="add" method="post" enctype="multipart/form-data">
			<div class="box-body">
				<form:input path="id" type="hidden" />
				<p>
					<form:errors path="*" cssStyle="color : red;" />
				</p>
				<p>
				<div class="form-group">
					<label class="col-sm-2 control-label">Name:</label>
					<div class="col-sm-3">
						<form:input type="text" class="form-control" path="name" />
					</div>

				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Price:</label>
					<div class="col-sm-3">
						<form:input type="text" class="form-control" path="price" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Quantity:</label>
					<div class="col-sm-3">
						<form:input type="text" class="form-control" path="quantity"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Description:</label>
					<div class="col-sm-5">
						<form:textarea class="form-control" rows="3" path="description"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Image:</label>
					<div class="col-sm-3">
						<input name="productImage" class="form-control" type="file" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Thumbnail: </label>
					<div class="col-sm-3">
						<input name="productThumbnail" class="form-control" type="file" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"></label>
					<div class="col-sm-3">
						<input type="submit" value="Submit" class="btn btn-primary" /> <a
							href="<spring:url value="/" />" class="btn btn-default"> <span
							class="glyphicon-hand-left glyphicon"></span> Back
						</a>
					</div>
				</div>
			</div>
		</form:form>
	</div>

</section>