package org.formation.bean;

import java.io.Serializable;

import jakarta.annotation.ManagedBean;

@ManagedBean
public class Formation implements Serializable {
	private String date;
	private String sujet;
		
	public String toString()
	{
		return "Formation du " + date + " en " + sujet;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}
}
