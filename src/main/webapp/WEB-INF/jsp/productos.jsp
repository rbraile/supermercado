<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<script src="<c:url value="/js/general.js" />"></script>
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
		<h1>Bienvenidos a "EL" supermercado</h1>
	</header>
	</div>
	<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
	    		<div class="panel-header"><h3>Esta es la lista de nuestros productos</h3></div>
					<div class="panel-body">	
						<span class="badge">Productos <span class="productos-total">${cantiadProductos}</span></span>
						<ul class="list-group productos">
							<c:forEach items="${productos}" var="producto">
							    <li class="list-group-item">
						    		${producto.key.nombre}
						    		<span class="badge">$ ${producto.key.precio}</span>
								    <a class="btn btn-default btn-lg agregarProducto" href="/supermercado/agregarACarrito/${producto.key.nombre}">+ Agregar</a>
						    	</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
	<div class="col-md-6">
		<div class="panel panel-default hide descuento">
			<div class="panel-header">
				<h3>Agregar descuento</h3>	
			</div>
			<div class="panel-body">	
					<form:form action="/agregarDescuento" method="POST" modelAttribute="AltaDescuento" 
					commandName="altaDescuento">
						<form:select path="tipo" class="form-control">
							<form:option value="monto">
								Monto
							</form:option>
							<form:option value="porcentaje">
								Porcentaje
							</form:option>
						</form:select>
						<form:label path="monto">Monto</form:label>
						<form:input type="number" path="monto" class="form-control" />
						
						<button id="acceptButton" title="+ Descuento" type="submit"  class="btn btn-default">
							enviar datos
						</button>
					</form:form>
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
				</div>		
			</div>
		</div>
	</div>
</div>


</body>
</html>