package booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookingFormServlet
 */
@WebServlet("/BookingFormServlet")
public class BookingFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		HttpSession session = request.getSession();
		
		
		String user_id = request.getParameter("user_id");
		String user_first = (String)session.getAttribute("first_name");
		String user_last = (String)session.getAttribute("last_name");
		String user_email = (String)session.getAttribute("email");
		String hotel_name = request.getParameter("hotel_name");
		String hotel_id = request.getParameter("hotel_id");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String room_type = request.getParameter("room_type");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String instructions = request.getParameter("instructions");
		String hotel_amenities = request.getParameter("hotel_amenities");
		String hotel_descrip = request.getParameter("hotel_descrip");
		
		out.println("<br><br><h2>User Information</h2><br><br>");
		out.println("User ID: " + user_id + "<br>");
		out.println("User FIRST Name: " + user_first + "<br>");
		out.println("User LAST Name: " + user_last + "<br>");
		out.println("User EMAIL: " + user_email + "<br><br>");
		
		out.println("<h2>Hotel Information</h2><br><br>");
		out.println("Hotel NAME: " + hotel_name + "<br>");
		out.println("Hotel ID: " + hotel_id + "<br>");
		out.println("Hotel AMENITIES: " + hotel_amenities + "<br>");
		out.println("Hotel DESCRIPTION: " + hotel_descrip + "<br><br>");
		
		out.println("<h2>Reservation Information</h2><br><br>");
		out.println("Check IN: " + check_in + "<br>");
		out.println("Check OUT: " + check_out + "<br>");
		out.println("Room TYPE: " + room_type + "<br>");
		out.println("Adults: " + adults + "<br>");
		out.println("Children: " + children + "<br>");
		out.println("Instructions: " + instructions + "<br>");
		
		
		
//		request.setAttribute("hotel_descrip", hotel_descrip);
//		request.getRequestDispatcher("booking.jsp").forward(request,response);

		
	}

}
