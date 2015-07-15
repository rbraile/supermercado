<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="tallerweb.supermercado.modelo.Carrito" %>
<%@ page import="java.util.LinkedList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />
<title>Ejemplo SpringMVC</title>
</head>
<body>
<div class="container">
	<header>
		<ul class="nav nav-pills">
			<li role="presentation"><a href="/supermercado">Home</a></li>
			<li role="presentation"><a href="/supermercado/agregarProducto">Agregar productos</a></li>
			<li role="presentation"><a href="/supermercado/stock">listar stock</a></li>
			<li role="presentation"><a href="/supermercado/agregarStock">Agregar stock</a></li>
			<li role="presentation" class="active"><a href="/supermercado/carrito">Carrito</a></li>
		</ul>
	</header>
</div>
<div class="container">
	<h1>Bienvenidos a "EL" supermercado</h1>
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
			<div class="panel-header"><h3>Tu carrito:</h3></div>	
				<div class="panel-body">
					<table class="table table-striped">
						<tr>
						<th>Producto</th>
						<th>Cantidad</th>
						</tr>
						<c:forEach items="${productos}" var="producto">
						   	 <tr>
						    	<td>${producto.nombre}</td>
						    	<td> $ ${producto.precio}</td>					
					    	</tr>
						</c:forEach>
					</table>
				</div>	
			</div>
		</div>
		<div class="col-md-6">
			<table class="table table-striped">
				<tr>
					<th>Total sin  descuentos</th>
					<th>Total de descuentos</th>
					<th>Total con descuentos</th>
				</tr>
				<tr>
					<td>$ ${total}</td>
					<td>$ ${totalDescuentos}</td>
					<td>$ ${totaConlDescuentos}</td>
				</tr>
			</table>
			<div>
				<a class="btn" href="/supermercado/cancelar">Cancelar</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>