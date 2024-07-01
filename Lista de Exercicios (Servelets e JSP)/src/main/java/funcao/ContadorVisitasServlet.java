package funcao;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ContadorVisitasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ContadorVisitasServlet() {
        super();
       
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar o tipo de conteúdo da resposta
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // Obter a sessão do usuário
        HttpSession session = request.getSession();

        // Obter o contador de visitas da sessão
        Integer contador = (Integer) session.getAttribute("contadorVisitas");

        // Se o contador for nulo, inicializá-lo
        if (contador == null) {
            contador = 1;
        } else {
            // Incrementar o contador de visitas
            contador++;
        }

        // Armazenar o contador atualizado na sessão
        session.setAttribute("contadorVisitas", contador);

        // Gerar a resposta HTML
        response.getWriter().write("<html><body>");
        response.getWriter().write("<h1>Contador de Visitas</h1>");
        response.getWriter().write("<p>Você visitou esta página " + contador + " vezes.</p>");
        response.getWriter().write("</body></html>");
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
