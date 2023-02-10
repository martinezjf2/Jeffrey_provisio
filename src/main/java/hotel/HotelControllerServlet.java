package hotel;

import java.sql.Statement;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import java.sql.Connection;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/hotels")
public class HotelControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	private HotelDbUtil hotelDbUtil;
	@Resource(name="jdbc/provisio")
	private DataSource dataSource;




	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			hotelDbUtil = new HotelDbUtil(dataSource);
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}




	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			listHotels(request, response);
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
		
		
	}




	private void listHotels(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Hotel> hotels = hotelDbUtil.getHotels();
		// create another connection here so we can pass down attributes from the place to the JSP
		// use an sql inner join so can join the location, make sure to pass down the img,
		// we will create an img tag that will display an image of the city for each hotel
		// 
		request.setAttribute("hotels", hotels);
		request.getRequestDispatcher("hotels.jsp").forward(request,  response);
		
		
	}
}
