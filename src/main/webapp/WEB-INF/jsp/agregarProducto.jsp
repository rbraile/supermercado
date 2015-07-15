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
<title>Agregar Producto</title>
</head>
<body>
<div class="container">
	<header>
		<ul class="nav nav-pills">
			<li role="presentation"><a href="/supermercado">Home</a></li>
			<li role="presentation" class="active"><a href="/supermercado/agregarProducto">Agregar productos</a></li>
			<li role="presentation"><a href="/supermercado/stock">listar stock</a></li>
			<li role="presentation"><a href="/supermercado/agregarStock">Agregar stock</a></li>
			<li role="presentation"><a href="/supermercado/carrito">Carrito</a></li>
		</ul>
		<h1 class="titulo">Agregado de productos</h1>
	</header>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default agregar-producto">
				<div class="panel-header">
					<h3>Formulario para ingreso de productos</h3>
                    <div class="hide error alert alert-danger" role="alert">
                        <p>Este usuario no existe o no tiene hogar relacionado verifique sus datos</p>
                    </div>
				</div>	
				<div class="panel-body">
					<form:form id="agregarp" action="/agregar" method="POST" modelAttribute="AltaProducto" commandName="altaProducto">
						<form:label path="nombre" class="form-label">
							Ingrese nombre
						</form:label>
						<form:input min="2" path="nombre" class="form-control"></form:input>
						<br />
						
						<form:label path="precio" class="form-label">
							Ingrese precio
						</form:label>
						<form:input min="1" type="number" path="precio" class="form-control"></form:input>
						<br />
							
						<button id="acceptButton" title="enviar" type="submit" disabled>
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