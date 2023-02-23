package reservations;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class ReservationControllerServlet
 */
@WebServlet("/reservations")
public class ReservationControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ReservationDBUtil reservationDbUtil;
	
	@Resource(name="jdbc/provisio")
	private DataSource dataSource;
	

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			reservationDbUtil = new ReservationDBUtil(dataSource);
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		try {
			String session_user_id = request.getParameter("user_id");
//			HttpSession session = request.getSession();
//			String id = (String) request.getAttribute("user_id");
			listReservations(request, response, session_user_id);
		} catch (Exception exc) {
			throw new ServletException(exc);
		}
	
	
	}

	private void listReservations(HttpServletRequest request, HttpServletResponse response, String id) throws Exception {
		
		
		List<Reservation> reservations = reservationDbUtil.getReservations(id);
		request.setAttribute("reservations", reservations);
		request.getRequestDispatcher("reservationsSummary.jsp").forward(request, response);
		
	}

}
