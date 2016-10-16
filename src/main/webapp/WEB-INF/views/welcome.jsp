<!-- Content Header (Page header) -->


<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.username" var="username" />
</security:authorize>

<section class="content-header">
	<h1>
		Dashboard <small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-aqua">
				<div class="inner">
					<h3>150</h3>
					<h2></h2>
					<p>Hey ROLE: ${role}
					<p>
					<p>Hello ${username}</p>

					<p></p>
				</div>
				<div class="icon">
					<i class="ion ion-bag"></i>
				</div>
				<a href="#" class="small-box-footer">More info <i
					class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h3>
						53<sup style="font-size: 20px">%</sup>
					</h3>
					<p>Current Missions</p>
				</div>
				<div class="icon">
					<i class="ion ion-stats-bars"></i>
				</div>
				<a href="#" class="small-box-footer">More info <i
					class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h3>44</h3>
					<p>New Commander Registrations</p>
				</div>
				<div class="icon">
					<i class="ion ion-person-add"></i>
				</div>
				<a href="#" class="small-box-footer">More info <i
					class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-red">
				<div class="inner">
					<h3>65</h3>
					<p>Special Force Missions</p>
				</div>
				<div class="icon">
					<i class="ion ion-pie-graph"></i>
				</div>
				<a href="#" class="small-box-footer">More info <i
					class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<!-- ./col -->
	</div>
	<!-- /.row -->
	<!-- Main row -->
	<div class="row">
		<!-- Left col -->
		<section class="col-lg-7 connectedSortable">
			<!-- Custom tabs (Charts with tabs)-->
			<div class="nav-tabs-custom">
				<!-- Tabs within a box -->
				<ul class="nav nav-tabs pull-right">
					<li class="pull-left header"><i class="fa fa-inbox"></i>
						Weapons</li>
				</ul>
				<div class="tab-content no-padding">
					<!-- Morris chart - Sales -->
					<div class="chart tab-pane active" id="revenue-chart"
						style="position: relative; height: 300px;"></div>
					<div class="chart tab-pane" id="sales-chart"
						style="position: relative; height: 300px;"></div>
				</div>
			</div>
			<!-- /.nav-tabs-custom -->

			<!-- quick email widget -->
			<div class="box box-info">
				<div class="box-header">
					<i class="fa fa-envelope"></i>
					<h3 class="box-title">Quick Email</h3>
					<!-- tools box -->
					<div class="pull-right box-tools">
						<button class="btn btn-info btn-sm" data-widget="remove"
							data-toggle="tooltip" title="Remove">
							<i class="fa fa-times"></i>
						</button>
					</div>
					<!-- /. tools -->
				</div>
				<div class="box-body">
					<form action="#" method="post">
						<div class="form-group">
							<input type="email" class="form-control" name="emailto"
								placeholder="Email to:" />
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								placeholder="Subject" />
						</div>
						<div>
							<textarea class="textarea" placeholder="Message"
								style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
						</div>
					</form>
				</div>
				<div class="box-footer clearfix">
					<button class="pull-right btn btn-default" id="sendEmail">
						Send <i class="fa fa-arrow-circle-right"></i>
					</button>
				</div>
			</div>

		</section>
		<!-- /.Left col -->
		<!-- right col (We are only adding the ID to make the widgets sortable)-->
		<section class="col-lg-5 connectedSortable">

			<!-- Map box -->
			<div class="box box-solid bg-light-blue-gradient">
				<div class="box-header">
					<!-- tools box -->
					<div class="pull-right box-tools">
						<button class="btn btn-primary btn-sm daterange pull-right"
							data-toggle="tooltip" title="Date range">
							<i class="fa fa-calendar"></i>
						</button>
						<button class="btn btn-primary btn-sm pull-right"
							data-widget='collapse' data-toggle="tooltip" title="Collapse"
							style="margin-right: 5px;">
							<i class="fa fa-minus"></i>
						</button>
					</div>
					<!-- /. tools -->

					<i class="fa fa-map-marker"></i>
					<h3 class="box-title">Mission Report</h3>
				</div>
				<div class="box-body">
					<div id="world-map" style="height: 250px; width: 100%;"></div>
				</div>
				<!-- /.box-body-->
				<div class="box-footer no-border">
					<div class="row">
						<div class="col-xs-4 text-center"
							style="border-right: 1px solid #f4f4f4">
							<div id="sparkline-1"></div>
							<div class="knob-label">New Missions</div>
						</div>
						<!-- ./col -->
						<div class="col-xs-4 text-center"
							style="border-right: 1px solid #f4f4f4">
							<div id="sparkline-2"></div>
							<div class="knob-label">Completed Missions</div>
						</div>
						<!-- ./col -->
						<div class="col-xs-4 text-center">
							<div id="sparkline-3"></div>
							<div class="knob-label">Progressing</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
				</div>
			</div>
			<!-- /.box -->

		</section>
		<!-- right col -->
	</div>
	<!-- /.row (main row) -->

</section>
<!-- /.content -->