package org.formation.bean;

import java.io.Serializable;

import jakarta.annotation.ManagedBean;

@ManagedBean
public class Formation implements Serializable {
	private String dateDebut;
	private String dateFin;
	private String formateur;
	private String sujet;
	
	public String getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(String dateDebut) {
		this.dateDebut = dateDebut;
	}
	public String getDateFin() {
		return dateFin;
	}
	public void setDateFin(String dateFin) {
		this.dateFin = dateFin;
	}
	public String getFormateur() {
		return formateur;
	}
	public void setFormateur(String formateur) {
		this.formateur = formateur;
	}
	public String getSujet() {
		return sujet;
	}
	public void setSujet(String sujet) {
		this.sujet = sujet;
	}
	
	public String toString()
	{
		return "Formation " + dateDebut + " => " + dateFin + ":" + formateur + "/" + sujet;
	}
}
