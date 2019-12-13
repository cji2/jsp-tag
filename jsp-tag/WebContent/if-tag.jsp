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
			<!-- we can use aStudent.firstName since JSP automatically calls getter! -->
			<td>${aStudent.getFirstName()}</td>
			<td>${aStudent.getLastName()}</td>
			<td> 
				<!--  we may use aStudent.scholarship, rather than isScholarship(),
				since the getter method will automatically be called by JSP. -->
				<c:if test="${aStudent.isScholarship()}" >
					Special Opportunity!
				</c:if>
				<!--  if-tag doesn't support else statement! -->
				<c:if test="${not aStudent.isScholarship()}" >
					N/A
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>