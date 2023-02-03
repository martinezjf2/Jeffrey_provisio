package password;

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
//import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RetrievePassword
 */
@WebServlet("/info")
public class RetrievePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrievePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE email = '" + email + "' AND first_name = '" + firstName + "' AND last_name = '" +  lastName + "';");

			while(rs.next()) {
				String sqlFirstName = rs.getString("first_name");
				String sqlLastName = rs.getString("last_name");
				String sqlEmail = rs.getString("email");
				String sqlpassphrase = rs.getString("passphrase");
				String fullName = sqlFirstName + ' ' + sqlLastName;
				out.println("fullName: "+ fullName);
				out.println("email: "+ email);
				out.println("passphrase: "+ sqlpassphrase);
			}
//			if (rs.next() != false) {
//			Resource: https://initialcommit.com/blog/how-to-send-data-from-servlet-to-jsp
//				response.sendRedirect("http://localhost:8080/Jeffrey_provisio/userHompage.jsp");
//			} else {
//				response.sendRedirect("http://localhost:8080/Jeffrey_provisio/wrongInformationLogin.jsp");
//			}
			con.close();
		} catch(Exception e) {
			out.println(e);
			response.sendRedirect("http://localhost:8080/Jeffrey_provisio/wrongInformationLogin.jsp");
			
		}
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
