<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	
<%-- 3. Exerc�cio de Condi��o:
   Desenvolva um arquivo JSP que utilize uma instru��o de condi��o para exibir diferentes mensagens 
   dependendo do valor de uma vari�vel Java. Por exemplo, se a vari�vel for verdadeira, 
   exiba uma mensagem de sucesso, caso contr�rio, exiba uma mensagem de erro.
 --%>

<!DOCTYPE html>
<html>
<head>
    <title>Exemplo de Condi��o em JSP</title>
</head>
<body>

<%
    // Vari�vel Java que ser� utilizada para determinar a mensagem a ser exibida
    boolean sucesso = false;

    // Verifica o valor da vari�vel sucesso e exibe a mensagem correspondente
    if (sucesso) {
%>
        <h1 style="color: green;">Opera��o bem-sucedida!</h1>
<%
    } else {
%>
        <h1 style="color: red;">Ops! Algo deu errado.</h1>
<%
    }
%>

</body>
</html>