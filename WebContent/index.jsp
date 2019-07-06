<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Customer Sign Up</title>

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

.form-row input {
  flex: 1;
  
}



</style>
</head>
<body>
	<h1>Customer Sign Up</h1>

	<c:if test="${violations != null}">
		<c:forEach items="${violations}" var="violation">
			<p>${violation}.</p>
		</c:forEach>
	</c:if>

	<div class="container">
		<form action="${pageContext.request.contextPath}/processcustomer"
			method="post">

			<div class="form-row">
				<label for="firstname">First Name : </label> <input type="text"
					name="firstname" id="firstname" value="${firstname}">
			</div>
			<div class="form-row">
				<label for="lastname">Last Name:</label> <input type="text"
					name="lastname" id="lastname" value="${lastname}">
			</div>
			<div class="form-row">
				<label for="email">Email: </label> <input type="text" name="email"
					id="email" value="${email}">
			</div>
			<div>
				<input type="submit" name="signup" value="Sign Up">
			</div>

		</form>
	</div>
</body>
</html>