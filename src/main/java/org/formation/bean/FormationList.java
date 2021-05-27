package org.formation.bean;

import java.io.Serializable;
import java.util.ArrayList;

import jakarta.annotation.ManagedBean;
import org.formation.bean.Formation;

@ManagedBean
public class FormationList extends ArrayList<Formation> implements Serializable {
	public FormationList() {
		super();
	}
}
