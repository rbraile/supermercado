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
			  <li role="presentation"><a href="/supermercado">Home</a></li>
			  <li role="presentation"><a href="/supermercado/agregarProducto">Agregar productos</a></li>
			  <li role="presentation"><a href="/supermercado/stock">listar stock</a></li>
			  <li role="presentation" class="active"><a href="/supermercado/agregarStock">Agregar stock</a></li>
			  <li role="presentation"><a href="/supermercado/carrito">Carrito</a></li>
		</ul>
		<h1>Formulario para ingreso de stock de productos</h1>
	</header>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
			<div class="panel-header">	
				<h3>Formulario para ingreso de stock de productos</h3>	  			
			</div>
		<div class="panel-body">	
			<form:form action="/agregarStockForm" method="POST" modelAttribute="AltaStockCommand" 
			commandName="altaStockCommand">
				<form:label path="nombre" class="form-label">
					seleccione nombre del producto
				</form:label>
				<form:select path="nombre" class="form-control">
					<c:forEach items="${productos}" var="producto">
			    		<form:option value="${producto.key.nombre}">
			    			${producto.key.nombre}
			    		</form:option>
					</c:forEach>
				</form:select>
				<br />
				<form:label path="cantidad" class="form-label">
					Ingrese cantidad
				</form:label>
				<form:input  min="1" type="number" path="cantidad" class="form-control"></form:input>
				<br />
					
				<button id="acceptButton" title="enviar" type="submit" class="btn btn-default">
					enviar datos
				</button>
			</form:form>
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>