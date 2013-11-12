package com.corecto.web.model.pojo.extra;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * TratamientoAdyu generated by hbm2java
 */
public class TratamientoAdyu implements java.io.Serializable {

	private long idtratamientoadyu;
	private Consulta consulta;
	private String quimioterapia;
	private String quimioNroCiclos;
	private String radioterapia;
	private String radioDosis;
	private Date radioFechaInicio;
	private Date radioFechaFinal;
	private String suspendio;
	private String notas;

	public TratamientoAdyu() {
	}

	public TratamientoAdyu(long idtratamientoadyu) {
		this.idtratamientoadyu = idtratamientoadyu;
	}

	public TratamientoAdyu(long idtratamientoadyu, Consulta consulta,
			String quimioterapia, String quimioNroCiclos, String radioterapia,
			String radioDosis, Date radioFechaInicio, Date radioFechaFinal,
			String suspendio, String notas) {
		this.idtratamientoadyu = idtratamientoadyu;
		this.consulta = consulta;
		this.quimioterapia = quimioterapia;
		this.quimioNroCiclos = quimioNroCiclos;
		this.radioterapia = radioterapia;
		this.radioDosis = radioDosis;
		this.radioFechaInicio = radioFechaInicio;
		this.radioFechaFinal = radioFechaFinal;
		this.suspendio = suspendio;
		this.notas = notas;
	}

	public long getIdtratamientoadyu() {
		return this.idtratamientoadyu;
	}

	public void setIdtratamientoadyu(long idtratamientoadyu) {
		this.idtratamientoadyu = idtratamientoadyu;
	}

	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public String getQuimioterapia() {
		return this.quimioterapia;
	}

	public void setQuimioterapia(String quimioterapia) {
		this.quimioterapia = quimioterapia;
	}

	public String getQuimioNroCiclos() {
		return this.quimioNroCiclos;
	}

	public void setQuimioNroCiclos(String quimioNroCiclos) {
		this.quimioNroCiclos = quimioNroCiclos;
	}

	public String getRadioterapia() {
		return this.radioterapia;
	}

	public void setRadioterapia(String radioterapia) {
		this.radioterapia = radioterapia;
	}

	public String getRadioDosis() {
		return this.radioDosis;
	}

	public void setRadioDosis(String radioDosis) {
		this.radioDosis = radioDosis;
	}

	public Date getRadioFechaInicio() {
		return this.radioFechaInicio;
	}

	public void setRadioFechaInicio(Date radioFechaInicio) {
		this.radioFechaInicio = radioFechaInicio;
	}

	public Date getRadioFechaFinal() {
		return this.radioFechaFinal;
	}

	public void setRadioFechaFinal(Date radioFechaFinal) {
		this.radioFechaFinal = radioFechaFinal;
	}

	public String getSuspendio() {
		return this.suspendio;
	}

	public void setSuspendio(String suspendio) {
		this.suspendio = suspendio;
	}

	public String getNotas() {
		return this.notas;
	}

	public void setNotas(String notas) {
		this.notas = notas;
	}

}
