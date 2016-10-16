<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>

<section class="content">
	<!-- Small boxes (Stat box) -->

	<div class="row">
		<c:forEach items="${products}" var="product">
			<div class="col-lg-2 col-xs-4">
				<!-- small box -->
				<div class="box-body box-profile">
					<div class="inner">
						<img src="<c:url value="/${product.thumbnail}"></c:url>"
							alt="image" style="height: 100px; width: 100px;" />
						<p>${product.name}</p>
						<p>$ ${product.price}</p>
					</div>

					<a href=" <spring:url value="/product/detail/${product.id}" />"
						class="small-box-footer">More info <i
						class="fa fa-arrow-circle-right"></i></a>
					<%-- 				<a href=" <spring:url value="/product/update/${product.id}" />" class="small-box-footer">More info <i --%>
					<!-- 					class="fa fa-arrow-circle-right"></i></a> -->
				</div>
			</div>
		</c:forEach>
	</div>
</section>
