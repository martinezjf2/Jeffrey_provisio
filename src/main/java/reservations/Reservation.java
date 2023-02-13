package reservations;

public class Reservation {
	private int reservation_id;
	private int user_id;
	private int hotel_id;
	private int adults;
	private int children;
	private String check_in;
	private String check_out;
	private String room_type;
	private String instructions;
	private String confirmation_code;
	
	

	public Reservation(int reservation_id, int user_id, int hotel_id, String confirmation_code, int adults, int children, String check_in,
			String check_out, String room_type, String instructions) {
		super();
		this.reservation_id = reservation_id;
		this.user_id = user_id;
		this.hotel_id = hotel_id;
		this.confirmation_code = confirmation_code;
		this.adults = adults;
		this.children = children;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.instructions = instructions;
	}
	
	public Reservation(int user_id, int hotel_id, String confirmation_code, int adults, int children, String check_in, String check_out,
			String room_type, String instructions) {
		super();
		this.user_id = user_id;
		this.hotel_id = hotel_id;
		this.confirmation_code = confirmation_code;
		this.adults = adults;
		this.children = children;
		this.check_in = check_in;
		this.check_out = check_out;
		this.room_type = room_type;
		this.instructions = instructions;
	}

	public int getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getConfirmation_code() {
		return confirmation_code;
	}

	public void setConfirmation_code(String confirmation_code) {
		this.confirmation_code = confirmation_code;
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

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	@Override
	public String toString() {
		return "Reservation [reservation_id=" + reservation_id + ", user_id=" + user_id + ", hotel_id=" + hotel_id
				+ ", adults=" + adults + ", children=" + children + ", check_in=" + check_in + ", check_out="
				+ check_out + ", room_type=" + room_type + ", instructions=" + instructions + ", confirmation_code="
				+ confirmation_code + "]";
	}


	
	
	
	
	

}
