<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="content"> <!-- Small boxes (Stat box) -->
<div class="row">
		<form>
			<fieldset>
				<p>
					<img src="<c:url value="/${product.image}"></c:url>"
						alt="image" style="height: 189px; width: 500px;" />
				</p>
				<p>
					<label> Name:</label> <label> ${product.name}</label>

				</p>
				<p>
					<label> Price:</label> <label> ${product.price}</label>

				</p>
				<p>
					<label> </label> <a href="<spring:url value="/index" />"
						class="btn btn-default"> <span
						class="glyphicon-hand-left glyphicon"></span> back
					</a>

				</p>
			</fieldset>
		</form>
</div>
</section>