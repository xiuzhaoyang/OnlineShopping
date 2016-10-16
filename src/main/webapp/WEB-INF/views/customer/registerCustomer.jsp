<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Shopping register Customer</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Font Awesome Icons -->
<link
	href="<c:url value="/resources/bootstrap/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<c:url value="/resources/dist/css/AdminLTE.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- iCheck -->
<link href="<c:url value="/resources/plugins/iCheck/square/blue.css" />"
	rel="stylesheet" type="text/css" />

</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href=""><b>Online </b>Shopping</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new Customer</p>

			<form:form modelAttribute="newCustomerFront" method="post">
				<c:if test="${not empty error}">
					<div class="alert alert-danger">
						<spring:message
							code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
						<br />
					</div>
				</c:if>
				<div class="form-group has-feedback">
					<input type="text" name='username' class="form-control"
						placeholder="Username" autofocus /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input name='password' type="password" class="form-control"
						placeholder="Password" /> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input name='verifyPassword' type="password" class="form-control"
						placeholder="verify Password" /> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input type="text" name='firstName' class="form-control"
						placeholder="firstname" autofocus /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input type="text" name='lastName' class="form-control"
						placeholder="Lastname" autofocus /> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> I agree to the <a
								href="#">terms</a>
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form:form>

			<a href="<c:url value="/login"/>" class="text-center">I already
				have a membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery 2.1.4 -->
	<script
		src="<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js" />"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script
		src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />"
		type="text/javascript"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
</body>
</html>

