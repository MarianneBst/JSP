package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;

@Entity @Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class Element {
	@Id
	private int id_element;
	@Column
	private String nom_fichier;
	@ManyToOne
	private Bibliotheque bibliotheque;

	public Element() {
		this.nom_fichier = null;
		this.bibliotheque = null;
	}
	public Element(String nom_fichier, Bibliotheque bibliotheque) {
		this.nom_fichier = nom_fichier;
		this.bibliotheque = bibliotheque;
	}
	public Element(int id_element, String nom_fichier, Bibliotheque bibliotheque) {
		this.id_element = id_element;
		this.nom_fichier = nom_fichier;
		this.bibliotheque = bibliotheque;
	}
	public int getId_element() {
		return id_element;
	}
	public void setId_element(int id_element) {
		this.id_element = id_element;
	}
	public String getNom_fichier() {
		return nom_fichier;
	}
	public void setNom_fichier(String nom_fichier) {
		this.nom_fichier = nom_fichier;
	}
	public Bibliotheque getBibliotheque() {
		return bibliotheque;
	}
	public void setBibliotheque(Bibliotheque bibliotheque) {
		this.bibliotheque = bibliotheque;
	}
}
