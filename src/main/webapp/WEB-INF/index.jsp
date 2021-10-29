<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="./css/styles.css">
	</head>
	<body>
		<main>
			<h1>All Languages</h1>
			<table>
			    <thead>
			        <tr>
			            <th>Name</th>
			            <th>Creator</th>
			            <th>Version</th>
			            <th>Actions</th>
			        </tr>
			    </thead>
			    <tbody>
			        <c:forEach var="element" items="${languageList}">
			        <tr>
			            <td><a href="/${ element.id }">${ element.getName() }</a></td>
			            <td><c:out value="${element.getCreator()}"/></td>
			            <td><c:out value="${element.getVersion()}"/></td>
			            <td class="actions">
			            <a href="/languages/edit/${element.getId()}">edit</a>
			            <form action="/${element.getId()}" method="POST">
						    <input type="hidden" name="_method" value="delete">
						    <input type="submit" value="delete">
						</form>
			            </td>
			        </tr>
			        </c:forEach>
			    </tbody>
			</table>
			<div>
				<form:form action="/languages" method="post" modelAttribute="language">
			    <p>
			        <form:label path="name">name</form:label>
			        <form:errors path="name"/>
			        <form:input path="name"/>
			    </p>
			    <p>
			        <form:label path="creator">Creator</form:label>
			        <form:errors path="creator"/>
			        <form:input path="creator"/>
			    </p>
			    <p>
			        <form:label path="version">Version</form:label>
			        <form:errors path="version"/>
			        <form:input path="version"/>
			    </p>   
			    <input class="bSummit" type="submit" value="Submit"/>
			</form:form>    
			</div>
		</main>
	</body>
</html>