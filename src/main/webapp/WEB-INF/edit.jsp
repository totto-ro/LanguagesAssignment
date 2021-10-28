<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Edit</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
		<main>
			<nav>
			    <a href="/languages/delete/${element.id}">delete</a>
			    <a href="/languages">Dashboard</a>
			</nav>
			<div>
				<form:form action="/languages" method="post" modelAttribute="language">
				<input type="hidden" name="_method" value="put">
			    <p>
			        <form:label path="name">name</form:label>
			        <form:errors path="name"/>
			        <form:input path="name"/>
			    </p>
			    <p>
			        <form:label path="creator">Creator</form:label>
			        <form:errors path="creator"/>
			        <form:textarea path="creator"/>
			    </p>
			    <p>
			        <form:label path="version">Version</form:label>
			        <form:errors path="version"/>
			        <form:input path="version"/>
			    </p>   
			    <input type="submit" value="Submit"/>
			</form:form>    
			</div>
		</main>
	
	</body>
</html>