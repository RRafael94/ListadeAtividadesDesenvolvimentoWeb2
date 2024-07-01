<%@ page import="funcao.soma" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora Simples</title>
</head>
<body>
    <h1>Some os números</h1>
    <form action="" method="get">
        <input type="text" name="numero1" placeholder="Número 1" required>
        <input type="text" name="numero2" placeholder="Número 2" required>
        <button type="submit">Calcular</button>
    </form>
    
<%
    // Verificar se os parâmetros foram passados
    if (request.getParameter("numero1") != null && request.getParameter("numero2") != null) {
        try {
            // Obter os números a partir de parâmetros de solicitação
            int numero1 = Integer.parseInt(request.getParameter("numero1"));
            int numero2 = Integer.parseInt(request.getParameter("numero2"));
            int resultado = soma.sum(numero1, numero2);
%>
            <h1>Resultado da Soma</h1>
            <p>A soma de <%= numero1 %> e <%= numero2 %> é <%= resultado %>.</p>
<%
        } catch (NumberFormatException e) {
%>
            <p style="color: red;">Por favor, insira números válidos.</p>
<%
        }
    }
%>
</body>
</html>
