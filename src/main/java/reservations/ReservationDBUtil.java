package reservations;

import java.sql.Connection;
//import javax.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ReservationDBUtil {
	
	private DataSource dataSource;
	
	public ReservationDBUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public List<Reservation> getReservations(String session_user_id) throws Exception {
		List<Reservation> reservations = new ArrayList<>();
		
		int session_id = Integer.parseInt(session_user_id);
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
//		HttpSession session;
		
		try {
			
			
			myConn = dataSource.getConnection();
			String sql = "SELECT * FROM reservation WHERE reservation.user_id = " + session_id + " ORDER BY reservation_id desc";
			
			// want to display reservation just from the user
			// want to display the hotel information based on the hotel_id
			
			
			myStmt = myConn.createStatement();
			
			
			myRs = myStmt.executeQuery(sql);
			
			while(myRs.next()) {
				int reservation_id = myRs.getInt("reservation_id");
				int user_id = myRs.getInt("user_id");
				int hotel_id = myRs.getInt("hotel_id");
				int adults = myRs.getInt("adults");
				int children = myRs.getInt("children");
				int points = 150;
				String check_in = myRs.getString("check_in");
				String check_out = myRs.getString("check_out");
				String room_type = myRs.getString("room_type");
				String instructions = myRs.getString("instructions");
				String confirmation_code = myRs.getString("confirmation_code");
				Reservation tempRes = new Reservation(reservation_id, user_id, hotel_id, adults, children, points, check_in, check_out, room_type, instructions, confirmation_code);
				reservations.add(tempRes);
			}
			
			return reservations;
			
		} finally {
			close(myConn, myStmt, myRs);
		}
		
		
		
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		// TODO Auto-generated method stub
		try {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();
			}
			
			
		} catch (Exception exc) {
			exc.printStackTrace();
		}
		
	}
	
	

}
