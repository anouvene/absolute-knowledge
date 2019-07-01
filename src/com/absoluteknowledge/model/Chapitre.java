package com.absoluteknowledge.model;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Chapitre implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5349443150932030363L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private int indexee;
	public int getIndexee() {
		return indexee;
	}
	public void setIndexe(int index) {
		this.indexee = index;
	}
	@ManyToOne
    @JoinColumn(name ="fk_cours")
    private Cours cours;
	@OneToMany(cascade=CascadeType.ALL,mappedBy ="chapitre")
	List<Partie> parties = new ArrayList<Partie>();
	public String titre="";
	public Cours getCours() {
		return cours;
	}
	public void setCours(Cours cours) {
		this.cours = cours;
	}
	public List<Partie> getParties() {
		return parties;
	}
	public void setParties(List<Partie> parties) {
		this.parties = parties;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
}
