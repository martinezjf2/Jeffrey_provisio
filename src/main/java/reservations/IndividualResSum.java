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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String reservation_id = request.getParameter("reservation_id");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String room_type = request.getParameter("room_type");
		String confirmation_code = request.getParameter("confirmation_code");
		String instructions = request.getParameter("instructions");
		request.setAttribute("reservation_id", reservation_id);
		request.setAttribute("check_in", check_in);
		request.setAttribute("check_out", check_out);
		request.setAttribute("adults", adults);
		request.setAttribute("children", children);
		request.setAttribute("room_type", room_type);
		request.setAttribute("confirmation_code", confirmation_code);
		request.setAttribute("instructions", instructions);
		request.getRequestDispatcher("individual-reservation.jsp").forward(request,response);
	}



}
