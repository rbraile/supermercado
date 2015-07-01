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
<link href="<c:url value="/css/bootstrap-responsive.css" />" rel="stylesheet"  type="text/css" />
<title>Ejemplo SpringMVC</title>
</head>
<body>
<div class="container">
	<div class="panel panel-default">
		<div class="panel-header">
		<ul class="nav nav-pills">
		  <li role="presentation" class="active"><a href="#">Home</a></li>
		  <li role="presentation"><a href="agregarProducto">Agregar productos</a></li>
		  <li role="presentation"><a href="stock">listar stock</a></li>
		  <li role="presentation"><a href="agregarStock">Agregar stock</a></li>
		</ul>
			<h1>Bienvenidos a "EL" supermercado</h1>
		</div>
		<div class="panel-body">
			<h2>Esta es la lista de nuestros productos</h2>
			<table>
				<c:forEach items="${productos}" var="producto">
				    <tr>
				    	<td>${producto.nombre}</td>
						<td> - </td>
				    	<td>${producto.precio}</td>
			    	</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>


</body>
</html>