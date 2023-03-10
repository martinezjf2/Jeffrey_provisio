package reservations;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReservationCancelled
 */
@WebServlet("/cancel-reservation")
public class ReservationCancelled extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationCancelled() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String reservation_id = request.getParameter("reservation_id");
		int id = Integer.parseInt(reservation_id);


		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			String sql = "DELETE FROM reservation WHERE reservation_id = " + id + ";";
			stmt.execute(sql);
			out.println(sql);

			request.setAttribute("cancelled", request.getParameter("cancelled"));
			request.getRequestDispatcher("reservations").forward(request, response);
			con.close();

		} catch(Exception e) {
			out.println(id);
			out.println(e);
			request.setAttribute("success", "Reservation Successfully Deleted");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
    	
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
