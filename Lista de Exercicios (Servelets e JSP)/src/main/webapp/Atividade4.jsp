<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saudação Personalizada</title>
</head>
<body>
<% 
    // Obtém o nome do usuário do request
    String nome = request.getParameter("nome");
    String cidade = request.getParameter("cidade");

    // Verifica se o nome não é nulo e não é vazio
    if (nome != null && nome.trim().length() > 0) {
        out.println("<h2>Olá, " + nome + "! Bem-vindo ao nosso site."+ cidade+ "</h2>");
    } else {
        // Se o nome não for fornecido, exibe o formulário novamente
%>
    <form action="Atividade4.jsp" method="post">
        <label for="nome">Digite seu nome:</label>
        <input type="text" id="nome" name="nome">
        <label for="cidade">Digite sua cidade:</label>
        <input type="text" id="nome" name="cidade">
        <input type="submit" value="Enviar">
    </form>
<% 
    }
%>
</body>
</html>
