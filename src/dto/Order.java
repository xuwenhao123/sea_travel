package dto;

public class Order {
	private int o_id;
	private int userid;
	private String people_num;
	private int att_id;
	
	private String start_data;
	private String end_data;
	private String content;
	
	private int h_id;
	private int t_id;
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPeople_num() {
		return people_num;
	}
	public void setPeople_num(String people_num) {
		this.people_num = people_num;
	}
	public int getAtt_id() {
		return att_id;
	}
	public void setAtt_id(int att_id) {
		this.att_id = att_id;
	}
	public String getStart_data() {
		return start_data;
	}
	public void setStart_data(String start_data) {
		this.start_data = start_data;
	}
	public String getEnd_data() {
		return end_data;
	}
	public void setEnd_data(String end_data) {
		this.end_data = end_data;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	@Override
	public String toString() {
		return "Order [o_id=" + o_id + ", userid=" + userid + ", people_num=" + people_num + ", att_id=" + att_id
				+ ", start_data=" + start_data + ", end_data=" + end_data + ", content=" + content + ", h_id=" + h_id
				+ ", t_id=" + t_id + "]";
	}
	
	
	
	
}
