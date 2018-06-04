package dto;

public class Attractions {

	private int att_id;
	private String att_name;
	private String ofwhere;
	private String level;
	private String owner_phone;
	private String owner_name;
	private String aimage_path;
	private String detail;
	public int getAtt_id() {
		return att_id;
	}
	public void setAtt_id(int att_id) {
		this.att_id = att_id;
	}
	public String getAtt_name() {
		return att_name;
	}
	public void setAtt_name(String att_name) {
		this.att_name = att_name;
	}
	public String getOfwhere() {
		return ofwhere;
	}
	public void setOfwhere(String ofwhere) {
		this.ofwhere = ofwhere;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getOwner_phone() {
		return owner_phone;
	}
	public void setOwner_phone(String owner_phone) {
		this.owner_phone = owner_phone;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getAimage_path() {
		return aimage_path;
	}
	public void setAimage_path(String aimage_path) {
		this.aimage_path = aimage_path;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "Attractions [att_id=" + att_id + ", att_name=" + att_name + ", ofwhere=" + ofwhere + ", level=" + level
				+ ", owner_phone=" + owner_phone + ", owner_name=" + owner_name + ", aimage_path=" + aimage_path
				+ ", detail=" + detail + "]";
	}
	
	
	
}
