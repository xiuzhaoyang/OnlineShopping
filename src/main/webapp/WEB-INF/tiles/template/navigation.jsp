<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="active"><a href="<spring:url value="/"/>"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li class="treeview"><a href="#"> <i
						class="fa fa-user-secret"></i> <span>Roles</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/roles/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/roles/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Customer</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/customers/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/customers/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>System User</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/users/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/users/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Category</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/category/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/category/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Product</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/product/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/product/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>
			</security:authorize>

			<li class="active"><a href="<c:url value="/logout"/>"> <i
					class="fa fa-user"></i> <span>Logout</span>
			</a></li>


		</ul>
	</section>
	<!-- /.sidebar -->
</aside>