package reservations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("user_id");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM reservation;");

			if (rs.next() != false) {
				
				session.setAttribute("reservations", rs);
				request.getRequestDispatcher("reservationsSummary.jsp").forward(request, response);
				
			} else {
				response.sendRedirect("wrongInformationLogin.jsp");
			}
			
			con.close();
		} catch(Exception e) {
			out.println(e);
			response.sendRedirect("wrongInformationLogin.jsp");
			
		}

		out.println("</body></html>");
	
	}
	
	public List<Reservation> getReservations(ResultSet rs) throws Exception {
		List<Reservation> reservations = new ArrayList<>();

		
		try {
//			
			
			while(rs.next()) {
				int reservation_id = rs.getInt("reservation_id");
				int user_id = rs.getInt("user_id");
				int hotel_id = rs.getInt("hotel_id");
				int adults = rs.getInt("adults");
				int children = rs.getInt("children");
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String room_type = rs.getString("room_type");
				String instructions = rs.getString("instructions");
				Reservation tempRes = new Reservation(reservation_id, user_id, hotel_id, adults, children, check_in, check_out, room_type, instructions);
				reservations.add(tempRes);
			}
			
			return reservations;
			
		} catch (Exception exc) {
			throw new Exception(exc);
		}
		
		
		
	}

}
