<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Online Shopping</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.4 -->
        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="<c:url value="/resources/bootstrap/css/font-awesome.min.css" />" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="<c:url value="/resources/dist/css/AdminLTE.min.css" />" rel="stylesheet" type="text/css" />
        <!-- iCheck -->
        <link href="<c:url value="/resources/plugins/iCheck/square/blue.css" />" rel="stylesheet" type="text/css" />

    </head>
    <body class="login-page">
        <div class="login-box">
            <div class="login-logo">
                <b>Online Shopping</b>
            </div><!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Sign in to start your session</p>
                <form:form action="login" method="post">
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            <spring:message
                                code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
                            <br />
                        </div>
                    </c:if>
                    <div class="form-group has-feedback">
                        <input type="text" name='username' class="form-control" placeholder="Username" autofocus />
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input name='password' type="password" class="form-control" placeholder="Password"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">    
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox"> Remember Me
                                </label>
                            </div>                        
                        </div><!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                        </div><!-- /.col -->
                    </div>
                </form:form>
                <a href="#">I forgot my password</a><br>
                <a href="register.html" class="text-center">Register a new membership</a>

            </div><!-- /.login-box-body -->
        </div><!-- /.login-box -->

        <!-- jQuery 2.1.4 -->
        <script src="<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js" />"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="<c:url value="/resources/plugins/iCheck/icheck.min.js" />" type="text/javascript"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
    </body>
</html>

