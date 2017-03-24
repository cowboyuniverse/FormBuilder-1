<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="docroot" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Item View</title>
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


<h1>Item View</h1>

<c:choose>
  <c:when test="${item.itemType=='CHECKBOX' and item.minRequirements==0}">
  ${item.name}  ${item.description}
  <input type="checkbox" value="${item.id}"/>
  </c:when>
</c:choose>
<br/>
<c:choose>
  <c:when test="${item.required==true}">Required</c:when>
  <c:otherwise>Not required</c:otherwise>
</c:choose>
<br/>
<c:choose>
  <c:when test="${item.available==true}">Available</c:when>
  <c:otherwise>Unavailable</c:otherwise>
</c:choose>

</body>
</html>