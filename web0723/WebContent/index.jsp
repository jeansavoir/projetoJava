<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<style type="text/css">
	body{
		font-family: verdana;
		color: #00008B;
		background-color: #D3D3D3;
	}
</style>

</head>
<body>
	<h2 align="center">Sistema ACME&copy; de cadastro</h2>
	<br /><hr /><br />
	<fieldset>
		<legend>Preencha os campos abaixo, velhinho!</legend>
		<form action="meuservlet" method="post">
			<table>
				<tr>
					<td>Nome:</td>
					<td><input type="text" name="nome" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Telefone:</td>
					<td><input type="text" name="telefone" /></td>
				</tr>
			</table>
			<input type="reset" value="Limpar campos" />
			<input type="submit" value="Enviar dados" />
		</form><br />
		${msg}
	</fieldset>
	<br/><br/>
	<a href="consulta.jsp">Consultar tabela</a>	
</body>
</html>