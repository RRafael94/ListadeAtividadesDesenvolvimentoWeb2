<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDateTime" %>


<%--1. Exerc�cio de Estrutura B�sica:
   Escreva um arquivo JSP que exiba uma p�gina HTML simples com uma mensagem de boas-vindas. 
   Utilize a sintaxe JSP para incorporar Java no c�digo HTML.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>P�gina de Boas-Vindas</title>
</head>
<body>


<%
    // Incorporando Java para obter a data atual
     LocalDateTime dataHoraAtual = LocalDateTime.now();

    String mensagemSauda��o = "";
    
    int horario = dataHoraAtual.getHour();
    if (horario >= 0 && horario < 12) {
    	mensagemSauda��o = "Bom dia!";
    } else if (horario >= 12 && horario < 18) {
    	mensagemSauda��o = "Boa tarde!";
    } else {	
    	mensagemSauda��o = "Boa noite!";
    }
%> 

<h1><%= mensagemSauda��o %></h1>
<p>Seja bem-vindo � nossa p�gina.Esperamos que voc� tenha um(a) <%= mensagemSauda��o%></p>

</body>
</html>
	