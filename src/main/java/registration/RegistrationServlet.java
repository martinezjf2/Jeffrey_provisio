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
//			String sql = "INSERT INTO user(first_name, last_name, email, passphrase, points) VALUES('Jeffrey', 'Martinez', 'jeffreypowerhouseandcallitaday@gmail.com', 'Python%78', 0)";
			String sql = "INSERT INTO user(first_name, last_name, email, passphrase, points) VALUES('" +  firstName + "', "  + "'" + lastName + "', " + "'" + email + "', " + "'" + password + "', 0);";			
			stmt.executeUpdate(sql);
			response.sendRedirect("http://localhost:8080/Jeffrey_provisio/newUserHomepage.jsp");
			
			con.close();
		} catch(Exception e) {
			out.println(e);
			response.sendRedirect("http://localhost:8080/Jeffrey_provisio/userAlreadyExistsPage.jsp");

		}
		out.println("</body></html>");
	}
		


}
