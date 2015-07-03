<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />    
<link href="<c:url value="/css/bootstrap-responsive.css" />" rel="stylesheet"  type="text/css" />
<title>Agregar Stock</title>
</head>
<body>
<div class="container">
	<div class="panel panel-default">
		<div class="panel-header">
			<ul class="nav nav-pills">
				  <li role="presentation"><a href="/supermercado">Home</a></li>
				  <li role="presentation"><a href="agregarProducto">Agregar productos</a></li>
				  <li role="presentation"><a href="stock">listar stock</a></li>
				  <li role="presentation" class="active"><a href="agregarStock">Agregar stock</a></li>
				  <li role="presentation"><a href="carrito">Carrito</a></li>
			</ul>
			<h1>Formulario para ingreso de stock de productos</h1>
		</div>
	</div>
	<div class="panel">	
		<form:form action="/agregarStockForm" method="POST" modelAttribute="AltaStockCommand" 
		commandName="altaStockCommand">
		
			<form:label path="nombre">
				Ingrese nombre del producto
			</form:label>
			<form:input path="nombre"></form:input>
			<br />
			
			<form:label path="cantidad">
				Ingrese cantidad
			</form:label>
			<form:input path="cantidad"></form:input>
			<br />
				
			<button id="acceptButton" title="enviar" type="submit">
				enviar datos
			</button>
		</form:form>
	</div>
</div>
</body>
</html>