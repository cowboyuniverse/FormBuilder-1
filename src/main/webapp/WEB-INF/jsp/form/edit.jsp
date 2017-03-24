<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
<form:form modelAttribute="form">
<h1>Edit Form</h1>
	<div class="row form-group">
            <label for="name" class="col-md-2 control-label">Form Name </label>

            <div class="col-md-5">
                <form:input path="name"/>
            </div>
    </div>
    <div class="row form-group">
            <label for="description" class="col-md-2 control-label">Form Description </label>

            <div class="col-md-5">
                <form:input path="description"/>
            </div>
    </div>
    <div class="row form-group">
    	<label for="available" class="col-md-2 control-label">Available </label>
    	<form:radiobutton path="available" value="true" label="Available" /> 
        <form:radiobutton path="available" value="false" label="Unavailable" />
	</div>
    <div class="row form-group">
    	<label for="available" class="col-md-2 control-label">User </label>
    	<div class="col-md-5">
        	<a href="user/view/${form.user.id}.html">${form.user.id}</a>
        </div>
	</div>
	<div class="row form-group">
            <label for="description" class="col-md-2 control-label">Page Number </label>

            <div class="col-md-5">
                <c:forEach begin="1" end="${fn:length(form.pages)}" varStatus="loop">
					<a href="${docroot}form/page_view.html?id=${form.id}&p=${loop.index}">${loop.index}</a>
				</c:forEach>
            </div>
    </div>
    <input type="submit" name="edit" value="Save Changes" /> 
</form:form>
</div>      
</body>
</html>