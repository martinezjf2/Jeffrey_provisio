package booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
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
		String hotel_id = request.getParameter("hotel_id");
		String hotel_name = request.getParameter("hotel_name");
		String hotel_amenities = request.getParameter("hotel_amenities");
		String hotel_descrip = request.getParameter("hotel_descrip");
		out.println(hotel_id);
		out.println(hotel_name);
		out.println(hotel_amenities);
		out.println(hotel_descrip);
		request.setAttribute("hotel_id", hotel_id);
		request.setAttribute("hotel_name", hotel_name);
		request.setAttribute("hotel_amenities", hotel_amenities);
		request.setAttribute("hotel_descrip", hotel_descrip);
		request.getRequestDispatcher("booking.jsp").forward(request,response);
		
	}
    
}
