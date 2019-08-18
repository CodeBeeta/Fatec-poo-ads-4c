package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/juros-composto")
public class JuroCompostoServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
			throws IOException, ServletException {
		
		//Writter
		PrintWriter out = response.getWriter();
		
		//Buscando parâmetros na página
		double montanteInicial = Double.parseDouble(request.getParameter("montante-inicial"));
		int meses = Integer.parseInt(request.getParameter("meses"));
		double taxaMensal = Double.parseDouble(request.getParameter("taxa-mensal")) / 100;
		
		//Variaveis para calculo do juro composto
		double montanteMensal = montanteInicial;
		double juroMensal = 1 + taxaMensal;
		double montanteFinal = montanteInicial * Math.pow(juroMensal, meses);
		
		//Estrutura da tabela para Exibição do juro acumulado por mês
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
		//Estrutura de repetição para calculo mensal do juro composto
		for(int i = 0; i< meses; i++) {
			montanteMensal = montanteMensal * juroMensal;
			//Criação da linha da tabela para cada mês e seu relativo montante
			out.println("<tr>");
			out.println("<td>" + i+1 + "</td>");
			out.println("<td>" + montanteMensal + "</td>");
			out.println("<tr>");
		}
		out.println("</tbody>");
		//Exibição do montante final no rodapé da tabela
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
