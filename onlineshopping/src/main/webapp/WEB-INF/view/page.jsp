<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shooping - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap-theme.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

<script>
	window.menu = '${title}';
</script>

</head>

<body>
<div class='wrapper'>
		<!-- Navigation -->
		<%@ include file="./shared/navbar.jsp"%>
		<div class='section'>
			<!-- Page Content -->
		
			<c:if test="${UserCheckHomePage ==true}">
				<%@ include file="home.jsp"%>
			</c:if>

			<c:if test="${UserCheckAbout ==true}">
				<%@ include file="aboutus.jsp"%>
			</c:if>

			<c:if test="${UserCheckAllProducts ==true}">
				<%@ include file="list-products.jsp"%>
			</c:if>

			<c:if test="${UserCheckContact ==true}">
				<%@ include file="contact.jsp"%>
			</c:if>
			<!-- /.container -->
		</div>
		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
