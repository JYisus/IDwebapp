<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays,java.util.List,java.util.ArrayList"%>
<html>
  <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title>Home Page</title>
  </head>
<body>
<div id="content">
<h1>Sistema de Gestión</h1>

<p>Hola <%= request.getUserPrincipal().getName() %>; este es el menu de la aplicación:</p>
<p>

<%
List<String> roles = new ArrayList<String>(Arrays.asList(new String[]{"ROLE_1","ROLE_2","ROLE_3","ROLE_4","ROLE_5"}));
List<String> userRoles = new ArrayList<String>();

for(String role : roles) {
    if(request.isUserInRole(role)) {
	userRoles.add(role);
    }
}

%>

<p>Tus roles son: <%= userRoles.toString() %> </p>
<p>
  Your principal object is....: <%= request.getUserPrincipal() %>
</p>

<p><a href="../j_spring_security_logout">Logout</a></p>

<h3>Módulo Ventas</h3></td>
<p><a href="ventas/gestion_clientes.jsp">Operación: gestionar clientes</a></p>
<p><a href="ventas/gestion_presupuestos.jsp">Operación: gestionar presupuestos</a></p>
<p><a href="ventas/gestion_facturas.jsp">Operación: gestionar facturas</a></p>

<h3>Módulo Compras</h3></td>
<p><a href="compras/gestion_proveedores.jsp">Operación: gestionar proveedores</a></p>
<p><a href="compras/gestion_compras.jsp">Operación: gestionar compras</a></p>
<p><a href="compras/autorizar_compras.jsp">Operación: autorizar compras</a></p>


<h3>Módulo Nóminas</h3></td>
<p><a href="nominas/gestion_trabajadores.jsp">Operación: gestionar trabajadores</a></p>
<p><a href="nominas/gestion_nominas.jsp">Operación: gestionar nóminas</a></p>

</body>
</html>
