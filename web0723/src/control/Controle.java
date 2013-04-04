package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.ContatoDao;

import entity.Contato;

public class Controle extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// resgatar os dados do formulário
		String n = request.getParameter("nome");
		String e = request.getParameter("email");
		String t = request.getParameter("telefone");

		// criar um obj de Contato a partir dos dados resgatados
		Contato c = new Contato(null, n, e, t);

		ContatoDao cd = new ContatoDao();

		try {
			cd.create(c);
			request.setAttribute("msg", "Dados gravados com sucesso!");
		} catch (Exception e2) {
			request.setAttribute("msg", "Erro: " + e2.getMessage());
			e2.printStackTrace();
		} finally {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
}
