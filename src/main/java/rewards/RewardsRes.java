package rewards;

public class RewardsRes {
	
//	User Table
	private int id;
	private String first_name;
	private String last_name;
	private String email;
	
//	Reservation Table
	private int reservation_id;
	private int adults;
	private int children;
	private String instructions;
	private String confirmation_code;
	private String check_in;
	private String check_out;
	private String room_type;
	private int points;
	private int hotel_id;
	private int user_id;
	
//	Place Table
	private String city;
	private String state;
	private String zip;
	private String picture;
	
//	Hotel Table
	private String hotel_name;
	private String address;
	private String phone_number;
	private int place_id;
	private String amenities;
	private String descrip;
	
	



	public RewardsRes(int id, String first_name, String last_name, String email, int reservation_id, int adults,
			int children, String instructions, String confirmation_code, String check_in, String check_out,
			String room_type, int points, int hotel_id, int user_id, String city, String state, String zip,
			String picture, String hotel_name, String address, String phone_number, int place_id, String amenities,
			String descrip) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.reservation_id = reservation_id;
		this.adults = adults;
		this.children = children;
		this.instructions = instructions;
		this.confirmation_code = confirmation_code;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.points = points;
		this.hotel_id = hotel_id;
		this.user_id = user_id;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.picture = picture;
		this.hotel_name = hotel_name;
		this.address = address;
		this.phone_number = phone_number;
		this.place_id = place_id;
		this.amenities = amenities;
		this.descrip = descrip;
	}


	public RewardsRes(String first_name, String last_name, String email, int reservation_id, int adults, int children,
			String instructions, String confirmation_code, String check_in, String check_out, String room_type,
			int points, int hotel_id, int user_id, String city, String state, String zip, String picture,
			String hotel_name, String address, String phone_number, int place_id, String amenities, String descrip) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.reservation_id = reservation_id;
		this.adults = adults;
		this.children = children;
		this.instructions = instructions;
		this.confirmation_code = confirmation_code;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.points = points;
		this.hotel_id = hotel_id;
		this.user_id = user_id;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.picture = picture;
		this.hotel_name = hotel_name;
		this.address = address;
		this.phone_number = phone_number;
		this.place_id = place_id;
		this.amenities = amenities;
		this.descrip = descrip;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirst_name() {
		return first_name;
	}


	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}


	public String getLast_name() {
		return last_name;
	}


	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getReservation_id() {
		return reservation_id;
	}


	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}


	public int getAdults() {
		return adults;
	}


	public void setAdults(int adults) {
		this.adults = adults;
	}


	public int getChildren() {
		return children;
	}


	public void setChildren(int children) {
		this.children = children;
	}


	public String getInstructions() {
		return instructions;
	}


	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}


	public String getConfirmation_code() {
		return confirmation_code;
	}


	public void setConfirmation_code(String confirmation_code) {
		this.confirmation_code = confirmation_code;
	}


	public String getCheck_in() {
		return check_in;
	}


	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}


	public String getCheck_out() {
		return check_out;
	}


	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}


	public String getRoom_type() {
		return room_type;
	}


	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}


	public int getPoints() {
		return points;
	}


	public void setPoints(int points) {
		this.points = points;
	}


	public int getHotel_id() {
		return hotel_id;
	}


	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZip() {
		return zip;
	}


	public void setZip(String zip) {
		this.zip = zip;
	}


	public String getPicture() {
		return picture;
	}


	public void setPicture(String picture) {
		this.picture = picture;
	}


	public String getHotel_name() {
		return hotel_name;
	}


	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}


	public int getPlace_id() {
		return place_id;
	}


	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}


	public String getAmenities() {
		return amenities;
	}


	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}


	public String getDescrip() {
		return descrip;
	}


	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}


	@Override
	public String toString() {
		return "RewardsRes [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", email=" + email
				+ ", reservation_id=" + reservation_id + ", adults=" + adults + ", children=" + children
				+ ", instructions=" + instructions + ", confirmation_code=" + confirmation_code + ", check_in="
				+ check_in + ", check_out=" + check_out + ", room_type=" + room_type + ", points=" + points
				+ ", hotel_id=" + hotel_id + ", user_id=" + user_id + ", city=" + city + ", state=" + state + ", zip="
				+ zip + ", picture=" + picture + ", hotel_name=" + hotel_name + ", address=" + address
				+ ", phone_number=" + phone_number + ", place_id=" + place_id + ", amenities=" + amenities
				+ ", descrip=" + descrip + "]";
	}




	
	
	
	
	
	

}
