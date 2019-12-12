<!-- Set up tag library reference! prefix, 'c' means core tag! -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	// set up sample data.
	String[] cities = {"Seoul", "London", "New York", "Washington DC", "Paris"};
	pageContext.setAttribute("myCities", cities);
%>
<html>
<body>
	<h4>The List of Capital:</h4>
	<ul>
	<c:forEach var="aCity" items="${myCities}">
		<li>${aCity}</li>
	</c:forEach>
	</ul>
</body>
</html>