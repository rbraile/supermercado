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
	<div class="panel panel-default">
		<div class="panel-header">
			<ul class="nav nav-pills">
				  <li role="presentation" class="active"><a href="/supermercado">Home</a></li>
				  <li role="presentation"><a href="/supermercado/agregarProducto">Agregar productos</a></li>
				  <li role="presentation"><a href="/supermercado/stock">listar stock</a></li>
				  <li role="presentation"><a href="/supermercado/agregarStock">Agregar stock</a></li>
 			  	  <li role="presentation"><a href="/supermercado/carrito">Carrito</a></li>
			</ul>
			<h1>Bienvenidos a "EL" supermercado</h1>
		</div>
	</div>
	<div class="panel-body">
		<h2>Esta es la lista de nuestros productos</h2>
		<p>${cantiadProductos}</p>
		<ul>
			<c:forEach items="${productos}" var="producto">
			    <li class="contenedor-cant">
			    	<p>
			    		${producto.key.nombre}
			    	    ${producto.key.precio}
					    <a class="btn btn-default btn-lg agregarProducto" href="/supermercado/agregarACarrito/${producto.key.nombre}">+ Agregar</a>
				   </p>
		    	</li>
			</c:forEach>
		</ul>
		<div class="panel panel-default">
		<h2>Agregar descuento</h2>		
		<form:form action="/agregarDescuento" method="POST" modelAttribute="AltaDescuento" 
		commandName="altaDescuento">
			<form:select path="tipo">
				<form:option value="monto">
					Monto
				</form:option>
				<form:option value="porcentaje">
					Porcentaje
				</form:option>
			</form:select>
			<form:select path="monto">
				<form:option value="monto">
					1
				</form:option>
				<form:option value="porcentaje">
					2
				</form:option>
				<form:option value="monto">
					3
				</form:option>
				<form:option value="porcentaje">
					4
				</form:option>
				<form:option value="monto">
					5
				</form:option>
				<form:option value="porcentaje">
					6
				</form:option>
				<form:option value="monto">
					7
				</form:option>
				<form:option value="porcentaje">
					8
				</form:option>
			</form:select>
			
			<button id="acceptButton" title="+ Descuento" type="submit">
				enviar datos
			</button>
		</form:form>
		</div>
		
	</div>
</div>


</body>
</html>