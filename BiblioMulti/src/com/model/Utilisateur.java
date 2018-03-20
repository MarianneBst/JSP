package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Utilisateur {
	@Id
	private int id_utilisateur;
	@Column
	private String login;
	@Column
	private String password;
	@Column
	private boolean droit_modification;
	
	public Utilisateur() {
		this.login = null;
		this.password = null;
		this.droit_modification = false;
	}
	public Utilisateur(int id_utilisateur, String login, String password, boolean droit_modification) {
		this.id_utilisateur = id_utilisateur;
		this.login = login;
		this.password = password;
		this.droit_modification = droit_modification;
	}
	public int getId_utilisateur() {
		return id_utilisateur;
	}
	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isDroit_modification() {
		return droit_modification;
	}
	public void setDroit_modification(boolean droit_modification) {
		this.droit_modification = droit_modification;
	}
	
	
}
