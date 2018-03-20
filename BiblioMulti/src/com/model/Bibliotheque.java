package com.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Bibliotheque {
	@Id
	private int id_bibliotheque;
	@Column
	private String nom;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "bibliotheque")
	private List<Element> elements;
	
	public Bibliotheque(int id_bibliotheque, String nom, List<Element> elements) {
		this.id_bibliotheque = id_bibliotheque;
		this.nom = nom;
		this.elements = elements;
	}
	public Bibliotheque() {
		this.nom = null;
		this.elements = new ArrayList<>();
	}
	public int getId_bibliotheque() {
		return id_bibliotheque;
	}
	public void setId_bibliotheque(int id_bibliotheque) {
		this.id_bibliotheque = id_bibliotheque;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public List<Element> getElements() {
		return elements;
	}
	public void setElements(List<Element> elements) {
		this.elements = elements;
	}
}
