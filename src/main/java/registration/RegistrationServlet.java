package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegistrationServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Resource: https://www.tutorialspoint.com/jdbc/jdbc-insert-records.htm
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO user(first_name, last_name, email, passphrase) VALUES('" +  firstName + "', '"  + lastName + "', '"  + email + "', '"  + password + "');";			
			stmt.executeUpdate(sql);
			request.setAttribute("submit", request.getParameter("submit"));
			request.getRequestDispatcher("index.jsp").forward(request, response);
//			response.sendRedirect("index.jsp");
			
			con.close();
		} catch(Exception e) {
			out.println(e);
			request.setAttribute("error", "Unable to register, please make sure to fill out all fields");
			request.getRequestDispatcher("error.jsp").forward(request, response);

		}
		out.println("</body></html>");
	}
		


}
