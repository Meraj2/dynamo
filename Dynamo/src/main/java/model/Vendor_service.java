package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="service_detail")
public class Vendor_service {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int vid;
	private String service_type;
	private String service_name;
	private String visit_charge;
	private String warranty;
		public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getService_type() {
		return service_type;
	}
	public void setService_type(String service_type) {
		this.service_type = service_type;
	}
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public String getVisit_charge() {
		return visit_charge;
	}
	public void setVisit_charge(String visit_charge) {
		this.visit_charge = visit_charge;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	
	

}
