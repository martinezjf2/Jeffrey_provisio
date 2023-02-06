package reservations;

public class Reservation {
	private int reservation_id;
	private int user_id;
	private int hotel_id;
	private int adults;
	private int children;
	private String check_in;
	private String check_out;
	
	public Reservation(int reservation_id, int user_id, int hotel_id, int adults, int children, String check_in,
			String check_out) {
		super();
		this.reservation_id = reservation_id;
		this.user_id = user_id;
		this.hotel_id = hotel_id;
		this.adults = adults;
		this.children = children;
		this.check_in = check_in;
		this.check_out = check_out;
	}

	public Reservation(int user_id, int hotel_id, int adults, int children, String check_in, String check_out) {
		super();
		this.user_id = user_id;
		this.hotel_id = hotel_id;
		this.adults = adults;
		this.children = children;
		this.check_in = check_in;
		this.check_out = check_out;
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

	@Override
	public String toString() {
		return "Reservation [reservation_id=" + reservation_id + ", user_id=" + user_id + ", hotel_id=" + hotel_id
				+ ", adults=" + adults + ", children=" + children + ", check_in=" + check_in + ", check_out="
				+ check_out + "]";
	}
	
	

}
