package filter;

import java.io.IOException;

import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@WebFilter(urlPatterns = {"/principal/*"}) /*Intercepta todas as requisições que vierem do projeto ou mapeamento*/
public class FilterAutenticacao extends HttpFilter{
 	private static final long serialVersionUID = 1L;


	public FilterAutenticacao() {
        super();
    }

	// Encerra os processos quando o servidor é parado
	// Ex: Encerrava os processos de conexão com banco
	public void destroy() {
	}

	// Intercepta as requisições e da as repostas no sistema
	// Tudo  que fizer no sistema vai passar por aqui
	// Ex: validar autenticação, Dar commit e rolback de transações do banco, etc.
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		String urlParaAutenticar = req.getServletPath();// Url que está sendo acessada
		
		// Validar se está logado senão redireciona para tela de login
		if(usuarioLogado == null && !urlParaAutenticar.equalsIgnoreCase("/principal/ServletLogin")) { // Não está logado
			
			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
			request.setAttribute("msg", "Por favor realize o Login!");
			redireciona.forward(request, response);
			return; // Para a execução e redireciona para o login
		
		}else {
			chain.doFilter(request, response);			
		}
		
	}

	// Inicia os processos ou recursos quando o servidor sobe o projeto
	// EX: iniciar a conexão com o banco
	public void init(FilterConfig fConfig) throws ServletException {
	
	}

}
