package search;

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
 * Servlet implementation class SearchFormServlet
 */
@WebServlet("/search")
public class SearchFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFormServlet() {
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
		String confirmation_code = request.getParameter("confirmation_code");
		
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM reservation WHERE confirmation_code = '" + confirmation_code + "';");


			if (rs.next() != false) {
				request.setAttribute("reservation_id", rs.getInt("reservation_id"));
				request.setAttribute("check_in", rs.getString("check_in"));
				request.setAttribute("check_out", rs.getString("check_out"));
				request.setAttribute("adults", rs.getString("adults"));
				request.setAttribute("children", rs.getString("children"));
				request.setAttribute("room_type", rs.getString("room_type"));
				request.setAttribute("confirmation_code", rs.getString("confirmation_code"));
				request.setAttribute("instructions", rs.getString("instructions"));
				request.getRequestDispatcher("individual-reservation.jsp").forward(request, response);
			} else {
				request.setAttribute("error", "Can't find a reservation, please make sure to type exact confirmation code");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}

			con.close();

		} catch(Exception e) {
			request.setAttribute("error", "Was unable to search for a reservation. Please make sure to fill out all the fields.");
			response.sendRedirect("error.jsp");

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
