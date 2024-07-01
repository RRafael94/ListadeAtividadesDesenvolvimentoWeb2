
	//http://localhost:8080/Lista_de_Exercicios-Servelets-e-JSP/parametros?nome=Jo%C3%A3o&idade=30



package funcao;



import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/parametros")
public class ParametroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // Obter todos os parâmetros de consulta
        StringBuilder parametros = new StringBuilder();
        request.getParameterMap().forEach((chave, valores) -> {
            for (String valor : valores) {
                parametros.append("<p>").append(chave).append(": ").append(valor).append("</p>");
            }
        });

        // Escrever a resposta
        response.getWriter().write("<html><body>");
        response.getWriter().write("<h1>Parâmetros de Consulta</h1>");
        response.getWriter().write(parametros.toString());
        response.getWriter().write("</body></html>");
    }
}
