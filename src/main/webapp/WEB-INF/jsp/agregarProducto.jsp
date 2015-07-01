<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Agregar Producto</title>
</head>
<body>
<h1>Formulario para ingreso de productos</h1>
<form:form action="/agregar" method="POST" modelAttribute="Producto" commandName="producto">
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