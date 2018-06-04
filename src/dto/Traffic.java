package dto;

public class Traffic {
   private int t_id;
   private String type;
   private String company;
   private String min_price;
   private String brand;
   private int people_num;
public int getT_id() {
	return t_id;
}
public void setT_id(int t_id) {
	this.t_id = t_id;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getMin_price() {
	return min_price;
}
public void setMin_price(String min_price) {
	this.min_price = min_price;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public int getPeople_num() {
	return people_num;
}
public void setPeople_num(int people_num) {
	this.people_num = people_num;
}
@Override
public String toString() {
	return "Traffic [t_id=" + t_id + ", type=" + type + ", company=" + company + ", min_price=" + min_price + ", brand="
			+ brand + ", people_num=" + people_num + "]";
}
   
   
}
