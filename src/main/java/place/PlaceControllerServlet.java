package place;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class PlaceControllerServlet
 */
@WebServlet("/locations")
public class PlaceControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private PlaceDbUtil placeDbUtil;
	@Resource(name="jdbc/provisio")
	private DataSource dataSource;


	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			placeDbUtil = new PlaceDbUtil(dataSource);
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			listPlaces(request, response);
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}


	private void listPlaces(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Place> places = placeDbUtil.getPlaces();
		request.setAttribute("places", places);
		request.getRequestDispatcher("locations.jsp").forward(request,  response);
		
		
	}

}
