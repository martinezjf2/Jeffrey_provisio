package rewards;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RewardsServlet
 */
@WebServlet("/rewards")
public class RewardsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RewardsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		List<RewardsRes> rewardsRes = new ArrayList<>();
		
		
		int user_id = Integer.parseInt(request.getParameter("user_id"));
//		out.println("<h1>" + user_id + "</h1>");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/provisio", "provisio_user", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM reservation INNER JOIN hotel ON reservation.hotel_id = hotel.hotel_id INNER JOIN place ON hotel.place_id = place.place_id INNER JOIN user ON reservation.user_id = user_id WHERE reservation.user_id = " + user_id);
			
			while (rs.next()) {
//				User Table
				String first_name = rs.getString("first_name");
				String last_name = rs.getString("last_name");
				String email = rs.getString("email");
				
//				Reservation Table
				int adults = rs.getInt("adults");
				int children = rs.getInt("children");
				String instructions = rs.getString("instructions");
				String confirmation_code = rs.getString("confirmation_code");
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String room_type = rs.getString("room_type");
				int points = rs.getInt("points");
				
//				Place Table
				String city = rs.getString("city");
				String ind_state = rs.getString("ind_state");
				
//				Hotel Table
				String hotel_name = rs.getString("hotel_name");
				String descrip = rs.getString("descrip");
				String amenities = rs.getString("amenities");
				int zip = rs.getInt("zip");
				
				
				out.println(first_name);
				out.println(last_name);
				out.println(email);
				out.println(confirmation_code);
				out.println(check_in);
				out.println(check_out);
				out.println(room_type);
				out.println(city);
				out.println(ind_state);
				out.println(hotel_name);
				out.println(zip);
				out.println(points);
				
				
			}
			
		} catch (Exception exc) {
			out.println(exc);
		}
		
		
	}

}