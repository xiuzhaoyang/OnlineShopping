<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="box">
  <div class="box-header">
    <h3 class="box-title">Shopping Cart</h3>
  </div>
  <!-- /.box-header -->
  <div class="box-body no-padding">
    <table class="table table-condensed">
      <tr>
        <th style="width: 10px">#</th>
        <th>Product</th>
        <th style="width: 40px"> count </th>
      </tr>
      <tr>
        <td>1.</td>
        <%--<img data-src="holder.js/200*200" class="img-circle" src="./img/4.pic.jpg" title="flower" width="200px" height="200px">--%>
        <td><img class="img-thumbnail" src="/resources/images/product/pc.jpg" width="100px" height="100px" ></td>
        <td>
          <input type="text" value="2" >
        </td>
      </tr>
      <tr>
        <td>2.</td>
        <td><img class="img-thumbnail" src="/resources/images/product/pc.jpg" width="100px" height="100px" ></td>
        <td>
          <input type="text" value="2" >
        </td>
      </tr>
    </table>
  </div>
  <!-- /.box-body -->
</div>

<div class="container">
  <div class="row-fluid">
    <div class="span6">
      <button type="button fr" class="btn btn-primary" >submit</button>
    </div>
  </div>
</div>


<!-- /.box -->
</div>


