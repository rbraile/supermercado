<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />    
<link href="<c:url value="/css/bootstrap-responsive.css" />" rel="stylesheet"  type="text/css" />
<title>Ejemplo SpringMVC</title>
</head>
<body>
<div class="container">
	<div class="panel panel-default">
		<div class="panel-header">
		<ul class="nav nav-pills">
		  <li role="presentation" class="active"><a href="/">Home</a></li>
		  <li role="presentation"><a href="agregarProducto">Agregar productos</a></li>
		  <li role="presentation"><a href="stock">listar stock</a></li>
		  <li role="presentation"><a href="agregarStock">Agregar stock</a></li>
		</ul>
<h1>Formulario para ingreso de stock de productos</h1>

<form:form action="/agregar-stock" method="POST" modelAttribute="Stock" commandName="stock">
	<form:label path="nombre">
		Ingrese nombre
	</form:label>
	<form:input path="nombre"></form:input>
	<br />
	
	<form:label path="precio">
		Ingrese precio
	</form:label>
	<form:input path="precio"></form:input>
	<br />
		
	<button id="acceptButton" title="enviar" type="submit">
		enviar datos
	</button>
</form:form>

<form>
	
</form>


</body>
</html>