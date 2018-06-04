
package dto;

public class Servicer {
	private int sid;
	private String susername;
	private String spassword;
	private String semail;
	
	private String sname;
	private String ssex;
	private String sbirthday;
	
	private String shobby;
	private String sidcard;
	private String saddress;
	
	private String sage;
	private String simage_path;
	private int status;
	
	private String minprice;
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSusername() {
		return susername;
	}
	public void setSusername(String susername) {
		this.susername = susername;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public String getSbirthday() {
		return sbirthday;
	}
	public void setSbirthday(String sbirthday) {
		this.sbirthday = sbirthday;
	}
	public String getShobby() {
		return shobby;
	}
	public void setShobby(String shobby) {
		this.shobby = shobby;
	}
	public String getSidcard() {
		return sidcard;
	}
	public void setSidcard(String sidcard) {
		this.sidcard = sidcard;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getSage() {
		return sage;
	}
	public void setSage(String sage) {
		this.sage = sage;
	}
	public String getSimage_path() {
		return simage_path;
	}
	public void setSimage_path(String simage_path) {
		this.simage_path = simage_path;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMinprice() {
		return minprice;
	}
	public void setMinprice(String minprice) {
		this.minprice = minprice;
	}
	@Override
	public String toString() {
		return "Servicer [sid=" + sid + ", susername=" + susername + ", spassword=" + spassword + ", semail=" + semail
				+ ", sname=" + sname + ", ssex=" + ssex + ", sbirthday=" + sbirthday + ", shobby=" + shobby
				+ ", sidcard=" + sidcard + ", saddress=" + saddress + ", sage=" + sage + ", simage_path=" + simage_path
				+ ", status=" + status + ", minprice=" + minprice + "]";
	}
	
	
}

