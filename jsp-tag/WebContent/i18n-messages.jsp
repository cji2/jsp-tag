<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<body>
	<c:set 
		var="theLocale" 
		value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" 
		scope="session" 
	/>
	<!-- Setting Locale JSTL function: setLocale -->
	<fmt:setLocale value="${theLocale}" />
	<fmt:setBundle basename="edu.gmu.jsp.tagdemo.i18n.resources.thelabels" />
	
	<a href="i18n-messages.jsp?theLocale=en_US">English (US)</a>
	 | 
	<a href="i18n-messages.jsp?theLocale=es_ES">Spanish (ES)</a>
	 |
	<a href="i18n-messages.jsp?theLocale=de_DE">German (DE)</a>
	<hr/>
	<!-- Messaging JSTL function: message  
	The following key's value will be given by resource files:
		1) thelabels.properties
		2) thelabels_es_ES.properties
		3) thelabels_de_DE.properties    -->
	<fmt:message key="label.greeting" /> <br/><br/>
	<fmt:message key="label.firstname" /> <b><i>David</i></b><br/>
	<fmt:message key="label.lastname" /> <b><i>Ji</i></b><br/><br/>
	<fmt:message key="label.welcome" /> <br/>
	<hr/>
	<h5>Selected Locale: ${theLocale}</h5>
</body>
</html>