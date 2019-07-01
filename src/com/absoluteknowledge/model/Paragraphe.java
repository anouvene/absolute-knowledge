package com.absoluteknowledge.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Paragraphe implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private int indexee;
	private String contenu="";
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public int getIndexee() {
		return indexee;
	}
	public void setIndexee(int index) {
		this.indexee = index;
	}
	@ManyToOne
    @JoinColumn(name ="fk_partie")
    private Partie partie;
	public String titre="";
	public Partie getPartie() {
		return partie;
	}
	public void setPartie(Partie partie) {
		this.partie = partie;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
}
