<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDateTime" %>


<%--1. Exercício de Estrutura Básica:
   Escreva um arquivo JSP que exiba uma página HTML simples com uma mensagem de boas-vindas. 
   Utilize a sintaxe JSP para incorporar Java no código HTML.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Página de Boas-Vindas</title>
</head>
<body>


<%
    // Incorporando Java para obter a data atual
     LocalDateTime dataHoraAtual = LocalDateTime.now();

    String mensagemSaudação = "";
    
    int horario = dataHoraAtual.getHour();
    if (horario >= 0 && horario < 12) {
    	mensagemSaudação = "Bom dia!";
    } else if (horario >= 12 && horario < 18) {
    	mensagemSaudação = "Boa tarde!";
    } else {	
    	mensagemSaudação = "Boa noite!";
    }
%> 

<h1><%= mensagemSaudação %></h1>
<p>Seja bem-vindo à nossa página.Esperamos que você tenha um(a) <%= mensagemSaudação%></p>

</body>
</html>
	