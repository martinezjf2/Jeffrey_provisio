package place;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


public class PlaceDbUtil {
private DataSource dataSource;
	
	public PlaceDbUtil(DataSource theDataSource) {
	
		dataSource = theDataSource;
		
	}	

		public List<Place> getPlaces() throws Exception {
			
			List<Place> places = new ArrayList<>();
			
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;
			
			try {
				myConn = dataSource.getConnection();
				String sql =  "select * from place order by place_id desc";
				
				myStmt = myConn.createStatement();

				myRs = myStmt.executeQuery(sql);

				while (myRs.next()){
					
//                    String hotel_name = myRs.getString("hotel_name");
                    
                    String city = myRs.getString("city");
                    String ind_state = myRs.getString("ind_state");
                    String zip = myRs.getString("zip");
                    String picture = myRs.getString("picture");

					Place tempPlace = new Place(city, ind_state, zip, picture);
					
					places.add(tempPlace);
				}
			
				return places;
            
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
