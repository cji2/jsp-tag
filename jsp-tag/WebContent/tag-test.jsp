<!-- Set up tag library reference! prefix, 'c' means core tag! -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
	<!-- "stuff" is a variable name, which value is assigned by java.util.Date() -->
	<c:set var="stuff" value="<%= new java.util.Date() %>" />
	
	<p>Time on the server is ${stuff}</p>
</body>
</html>