<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Show</title>
		<link rel="stylesheet" type="text/css" href="./css/styles.css">
	</head>
	<body>
		<main>
		    <nav>
			    <a href="/languages">Dashboard</a>
			</nav>
			<h1><c:out value="${language.name}"/></h1>
			<p>Description: <c:out value="${language.creator}"/></p>
			<p>Version: <c:out value="${language.version}"/></p>
			<div class="div">
				<a href="/languages/edit/${language.id}">edit</a>
				<form action="/${language.id}" method="POST">
				    <input type="hidden" name="_method" value="delete">
				    <input type="submit" value="delete">
				</form>
			</div>
		</main>
	</body>
</html>