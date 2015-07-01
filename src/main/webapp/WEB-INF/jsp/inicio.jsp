<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="tallerweb.supermercado.modelo.Carrito" %>
<%@ page import="java.util.LinkedList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />    
<link href="<c:url value="/css/bootstrap-responsive.css" />" rel="stylesheet"  type="text/css" />
<title>Inicio</title>
</head>
<body>
<div class="container">
	<div class="panel panel-default">
	<div class="panel-header"> header</div>
		<div class="panel-body">
			<c:forEach items="${carrito.verProductos()}" var="carrito">
			    <tr>
			    	<td>${carrito.verProductos}</td>
			    	<td> ${carrito.apellido}</td>
			    	<td> ${carrito.edad}</td>
			    	<td> ${carrito.email}</td>
		    	</tr>
			</c:forEach>
		</div>
	</div>	
</div>
</body>
</html>