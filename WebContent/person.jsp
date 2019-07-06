<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Person</title>

<style>

html, body {
  padding: 0;
  margin: 0;
}

input {
  font-size: 14px;
  font-family: Helvetica, sans-serif;
}

body {
  background-color: #BBB;
  font-family: Helvetica, sans-serif;
  padding-bottom: 100px;
}

h2, h3 {
  margin: 0 0 .75em 0;
}

/* first example */
.container {
  max-width: 750px;
  margin: 20px auto 0 auto;
  padding: 30px;
  background-color: #FFF;
}

.form-row {
  padding: 10px 0;
  display: flex;
}

.form-row label {
  padding-right: 10px;
}

.form-row input, .form-row select {
  flex: 1;
  
}

</style>
</head>
<body>
  <h1>Person JSP</h1>

<div class="container">
     
         <c:if test="${violations != null}">
		<c:forEach items="${violations}" var="violation">
			<p>${violation.getMessage()}.</p>
		</c:forEach>
	</c:if>
     
     
		<form action="${pageContext.request.contextPath}/person"
			method="post">

			<div class="form-row">
				<label for="firstname">First Name : </label> <input type="text"
					name="firstname" id="firstname" >
			</div>
			<div class="form-row">
				<label for="lastname">Last Name:</label> <input type="text"
					name="lastname" id="lastname" >
			</div>
			<div class="form-row">
				<label for="email">Email: </label> <input type="text" name="email"
					id="email" >
			</div>
			<!-- <div class="form-row">
				<label for="email">Items: </label> 
				 <select  name="items" multiple> 
				 <option> Laptop </option>
				 <option> Mobile </option>
				 <option> Bike </option>
				 
				 </select>
			</div> -->
			<div>
				<input type="submit" name="signup" value="Sign Up">
			</div>

		</form>
	</div>
</body>
</html>
</body>
</html>