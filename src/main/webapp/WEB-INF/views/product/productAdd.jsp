<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-md-3 col-sm-4">
			<form:form class="form-group" commandName="productForm" action="add"
				method="post" enctype="multipart/form-data">
				<fieldset>
					<form:input path="id" type="hidden" />
					<p>
						<form:errors path="*" cssStyle="color : red;" />
					</p>
					<p>
					<div class="form-group">
						<label> Name :</label>
						<div class="input-group margin-bottom-sm">
							<form:input path="name" class="form-control" placeholder="Name" />
							<form:errors path="name" class="form-control" />
						</div>
					</div>


					<div class="form-group">
						<label> Price:</label>
						<div class="input-group margin-bottom-sm">
							<form:input path="price" class="form-control" placeholder="Price" />
							<form:errors path="price" />
						</div>
					</div>

					<div class="form-group">
						<label> Quantity:</label>

						<form:input path="quantity" class="form-control"
							placeholder="Quantity" />
						<form:errors path="quantity" />
					</div>
					<div class="form-group">
						<label>Image:</label> <input name="productImage"
							class="form-control" type="file" />
					</div>
					<div class="form-group">
						<label>Thumbnail: </label> <input name="productThumbnail"
							class="form-control" type="file" />
					</div>
					<div class="form-group">
						<input type="submit" value="Submit" class="btn btn-default" />
						&nbsp; <a href="<spring:url value="/" />"> back </a>
					</div>


				</fieldset>
			</form:form>
		</div>
	</div>
</section>