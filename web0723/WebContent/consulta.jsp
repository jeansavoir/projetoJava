<%@page import="persistence.ContatoDao"%>
<%@page import="entity.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Consulta de dados</title>
	<style type="text/css">
		body{
			font-family: verdana;
			color: #00008B;
			background-color: #D3D3D3;
		}
	</style>
</head>
<body>
	<h2 align="center">Consulta à tabela</h2>
	<br/><br/><br/>
	<table border="3" bordercolor="green" cellpadding="15">
		<tr>
			<th>ID</th>
			<th>NOME</th>
			<th>EMAIL</th>
			<th>TELEFONE</th>
			
			<!-- abrindo um scriptlet -->
		<%
 			for(Contato c : new ContatoDao().findAll()){
 				out.print("<tr><td>" + c.getId() + "</td>");	
 				out.print("<td>" + c.getNome() + "</td>");
 				out.print("<td>" + c.getEmail() + "</td>");
 				out.print("<td>" + c.getTelefone() + "</td></tr>");	
 			}		
		%>
		</tr>
	</table>
	<br/><br/>
	<a href="index.jsp">Voltar para a página principal</a>
</body>
</html>