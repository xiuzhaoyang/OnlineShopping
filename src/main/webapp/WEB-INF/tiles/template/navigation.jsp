<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.username" var="username" />
</security:authorize>

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

				<!-- Customer Section -->
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Customer</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/customers/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/customers/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>

				<!-- Address Section -->
				<li class="treeview"><a href="#"> <i
						class="fa fa-user-secret"></i> <span>Address</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/address/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/address/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>

				<!-- Contact Information Section -->
				<li class="treeview"><a href="#"> <i
						class="fa fa-user-secret"></i> <span>Contact Information</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/contactInformation/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/contactInformation/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>

				<!-- System User Section -->
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>System User</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/users/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/users/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>

				<!-- Category Section -->
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Category</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/category/list"/>"><i
								class="fa fa-circle-o"></i> List </a></li>
						<li><a href="<spring:url value="/category/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul></li>

				<!-- Product Section -->
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
						<span>Product</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/product/management"/>"><i
								class="fa fa-circle-o"></i> Managment </a></li>
						<li><a href="<spring:url value="/product/add"/>"><i
								class="fa fa-circle-o"></i> Add </a></li>
					</ul>
				</li>

				<!-- shooping cart section -->
				<li class="treeview"><a href="#"> <i class="fa fa-bars"></i>
					<span>Shopping Cart</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="<spring:url value="/shopping-cart/detail"/>"><i
								class="fa fa-circle-o"></i>detail</a></li>
					</ul></li>
			</security:authorize>

			<security:authorize access="hasRole('ROLE_CUSTOMER')">
				<li class="active"><a href="<c:url value="/profile/"/>"> <i
						class="fa fa-user"></i> <span>Profile</span>
				</a></li>
			</security:authorize>


			<c:choose>

				<c:when test="${empty username}">
					<li class="active"><a href="<c:url value="/login"/>"> <i
							class="fa fa-user"></i> <span>Login</span>
					</a></li>
				</c:when>
				<c:otherwise>
					<li class="active"><a href="<c:url value="/doLogout"/>"> <i
							class="fa fa-user"></i> <span>Logout</span>
					</a></li>
				</c:otherwise>
			</c:choose>

		</ul>
	</section>
	<!-- /.sidebar -->
</aside>