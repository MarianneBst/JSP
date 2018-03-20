package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Clip extends Element{
	@ManyToOne
	private Musique musique;

	public Clip() {
		super();
		this.musique = null;
	}
	public Clip(String nom_fichier, Bibliotheque bibliotheque, Musique musique) {
		super(nom_fichier, bibliotheque);
		this.musique = musique;
	}
	public Clip(int id_element, String nom_fichier, Bibliotheque bibliotheque, Musique musique) {
		super(id_element, nom_fichier, bibliotheque);
		this.musique = musique;
	}
	public Musique getMusique() {
		return musique;
	}
	public void setMusique(Musique musique) {
		this.musique = musique;
	}
	
}
