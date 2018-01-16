<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<body>
	<div>
		<div>
			<h1>Spring Boot JSP Example</h1>
			<h2>Hello ${user}</h2>
			<ul>
				<c:forEach var="listValue" items="${user}">
					<li>${listValue}</li>
				</c:forEach>
			</ul>
			
			Click on this <strong><a href="next">link</a></strong> to visit another page.
		</div>
	</div>
</body>
</html>
