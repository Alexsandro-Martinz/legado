package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.LoginService;

import java.io.IOException;
import dtos.LoginDto;
import dtos.UserDto;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginService service = new LoginService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginDto dto = new LoginDto();
		dto.setUsername(request.getParameter("username"));
		dto.setPassword(request.getParameter("password"));
		
		UserDto userDto = service.authenticate(dto);
		
		if(userDto != null) {
			request.getSession().setAttribute("user", userDto);
			response.sendRedirect("site/home.jsp");
		} else {
			request.setAttribute("message", "Informe o login corretamente!");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

}
