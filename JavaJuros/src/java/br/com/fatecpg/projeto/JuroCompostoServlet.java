package br.com.fatecpg.projeto;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/juros-composto")
public class JuroCompostoServlet extends HttpServlet {
	
    /**
     *
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    @Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws IOException, ServletException {
		
		//Writter
		PrintWriter out = response.getWriter();
		
		//Buscando par�metros na p�gina
		double montanteInicial = Double.parseDouble(request.getParameter("montante-inicial"));
		int meses = Integer.parseInt(request.getParameter("meses"));
		double taxaMensal = Double.parseDouble(request.getParameter("taxa-mensal")) / 100;
		
		//Variaveis para calculo do juro composto
		double montanteMensal = montanteInicial;
		double juroMensal = 1 + taxaMensal;
		double montanteFinal = montanteInicial * Math.pow(juroMensal, meses);
		
		//Estrutura da tabela para Exibi��o do juro acumulado por m�s
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<thead>");
		out.println("<tr>");
		out.println("<th>Mês</th>");
		out.println("<th>Montante</th>");
		out.println("</tr>");
		out.println("</thead>");
		out.println("<tbody>");
		//Estrutura de repeti��o para calculo mensal do juro composto
		for(int i = 0; i< meses; i++) {
			montanteMensal = montanteMensal * juroMensal;
			//Cria��o da linha da tabela para cada m�s e seu relativo montante
			out.println("<tr>");
			out.println("<td>" + i+1 + "</td>");
			out.println("<td>" + montanteMensal + "</td>");
			out.println("<tr>");
		}
		out.println("</tbody>");
		//Exibi��o do montante final no rodap� da tabela
		out.println("<tfoot>");
		out.println("<th>Montante final: "+ montanteFinal +"</th>");
		out.println("</tfoot>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		
	}
	
	
	private static final long serialVersionUID = 1L;
       
    public JuroCompostoServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
