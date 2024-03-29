<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<spring:url value="/resources/css/test.css" var="testCss" />
<link href="${testCss}" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<title>Course Registration</title>
</head>

<body>
	
	<div id="testheader">
		<div class="container">
			<div class=row>
				<div class="col-md-5 ">
					<a href="/StudentManagementSpringMVC/menu"><h3>Student Registration</h3></a>
				</div>
				<div class="col-md-6">
					<p>User: ${userInfo.userid} ${userInfo.username}</p>
					<p>Current Date : ${date}</p>
				</div>
				<div class="col-md-1">
					<input type="button" class="btn-basic" id="lgnout-button"
						value="Log Out"
						onclick="location.href='/StudentManagementSpringMVC/logout'">
				</div>
			</div>
		</div>

	</div>
	<!-- <div id="testsidebar">Hello World </div> -->
	<div class="container">
		<div class="sidenav">

			<button class="dropdown-btn">
				Class Management <i class="fa fa-caret-down"></i>
			</button>

			<div class="dropdown-container">
				<a href="/StudentManagementSpringMVC/setupaddclass">Course Registration</a> 
				<a href="/StudentManagementSpringMVC/setupaddstudent">Student Registration </a> 
				<a href="/StudentManagementSpringMVC/setupstudentsearch">Student Search </a>
			</div>
			<a href="/StudentManagementSpringMVC/setupusersearch">Users Management</a>
		</div>
		<div class="main_contents">
			<div id="sub_content">
				<form:form action="/StudentManagementSpringMVC/addclass" method="post" modelAttribute="cbean">
					<div style="color: red;">
						<h2 class="col-md-6 offset-md-2 mb-5 mt-4">${error}</h2>
					</div>
					<div style="color: red;">
						<h2 class="col-md-6 offset-md-2 mb-5 mt-4">${fail}</h2>
					</div>
					<div style="color: blue;">
						<h2 class="col-md-6 offset-md-2 mb-5 mt-4">${success}</h2>
					</div>
					<h2 class="col-md-6 offset-md-2 mb-5 mt-4">Course Registration</h2>
					<div class="row mb-4">
						<div class="col-md-2"></div>

						<form:label path="classid" class="col-md-2 col-form-label"> ID</form:label>
						
						<div class="col-md-4">
							
							<form:input type="text" class="form-control" id="id" path  ="classid"/>
						</div>
					</div> 

					<div class="row mb-4">
						<div class="col-md-2"></div>
						<form:label path="classname" class="col-md-2 col-form-label">Name</form:label>
						<div class="col-md-4">
						<form:input type="text" class="form-control" id="name" path="classname"/>
						</div>
					</div>


					<div class="row mb-4">
						<div class="col-md-4"></div>

						
						<div class="col-md-6">
							<a href="/StudentManagementSpringMVC/setupaddclass">
								<button type="button" class="btn btn-danger ">Reset </button>
							</a>
							<button type="submit" class="btn btn-secondary col-md-2"
								data-bs-toggle="modal" data-bs-target="#exampleModal">Add</button>

						</div>
					</div>
					<!-- added -->
				</form:form>
			</div>
		</div>
	</div>
	<div id="testfooter">
		<span>Copyright &#169; ACE Inspiration 2022</span>
	</div>
	<script>
		/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
</body>

</html>