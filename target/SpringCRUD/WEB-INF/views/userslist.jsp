<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.min.css' />" rel="stylesheet"/>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"/>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Users </span></div>
			<table class="table table-hover" style="text-align: center">
	    		<thead>
		      		<tr>
				        <th style="text-align: center">Firstname</th>
				        <th style="text-align: center">Lastname</th>
				        <th style="text-align: center">Email</th>
				        <th style="text-align: center">SSO ID</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<th style="text-align: center">Action</th>
				        </sec:authorize>
				        <%--<sec:authorize access="hasRole('ADMIN')">--%>
							<%--<th style="text-align: center">Action</th>--%>
				        <%--</sec:authorize>--%>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.ssoId}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">Edit</a>				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">Delete</a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
   	</div>
</body>
</html>