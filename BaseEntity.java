package com.nucleus.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import org.hibernate.validator.constraints.Email;

/*import com.sun.istack.internal.Nullable;*/

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public class BaseEntity 
{
	@Id
	@Column(name="CODE")
    private int eCode;
	@Column(name="NAME")
	private String eName;
	@Column(name="EMail")
	@Email
	private String eEmail;
	
	
	public int geteCode() {
		return eCode;
	}
	public void seteCode(int eCode) {
		this.eCode = eCode;
	}
	
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	@Override
	public String toString() {
		return "BaseEntity [eCode=" + eCode + ", eName=" + eName + ", eEmail="
				+ eEmail + "]";
	}
}
