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
		String sql = "SELECT * FROM user;";
		stmt = conn.createStatement();
		
		// Step 4: Execute SQL query
		rs = stmt.executeQuery(sql);
		
		// Step 5: Process the result set
		while (rs.next()) {
			String email = rs.getString("email");
			String firstName = rs.getString("first_name");
			out.println(firstName);
			out.println(email);
		}
		
		
		} catch (Exception exc) {
			exc.printStackTrace();
		}
	}

}
