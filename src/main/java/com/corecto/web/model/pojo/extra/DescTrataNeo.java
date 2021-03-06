package com.corecto.web.model.pojo.extra;

import java.util.Date;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

/**
 * DescTrataNeo generated by hbm2java
 */
public class DescTrataNeo implements java.io.Serializable {

	private Consulta consulta;
	private Long iddesctrataneo;
	private String radioterapia;
	private String radioDosis;
	private Date radioFechaInicio;
	private Date radioFechaFinal;
	private String radioSuspendio;
	private String quimioEsquema;
	private String quimioNroCiclos;
	private Date quimioFechaInicio;
	private Date quimioFechaFinal;
	private String toxicidad;
	private String toxGrado;

	public DescTrataNeo() {
	}

	public DescTrataNeo(Long iddesctrataneo, 
			String radioterapia, String radioDosis, Date radioFechaInicio,
			Date radioFechaFinal, String radioSuspendio, String quimioEsquema,
			String quimioNroCiclos, Date quimioFechaInicio,
			Date quimioFechaFinal, String toxicidad, String toxGrado) {
		this.iddesctrataneo = iddesctrataneo;
		this.radioterapia = radioterapia;
		this.radioDosis = radioDosis;
		this.radioFechaInicio = radioFechaInicio;
		this.radioFechaFinal = radioFechaFinal;
		this.radioSuspendio = radioSuspendio;
		this.quimioEsquema = quimioEsquema;
		this.quimioNroCiclos = quimioNroCiclos;
		this.quimioFechaInicio = quimioFechaInicio;
		this.quimioFechaFinal = quimioFechaFinal;
		this.toxicidad = toxicidad;
		this.toxGrado = toxGrado;
	}

	public Long getIddesctrataneo() {
		return this.iddesctrataneo;
	}

	public void setIddesctrataneo(Long iddesctrataneo) {
		this.iddesctrataneo = iddesctrataneo;
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

	public String getRadioSuspendio() {
		return this.radioSuspendio;
	}

	public void setRadioSuspendio(String radioSuspendio) {
		this.radioSuspendio = radioSuspendio;
	}

	public String getQuimioEsquema() {
		return this.quimioEsquema;
	}

	public void setQuimioEsquema(String quimioEsquema) {
		this.quimioEsquema = quimioEsquema;
	}

	public String getQuimioNroCiclos() {
		return this.quimioNroCiclos;
	}

	public void setQuimioNroCiclos(String quimioNroCiclos) {
		this.quimioNroCiclos = quimioNroCiclos;
	}

	public Date getQuimioFechaInicio() {
		return this.quimioFechaInicio;
	}

	public void setQuimioFechaInicio(Date quimioFechaInicio) {
		this.quimioFechaInicio = quimioFechaInicio;
	}

	public Date getQuimioFechaFinal() {
		return this.quimioFechaFinal;
	}

	public void setQuimioFechaFinal(Date quimioFechaFinal) {
		this.quimioFechaFinal = quimioFechaFinal;
	}

	public String getToxicidad() {
		return this.toxicidad;
	}

	public void setToxicidad(String toxicidad) {
		this.toxicidad = toxicidad;
	}

	public String getToxGrado() {
		return this.toxGrado;
	}

	public void setToxGrado(String toxGrado) {
		this.toxGrado = toxGrado;
	}


	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

}
