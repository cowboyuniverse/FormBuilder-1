<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>
body {
	min-height: 2000px;
	padding-top: 70px;
}


.profile 
{
    min-heightf: 355px;
    display: inline-block;
    }
</style>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/formbuilder/">Formbuilder</a>
			</div>
			<div id="navbar" class="navbar-collapse ">
				<ul class="nav navbar-nav">
					<li><a href="/formbuilder/">Home</a></li>
					<li><a href="/formbuilder/user/list.html">Users</a></li>
					<li><a href="/formbuilder/form/list.html">Forms</a></li>
					<li><a href="/formbuilder/form/add.html" class="btn btn-secondary"> <span
							class="glyphicon glyphicon-plus"></span> ADD NEW FORM
						</a>
					</li>
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
				<li><a href="/formbuilder/user/add.html" class="btn btn-secondary"> <span
							class="glyphicon glyphicon-plus"></span> ADD NEW USER
						</a>
					</li>

					<li><a href="#">LOGIN<span class="sr-only">(current)</span></a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	
<!-- end of nav -->
	<div class="container">

		<c:if test="${empty forms}">
			<h4>There are no forms to display.</h4>
		</c:if>
	
	
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
<c:if test="${not empty forms}">
<c:forEach items="${forms}" var="form">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
    	 <div class="well profile">
            <div class="col-sm-12">
                <div class="col-xs-12 col-sm-8">
                    <h2>${form.name}</h2>
                    <p><strong>Form Id: </strong>${form.id} </p>
                    <p><strong>Description: </strong> ${form.description} </p>
                    <p><strong>Form Availability </strong>${form.available}</p>
            		<p><strong>Created On </strong>${form.createDate }</p>
            		<c:choose>
				    <c:when test="${fn:length(form.pages)-1< 0}">
				       <p><strong># of Pages </strong>${fn:length(form.pages)}</p>
				       
				    </c:when>    
				    <c:otherwise>
				        <p><strong># of Pages </strong>${fn:length(form.pages)-1}</p>
				    </c:otherwise>
				</c:choose>
				            		
                </div>             
     
            </div>            
            <div class="col-xs-12 divider text-center">
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong>  </strong></h2>                    
                    <p><small></small></p>
                    <a href="view/${form.id}.html"><button class="btn btn-success btn-block"><span class="fa fa-edit"></span> View </button></a>
                </div>
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong></strong></h2>                    
                    <p><small></small></p>
                    <a href="edit/${form.id}.html"><button class="btn btn-info btn-block"><span class="fa fa-plus-circle"></span> Edit </button></a>
                </div>
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong></strong></h2>                    
                    <p><small></small></p>
                    <a href="remove/${form.id}.html"><button type="button" class="btn btn-warning btn-block"><span class="glyphicon glyphicon-remove"></span> Remove </button></a>
                    
                </div>
            </div>
    	 </div>                 
		</div>
	</div>
</c:forEach>
</c:if>
</body>
</html>