package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/provisio")
	private DataSource dataSource;
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1: Set up the printWriter
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		
		// Step 2: Get a connection to the database
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
		
		conn = dataSource.getConnection();
		// Step 3: Create a SQL Statements
		String sql = "SELECT * FROM reservation";
		stmt = conn.createStatement();
		
		// Step 4: Execute SQL query
		rs = stmt.executeQuery(sql);
		
		// Step 5: Process the result set
		while (rs.next()) {
			int reservation_id = rs.getInt("reservation_id");
			int user_id = rs.getInt("user_id");
			int hotel_id = rs.getInt("hotel_id");
			int adults = rs.getInt("adults");
			int children = rs.getInt("children");
			String check_in = rs.getString("check_in");
			String check_out = rs.getString("check_out");
			String room_type = rs.getString("room_type");
			String instructions = rs.getString("instructions");
			out.println(reservation_id);
			out.println(user_id);
			out.println(hotel_id);
			out.println(adults);
			out.println(check_in);
			out.println(check_out);
			out.println(room_type);
			out.println(instructions);
		}
		
		
		} catch (Exception exc) {
			exc.printStackTrace();
		}
	}

}
