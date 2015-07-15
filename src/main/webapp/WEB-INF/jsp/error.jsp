<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />    
<link href="<c:url value="/css/general.css" />" rel="stylesheet"  type="text/css" />
<title>Agregar Stock</title>
</head>
<body>
<div class="container">
	<header>
				<ul class="nav nav-pills">
					  <li role="presentation" class="active"><a href="/supermercado">Home</a></li>
					  <li role="presentation"><a href="/supermercado/agregarProducto">Agregar productos</a></li>
					  <li role="presentation"><a href="/supermercado/stock">listar stock</a></li>
					  <li role="presentation"><a href="/supermercado/agregarStock">Agregar stock</a></li>
	 			  	  <li role="presentation"><a href="/supermercado/carrito">Carrito</a></li>
				</ul>
	</header>
</div>
<div class="container">
	<div class="panel panel-default">
		<div class="panel-header">
			
			<h1>Bienvenidos a "EL" supermercado</h1>
		</div>
	</div>
	<div class="panel-body">
		<h2>Se ha producido un error</h2>		
	</div>
	<a href="/supermercado">Inicio</a>
</div>
</body>
</html>		
		
		
		
		