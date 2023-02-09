package hotel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class HotelDbUtil {

	private DataSource dataSource;
	
	public HotelDbUtil(DataSource theDataSource) {
	
		dataSource = theDataSource;
		
	}	

		public List<Hotel> getHotels() throws Exception {
			
			List<Hotel> hotels = new ArrayList<>();
			
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;
			
			try {
				myConn = dataSource.getConnection();
				String sql =  "select * from hotel order by hotel_id desc";
				
				// also want to see the place_id to see the location of the hotel

				myStmt = myConn.createStatement();

				myRs = myStmt.executeQuery(sql);

				while (myRs.next()){
					int hotel_id = myRs.getInt("hotel_id");
                    String hotel_name = myRs.getString("hotel_name");
                    Float price = myRs.getFloat("price");
                    String descrip = myRs.getString("descrip");
					String amenities = myRs.getString("amenities");
					int place_id = myRs.getInt("place_id");

					Hotel tempHotel = new Hotel(hotel_id, hotel_name, price, descrip, amenities, place_id);
            
					hotels.add(tempHotel);
				}
			
				return hotels;
            
			} finally {
				close(myConn, myStmt, myRs);
            }
			
		}
		
		
	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		try{
			if(myRs != null){
				myRs.close();
			}
			if(myStmt != null){
				myStmt.close();
			}
			if(myConn != null){
			myConn.close(); 
			}
		}
		catch(Exception exc){
			exc.printStackTrace(); 
		}
	}
	
}