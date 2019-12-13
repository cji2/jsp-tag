<!-- Set up tag library reference! prefix, 'fn' means function tag! -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
	<c:set var="data" value="functionTag" />
	Length of the string <b>${data}</b>: ${fn:length(data)}
	<hr/>
	Upper case version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
	<hr/>
	Does the string <b>${data}</b> start with <b>fun</b>?: ${fn:startsWith(data, "fun")}
</body>
</html>