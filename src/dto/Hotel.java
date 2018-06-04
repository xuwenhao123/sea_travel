package dto;

public class Hotel {
	private int h_id;
	private String hname;
	private String starttype;
	private String ofwhere;
	private String min_price;
	private String owner_name;
	private String owner_phone;
	private String detail;
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getStarttype() {
		return starttype;
	}
	public void setStarttype(String starttype) {
		this.starttype = starttype;
	}
	public String getOfwhere() {
		return ofwhere;
	}
	public void setOfwhere(String ofwhere) {
		this.ofwhere = ofwhere;
	}
	public String getMin_price() {
		return min_price;
	}
	public void setMin_price(String min_price) {
		this.min_price = min_price;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getOwner_phone() {
		return owner_phone;
	}
	public void setOwner_phone(String owner_phone) {
		this.owner_phone = owner_phone;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "Hotel [h_id=" + h_id + ", hname=" + hname + ", starttype=" + starttype + ", ofwhere=" + ofwhere
				+ ", min_price=" + min_price + ", owner_name=" + owner_name + ", owner_phone=" + owner_phone
				+ ", detail=" + detail + "]";
	}
	
	

}
