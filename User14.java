package com.nucleus.Entity;


import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name="usershubhi")
public class User14 
{
	@Id
	private String username;
	private int enabled;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	private String password;
	//@OneToOne(cascade=CascadeType.ALL)
	//private Role14 role;
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/*public Role14 getRole() {
		return role;
	}
	public void setRole(Role14 role) {
		this.role = role;
	}*/
}
