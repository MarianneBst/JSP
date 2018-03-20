package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Film extends Element{
	@Column
	private String titre;
	@Column
	private String realisateur;

	public Film() {
		super();
		this.titre = null;
		this.realisateur = null;
	}
	public Film(String nom_fichier, Bibliotheque bibliotheque, String titre, String realisateur) {
		super(nom_fichier, bibliotheque);
		this.titre = titre;
		this.realisateur = realisateur;
	}
	public Film(int id_element, String nom_fichier, Bibliotheque bibliotheque, String titre, String realisateur) {
		super(id_element, nom_fichier, bibliotheque);
		this.titre = titre;
		this.realisateur = realisateur;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getRealisateur() {
		return realisateur;
	}
	public void setRealisateur(String realisateur) {
		this.realisateur = realisateur;
	}
}
