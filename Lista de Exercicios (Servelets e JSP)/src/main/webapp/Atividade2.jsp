<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%----%>
   

<!DOCTYPE html>
<html>
<head>
    <title>Lista de N�meros</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>

<h2>Lista de N�meros</h2>

<table>
    <tr>
        <th>N�mero</th>
    </tr>
    <% 
        // Loop para exibir n�meros de 1 a 10
        for (int i = 1; i <= 10; i++) {
    %>
    <tr>
        <td><%= i %></td>
    </tr>
    <% } %>
</table>

</body>
</html>