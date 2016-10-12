<%-- 
    Document   : baseJS
    Created on : May 15, 2015, 3:08:28 AM
    Author     : bayna_000
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- jQuery 2.1.4 -->
<script src="<c:url value="/resources/plugins/jQuery/jQuery-2.1.4.min.js" />"></script>
<!-- jQuery UI 1.11.2 -->
<script src="<c:url value="/resources/plugins/jQuery/jquery-ui.min.js" />" type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>    
<!-- Morris.js charts -->
<script src="<c:url value="/resources/plugins/jQuery/raphael-min.js" />"></script>
<script src="<c:url value="/resources/plugins/morris/morris.min.js" />" type="text/javascript"></script>
<!-- Sparkline -->
<script src="<c:url value="/resources/plugins/sparkline/jquery.sparkline.min.js" />" type="text/javascript"></script>
<!-- jvectormap -->
<script src="<c:url value="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="<c:url value="/resources/plugins/knob/jquery.knob.js" />" type="text/javascript"></script>
<!-- datepicker -->
<script src="<c:url value="/resources/plugins/datepicker/bootstrap-datepicker.js" />" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />" type="text/javascript"></script>
<!-- Slimscroll -->
<script src="<c:url value="/resources/plugins/slimScroll/jquery.slimscroll.min.js" />" type="text/javascript"></script>
<!-- FastClick -->
<script src='<c:url value="/resources/plugins/fastclick/fastclick.min.js" />'></script>
<!-- AdminLTE App -->
<script src="<c:url value="/resources/dist/js/app.min.js" />" type="text/javascript"></script>    


<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/resources/dist/js/demo.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jQuery/moment.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/daterangepicker/daterangepicker.js" />" type="text/javascript"></script>

    <script src="<c:url value="/resources/dist/js/pages/dashboard.js" />" type="text/javascript"></script>  
