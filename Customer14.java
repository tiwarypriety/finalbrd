package com.nucleus.Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

@Entity

public class Customer14 extends BaseEntity
{
	//@Column(name="ADDRESS")
   private String cAddress;
	//@Column(name="PINCODE")
	@Min(value=6,message="PinCode length should be 6 characters")
	private int cPincode;
	//@Column(name="CONTACT_NUMBER")
	@Length(min=10,max=10,message="Contact should be of 10 characters")
	   private String cContact;
//    @DateTimeFormat
	private String createDate;
	
	private String createdBy;
//	@DateTimeFormat
	private String modifiedDate;
	
	
   
	
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}


public String getcAddress() {
	return cAddress;
  }

public void setcAddress(String cAddress) {
	this.cAddress = cAddress;
  }

public String getModifiedDate() {
	return modifiedDate;
}
public void setModifiedDate(String modifiedDate) {
	this.modifiedDate = modifiedDate;
}
public int getcPincode() {
	return cPincode;
}
public void setcPincode(int cPincode) {
	this.cPincode = cPincode;
}

public String getcContact() {
	return cContact;
}
public void setcContact(String cContact) {
	this.cContact = cContact;
}
}
