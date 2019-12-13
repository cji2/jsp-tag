<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<style>
			th, td {
				padding: 5px 20px;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<c:set var="data" value="Seoul, Tokyo, New York, London, Paris" />
		<h3>Split Function Tag</h3>
		
		<c:set var="cities" value="${fn:split(data, ',')}" />
		
		<table border="1">
			<tr>
				<th>Cities</th>
			</tr>
			<c:forEach var="aCity" items="${cities}" >
				<tr>
					<td>${aCity}</td>
				</tr>
			</c:forEach>
		</table>
		
		<h3>Join Function Tag</h3>
		<c:set var="rejoin" value="${fn:join(cities, '/')}" />
		<b>result of rejoining: ${rejoin}</b>
	</body>
</html>