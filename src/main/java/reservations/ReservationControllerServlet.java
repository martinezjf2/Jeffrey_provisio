package reservations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import rewards.RewardsRes;

/**
 * Servlet implementation class ReservationControllerServlet
 */
@WebServlet("/reservations")
public class ReservationControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ReservationControllerServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		List<Reservation> reservations = new ArrayList<>();
	
		try {
			String session_user_id = request.getParameter("user_id");
			int session_id = Integer.parseInt(session_user_id);
			String sql = "SELECT * FROM reservation WHERE reservation.user_id = " + session_id + " ORDER BY reservation_id desc";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int reservation_id = rs.getInt("reservation_id");
				int user_id = rs.getInt("user_id");
				int hotel_id = rs.getInt("hotel_id");
				int adults = rs.getInt("adults");
				int children = rs.getInt("children");
				int points = 150;
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String room_type = rs.getString("room_type");
				String instructions = rs.getString("instructions");
				String confirmation_code = rs.getString("confirmation_code");
				Reservation tempRes = new Reservation(reservation_id, user_id, hotel_id, adults, children, points, check_in, check_out, room_type, instructions, confirmation_code);
				reservations.add(tempRes);
			}
			

			request.setAttribute("reservations", reservations);
			request.getRequestDispatcher("reservationsSummary.jsp").forward(request, response);
		} catch (Exception exc) {
			throw new ServletException(exc);
		}
	
	
	}



}
