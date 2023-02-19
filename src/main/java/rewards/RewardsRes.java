package rewards;

public class RewardsRes {
	private int id;
	private String first_name;
	private String last_name;
	private String email;
	private int adults;
	private int children;
	private String instructions;
	private String confirmation_code;
	private String check_in;
	private String check_out;
	private String room_type;
	private int points;
	private String city;
	private String ind_state;
	private String hotel_name;
	private String descrip;
	private String amenities;
	private int zip;
	
	public RewardsRes(int id, String first_name, String last_name, String email, int adults, int children,
			String instructions, String confirmation_code, String check_in, String check_out, String room_type,
			int points, String city, String ind_state, String hotel_name, String descrip, String amenities, int zip) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.adults = adults;
		this.children = children;
		this.instructions = instructions;
		this.confirmation_code = confirmation_code;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.points = points;
		this.city = city;
		this.ind_state = ind_state;
		this.hotel_name = hotel_name;
		this.descrip = descrip;
		this.amenities = amenities;
		this.zip = zip;
	}

	public RewardsRes(String first_name, String last_name, String email, int adults, int children, String instructions,
			String confirmation_code, String check_in, String check_out, String room_type, int points, String city,
			String ind_state, String hotel_name, String descrip, String amenities, int zip) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.adults = adults;
		this.children = children;
		this.instructions = instructions;
		this.confirmation_code = confirmation_code;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.points = points;
		this.city = city;
		this.ind_state = ind_state;
		this.hotel_name = hotel_name;
		this.descrip = descrip;
		this.amenities = amenities;
		this.zip = zip;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getInd_state() {
		return ind_state;
	}

	public void setInd_state(String ind_state) {
		this.ind_state = ind_state;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getDescrip() {
		return descrip;
	}

	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}

	public String getAmenities() {
		return amenities;
	}

	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	@Override
	public String toString() {
		return "RewardsRes [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", email=" + email
				+ ", adults=" + adults + ", children=" + children + ", instructions=" + instructions
				+ ", confirmation_code=" + confirmation_code + ", check_in=" + check_in + ", check_out=" + check_out
				+ ", room_type=" + room_type + ", points=" + points + ", city=" + city + ", ind_state=" + ind_state
				+ ", hotel_name=" + hotel_name + ", descrip=" + descrip + ", amenities=" + amenities + ", zip=" + zip
				+ "]";
	}
	
	
	

}
