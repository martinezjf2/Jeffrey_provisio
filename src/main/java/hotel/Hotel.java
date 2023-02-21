package hotel;

public class Hotel { 

	private int hotel_id;
	private String hotel_name;
	private String address;
	private String phone_number;
	private Float price;
	private String descrip;
	private String amenities;
	private int place_id;
	private String city;
	private String ind_state;
	private String zip;
	private String picture;
	
	public Hotel(int hotel_id, String hotel_name, String address, String phone_number, Float price, String descrip,
			String amenities, int place_id, String city, String ind_state, String zip, String picture) {
		super();
		this.hotel_id = hotel_id;
		this.hotel_name = hotel_name;
		this.address = address;
		this.phone_number = phone_number;
		this.price = price;
		this.descrip = descrip;
		this.amenities = amenities;
		this.place_id = place_id;
		this.city = city;
		this.ind_state = ind_state;
		this.zip = zip;
		this.picture = picture;
	}

	public Hotel(String hotel_name, String address, String phone_number, Float price, String descrip, String amenities,
			int place_id, String city, String ind_state, String zip, String picture) {
		super();
		this.hotel_name = hotel_name;
		this.address = address;
		this.phone_number = phone_number;
		this.price = price;
		this.descrip = descrip;
		this.amenities = amenities;
		this.place_id = place_id;
		this.city = city;
		this.ind_state = ind_state;
		this.zip = zip;
		this.picture = picture;
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

	@Override
	public String toString() {
		return "Hotel [hotel_id=" + hotel_id + ", hotel_name=" + hotel_name + ", address=" + address + ", phone_number="
				+ phone_number + ", price=" + price + ", descrip=" + descrip + ", amenities=" + amenities
				+ ", place_id=" + place_id + ", city=" + city + ", ind_state=" + ind_state + ", zip=" + zip
				+ ", picture=" + picture + "]";
	}
	
	
	
	
	
	
	


	
}