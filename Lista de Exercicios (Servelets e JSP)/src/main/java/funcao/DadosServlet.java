package funcao;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class DadosServlet
 */
public class DadosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DadosServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html");
	        response.setCharacterEncoding("UTF-8");

	        // Obter os dados do formulário
	        String nome = request.getParameter("nome");
	        String email = request.getParameter("email");

	        // Gerar a resposta HTML
	        response.getWriter().write("<html><body>");
	        response.getWriter().write("<h1>Dados Recebidos</h1>");
	        response.getWriter().write("<p>Nome: " + nome + "</p>");
	        response.getWriter().write("<p>Email: " + email + "</p>");
	        response.getWriter().write("</body></html>");
	    }
	}

