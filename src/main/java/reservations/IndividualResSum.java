package reservations;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IndividualResSum
 */
@WebServlet("/IndividualResSum")
public class IndividualResSum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndividualResSum() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String reservation_id = request.getParameter("reservation_id");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String instructions = request.getParameter("instructions");
		String confirmation_code = request.getParameter("confirmation_code");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String points = request.getParameter("points");
		String room_type = request.getParameter("room_type");
		String hotel_id = request.getParameter("hotel_id");
		String user_id = request.getParameter("user_id");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String picture = request.getParameter("picture");
		String hotel_name = request.getParameter("hotel_name");
		String address = request.getParameter("address");
		String phone_number = request.getParameter("phone_number");
		String place_id = request.getParameter("place_id");
		String amenities = request.getParameter("amenities");
		String descrip = request.getParameter("descrip");
				

		request.setAttribute("reservation_id", reservation_id);
		request.setAttribute("adults", adults);
		request.setAttribute("children", children);
		request.setAttribute("instructions", instructions);
		request.setAttribute("confirmation_code", confirmation_code);
		request.setAttribute("check_in", check_in);
		request.setAttribute("check_out", check_out);
		request.setAttribute("points", points);
		request.setAttribute("room_type", room_type);
		request.setAttribute("hotel_id", hotel_id);
		request.setAttribute("user_id", user_id);
		request.setAttribute("city", city);
		request.setAttribute("state", state);
		request.setAttribute("zip", zip);
		request.setAttribute("picture", picture);
		request.setAttribute("hotel_name", hotel_name);
		request.setAttribute("address", address);
		request.setAttribute("phone_number", phone_number);
		request.setAttribute("place_id", place_id);
		request.setAttribute("amenities", amenities);
		request.setAttribute("descrip", descrip);
		
		
		request.getRequestDispatcher("individual-reservation.jsp").forward(request,response);
	}



}
