package com.example.webapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int  property_id;
	private String property_type;
	private String property_desc;
	private String property_location;
	private String property_prize;
	private String owner_name;
	private String owner_contact;
	public Property() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Property(int property_id, String property_type, String property_desc, String property_location,
			String property_prize, String owner_name, String owner_contact) {
		super();
		this.property_id = property_id;
		this.property_type = property_type;
		this.property_desc = property_desc;
		this.property_location = property_location;
		this.property_prize = property_prize;
		this.owner_name = owner_name;
		this.owner_contact = owner_contact;
	}
	public int getProperty_id() {
		return property_id;
	}
	public void setProperty_id(int property_id) {
		this.property_id = property_id;
	}
	public String getProperty_type() {
		return property_type;
	}
	public void setProperty_type(String property_type) {
		this.property_type = property_type;
	}
	public String getProperty_desc() {
		return property_desc;
	}
	public void setProperty_desc(String property_desc) {
		this.property_desc = property_desc;
	}
	public String getProperty_location() {
		return property_location;
	}
	public void setProperty_location(String property_location) {
		this.property_location = property_location;
	}
	public String getProperty_prize() {
		return property_prize;
	}
	public void setProperty_prize(String property_prize) {
		this.property_prize = property_prize;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getOwner_contact() {
		return owner_contact;
	}
	public void setOwner_contact(String owner_contact) {
		this.owner_contact = owner_contact;
	}
	@Override
	public String toString() {
		return "Property [property_id=" + property_id + ", property_type=" + property_type + ", property_desc="
				+ property_desc + ", property_location=" + property_location + ", property_prize=" + property_prize
				+ ", owner_name=" + owner_name + ", owner_contact=" + owner_contact + "]";
	}
	
	
	
	
	
	
	
}
