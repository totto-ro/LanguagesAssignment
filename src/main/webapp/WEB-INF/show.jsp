<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Show</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
		<main>
		    <nav>
			    <a href="/languages">Dashboard</a>
			</nav>
			<h1><c:out value="${language.name}"/></h1>
			<p>Description: <c:out value="${language.creator}"/></p>
			<p>Language: <c:out value="${book.version}"/></p>
			<a href="/languages/edit/${element.id}">edit</a>
			<form action="/${language.id}" method="POST">
			    <input type="hidden" name="_method" value="delete">
			    <input type="submit" value="Delete">
			</form>
		</main>
	</body>
</html>