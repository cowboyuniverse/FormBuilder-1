<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:url value="/" var="docroot" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

.form-box {
padding: 15px;
cursor: pointer;
overflow: hidden;
background: #FFF;
border: 1px solid #CACACA;
}
</style>
</head>
<body>
	<%-- 	<h1>Add New Form</h1>
	<form name="addform" method="post">
		Form Name: <input type="text" name="name" /> <br /> Form Description:
		<input type="text" name="description" /> <br /> Available: <input
			type="checkbox" name="available" value="available" checked="checked" />Available
		<br /> <input type="submit" name="add" value="Add" />
	</form> --%>

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
	
	<div class="block-box">

		<form modelAttribute="form" action="${docroot}form/add_item.html" method="post">
			<div class="form-group">
				<h1>Add Item</h1>
				Do you have a text item or selection item?<br/>
				<input type="radio" name="itemtype" value="text"/>Text
				<input type="radio" name="itemtype" value="selection"/> Selection
				<br/>
				
				<input type="submit" class="btn btn-info" name="chooseitem" value="Send" />
			</div>
		</form>

		</div>
	</div>



</body>
</html>