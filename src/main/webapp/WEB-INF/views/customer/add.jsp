<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section class="content-header">
    <h1>
        Add Customer
    </h1>
    <ol class="breadcrumb">
        <li><a href="<spring:url value="/"/>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<spring:url value="/customers/list/"/>"><i class="fa fa-dashboard"></i> Customer List</a></li>
        <li class="active">Add Customer</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-lg-12 connectedSortable">
            <div class="box box-info">
                <div class="box-body">
                    <form:form class="cmxform form-horizontal tasi-form" id="signupForm" commandName="customer" method="post">
                        <div class="form-group ">
                            <label for="firstName" class="control-label col-lg-2">First Name</label>
                            <div class="col-lg-10">
                                <form:input required="" class=" form-control" type="text" path="firstName" id="firstName" placeholder=""/>
                                <form:errors path="firstName" cssClass="error" />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="lastName" class="control-label col-lg-2">Last Name</label>
                            <div class="col-lg-10">
                                <form:input required="" class=" form-control" type="text" path="lastName" id="lastName" placeholder=""/>
                                <form:errors path="lastName" cssClass="error" />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="email" class="control-label col-lg-2">Email</label>
                            <div class="col-lg-10">
                                <form:input required="" class=" form-control" type="text" path="email" id="email" placeholder=""/>
                                <form:errors path="email" cssClass="error" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-danger" type="submit">Save</button>
                                <a href="list"><button class="btn btn-default" type="button">Cancel</button></a>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</section>