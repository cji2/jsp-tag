<!-- Set up tag library reference! prefix, 'c' means core tag! -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--  import java.util & Student class -->
<%@ page import="java.util.*, edu.gmu.jsp.tagdemo.Student" %>

<%
	// set up sample data.
	List<Student> data = new ArrayList<>();

	data.add(new Student("David", "Ji", true));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "Lee", true));

	pageContext.setAttribute("myStudents", data);
%>
<html>
<head>
	<style>
		th, td {
			padding: 10px;
			text-align: center;
		}
	</style>
</head>
<body>
	<h2>List of Students</h2>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Scholarship</th>
		</tr>
		<c:forEach var="aStudent" items="${myStudents}">
			<tr>
				<td>${aStudent.getFirstName()}</td>
				<td>${aStudent.getLastName()}</td>
				<td>${aStudent.isScholarship()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>