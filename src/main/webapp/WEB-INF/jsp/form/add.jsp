<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	
	<div class="form-box">

		<form:form modelAttribute="form">
			<div class="form-group">

				Form name:
				<form:input path="name" />
				<form:errors path="name" />
				<br /> Description:
				<form:input path="description" />
				<form:errors path="description" />
				<br /> <input type="checkbox" name="available" value="available"
					checked="checked" />Available <br /> <input type="submit"
					class="btn btn-info" name="add" value="Add Form" />
			</div>
		</form:form>

		</div>
	</div>

<div class="row">
  		<div class="col-sm-10"><h1>Add Form Information</h1></div>
  	 </div>
<div class="panel-body">
				 <form:form  modelAttribute="form" class="form-horizontal" >
	<!-- 			<fieldset>
                          <div class="col-xs-8">
                             <label for="role"><h4>ADMIN, STAFF, USER <br/></h4></label> 
                             <form:select path="role" > <br/>
                              <c:forEach items="${role}" var="role">
                              <form:option value="${role}"></form:option>
                              </c:forEach>
                             </form:select> <br /> 
                          </div>
                      <br><br>
                    </fieldset>
-->
					<fieldset>
							<label for="name" class="col-xs-2 control-label">Form Name</label>
							<div class="col-xs-3">
								<input type="text" class="form-control" id="name"
									name="name" value="${form.name}" >
							</div>
					</fieldset>
					<fieldset>
							<label for="description" class="col-xs-2 control-label">Description</label>
							<div class="col-xs-3">
								<input type="text" class="form-control" id="description"
									name="description" value="${form.description}" >
							</div>
					</fieldset>
					<fieldset>
							<label for="email" class="col-xs-2 control-label">Email</label>
							<div class="col-xs-3">
								<input type="email" name="email" class="form-control" id="email"
									placeholder="email" value="${user.email }">
							</div>
					</fieldset>
					<fieldset>
							<label for="address1" class="col-xs-2 control-label">Street Address</label>
							<div class="col-xs-3">
								<input type="text" name="address1" class="form-control"
									id="address1" placeholder="Street Address" value="${user.address.address1}">
							</div>
					</fieldset>
					<fieldset>
							<label for="address2" class="col-xs-2 control-label">Address 2 (Apt, Suite, etc.)</label>
							<div class="col-xs-3">
								<input type="text" name="address2" class="form-control"
									id="address2" placeholder="Street" value="${user.address.address2}">
							</div>
					</fieldset>
					<fieldset>
							<label for="city" class="col-xs-2 control-label">City</label>
							<div class="col-xs-3">
								<input type="text" name="city" class="form-control" id="city"
									placeholder="City" value="${user.address.city }">
							</div>
					</fieldset>
					<fieldset>
							<label for="state" class="col-xs-2 control-label">State</label>
							<div class="col-xs-3">
								<input type="text" name="state" class="form-control" id="state"
									placeholder="State" value="${user.address.state }">
							</div>
					</fieldset>
					<fieldset>
							<label for="zip" class="col-xs-2 control-label">Zip</label>
							<div class="col-xs-3">
								<input type="text" name="zip" class="form-control" id="zip"
									placeholder="Zip code" value="${user.address.zip }">
							</div>
					</fieldset>
					<fieldset>
							<label for="zip" class="col-xs-2 control-label">Country</label>
							<div class="col-xs-3">
								<input type="text" name="country" class="form-control" id="country"
									placeholder="Country" value="${user.address.country }">
							</div>
					</fieldset>
					<fieldset>
							<label for="phoneHome" class="col-xs-2 control-label">Home Phone Number</label>
							<div class="col-xs-3">
								<input type="text" name="phoneHome" class="form-control" id="phoneHome"
									placeholder="Home Phone" value="${user.address.phoneHome }">
							</div>
					</fieldset>
					<fieldset>
							<label for="phoneWork" class="col-xs-2 control-label">Work Phone Number</label>
							<div class="col-xs-3">
								<input type="text" name="phoneWork" class="form-control" id="phoneWork"
									placeholder="Work Phone" value="${user.address.phoneWork }">
							</div>
					</fieldset>
					<fieldset>
							<label for="phoneCell" class="col-xs-2 control-label">Mobile Phone Number</label>
							<div class="col-xs-3">
								<input type="text" name="phoneCell" class="form-control" id="phoneCell"
									placeholder="Mobile Phone" value="${user.address.phoneCell }">
							</div>
					<br><br><br>
					<div class="col-sm-4 col-sm-offset-1">
								<button type="submit" class="btn btn-primary btn-block">Save</button>
					</div>
			</form:form>
			</div>




</body>
</html>