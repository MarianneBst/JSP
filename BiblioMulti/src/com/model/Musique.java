package com.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

@Entity
public class Musique extends Element{
	@Column
	private String nom;
	@Column
	private String artiste;
	@Column
	private String album;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "musique")
	private List<Clip> clips;
	
	public Musique() {
		super();
		this.nom = null;
		this.artiste = null;
		this.album = null;
		this.clips = new ArrayList<>();
	}
	public Musique(String nom_fichier, Bibliotheque bibliotheque, String nom, String artiste,
			String album, List<Clip> clips) {
		super(nom_fichier, bibliotheque);
		this.nom = nom;
		this.artiste = artiste;
		this.album = album;
		this.clips = clips;
	}
	public Musique(int id_element, String nom_fichier, Bibliotheque bibliotheque, String nom, String artiste,
			String album, List<Clip> clips) {
		super(id_element, nom_fichier, bibliotheque);
		this.nom = nom;
		this.artiste = artiste;
		this.album = album;
		this.clips = clips;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getArtiste() {
		return artiste;
	}
	public void setArtiste(String artiste) {
		this.artiste = artiste;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public List<Clip> getClips() {
		return clips;
	}
	public void setClips(List<Clip> clips) {
		this.clips = clips;
	}
}
