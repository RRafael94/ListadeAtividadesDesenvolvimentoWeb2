<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	
<%-- 3. Exercício de Condição:
   Desenvolva um arquivo JSP que utilize uma instrução de condição para exibir diferentes mensagens 
   dependendo do valor de uma variável Java. Por exemplo, se a variável for verdadeira, 
   exiba uma mensagem de sucesso, caso contrário, exiba uma mensagem de erro.
 --%>

<!DOCTYPE html>
<html>
<head>
    <title>Exemplo de Condição em JSP</title>
</head>
<body>

<%
    // Variável Java que será utilizada para determinar a mensagem a ser exibida
    boolean sucesso = false;

    // Verifica o valor da variável sucesso e exibe a mensagem correspondente
    if (sucesso) {
%>
        <h1 style="color: green;">Operação bem-sucedida!</h1>
<%
    } else {
%>
        <h1 style="color: red;">Ops! Algo deu errado.</h1>
<%
    }
%>

</body>
</html>