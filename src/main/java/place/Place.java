package place;

public class Place {
	
	private int place_id;
	private String city;
	private String ind_state;
	private String zip;
	private String picture;
	
	public Place(int place_id, String city, String ind_state, String zip, String picture) {
		super();
		this.place_id = place_id;
		this.city = city;
		this.ind_state = ind_state;
		this.zip = zip;
		this.picture = picture;
	}
	
	public Place(String city, String ind_state, String zip, String picture) {
		super();
		this.city = city;
		this.ind_state = ind_state;
		this.zip = zip;
		this.picture = picture;
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
		return "Place [place_id=" + place_id + ", city=" + city + ", ind_state=" + ind_state + ", zip=" + zip
				+ ", picture=" + picture + "]";
	}
	
	
	

}
