<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Nomes</title>
</head>
<body>
<%
    // Cria uma lista de nomes usando ArrayList
    java.util.ArrayList<String> nomes = new java.util.ArrayList<String>();
    nomes.add("João");
    nomes.add("Maria");
    nomes.add("Ana");
    nomes.add("Pedro");
    nomes.add("Lucas");

    // Verifica se a lista não está vazia
    if (!nomes.isEmpty()) {
%>
        <h2>Nomes:</h2>
        <ul>
            <% 
                // Loop para exibir cada nome na lista não ordenada
                for (String nome : nomes) {
                    out.println("<li>" + nome + "</li>");
                }
            %>
        </ul>
<%
    } else {
        out.println("<p>Não há nomes na lista.</p>");
    }
%>
</body>
</html>
