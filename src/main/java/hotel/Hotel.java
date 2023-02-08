package hotel;

public class Hotel { 

	private int hotel_id;
	private String hotel_name;
	private Float price;
	private String descrip;
	private String amenities;
	private int place_id;
	

	public Hotel(String hotel_name, Float price, String descrip, String amenities, int place_id) {
		this.hotel_name = hotel_name;
		this.price = price;
		this.descrip = descrip;
		this.amenities = amenities;
		this.place_id = place_id;
	}

	public Hotel(int hotel_id, String hotel_name, Float price, String descrip, String amenities, int place_id) {
		this.hotel_id = hotel_id;
		this.hotel_name = hotel_name;
		this.price = price;
		this.descrip = descrip;
		this.amenities = amenities;
		this.place_id = place_id;
		
	}

	public int getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
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

	public int getPlace_id() {
		return place_id;
	}

	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}

	@Override
	public String toString() {
		return "Hotel [hotel_id=" + hotel_id + ", hotel_name=" + hotel_name + ", price=" + price + ", descrip="
				+ descrip + ", amenities=" + amenities + ", place_id=" + place_id + "]";
	}
	
}