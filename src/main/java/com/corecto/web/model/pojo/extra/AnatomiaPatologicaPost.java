package com.corecto.web.model.pojo.extra;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * AnatomiaPatologicaPost generated by hbm2java
 */
public class AnatomiaPatologicaPost implements java.io.Serializable {

	private long idanatomiapatopost;
	private Consulta consulta;
	private String nroBiopsia;
	private Date fechaAp;
	private String diagHisto;
	private String gradoDif;
	private String tumor;
	private String ganResecados;
	private String ganPositivos;
	private String invVascular;
	private String invPeri;
	private String linfa;
	private String buddingTumoral;
	private String pushingBorder;
	private String gradoRegresion;
	private String cap;
	private String rtaComPato;
	private String ihq;
	private String kras;

	public AnatomiaPatologicaPost() {
	}

	public AnatomiaPatologicaPost(long idanatomiapatopost) {
		this.idanatomiapatopost = idanatomiapatopost;
	}

	public AnatomiaPatologicaPost(long idanatomiapatopost, Consulta consulta,
			String nroBiopsia, Date fechaAp, String diagHisto, String gradoDif,
			String tumor, String ganResecados, String ganPositivos,
			String invVascular, String invPeri, String linfa,
			String buddingTumoral, String pushingBorder, String gradoRegresion,
			String cap, String rtaComPato, String ihq, String kras) {
		this.idanatomiapatopost = idanatomiapatopost;
		this.consulta = consulta;
		this.nroBiopsia = nroBiopsia;
		this.fechaAp = fechaAp;
		this.diagHisto = diagHisto;
		this.gradoDif = gradoDif;
		this.tumor = tumor;
		this.ganResecados = ganResecados;
		this.ganPositivos = ganPositivos;
		this.invVascular = invVascular;
		this.invPeri = invPeri;
		this.linfa = linfa;
		this.buddingTumoral = buddingTumoral;
		this.pushingBorder = pushingBorder;
		this.gradoRegresion = gradoRegresion;
		this.cap = cap;
		this.rtaComPato = rtaComPato;
		this.ihq = ihq;
		this.kras = kras;
	}

	public long getIdanatomiapatopost() {
		return this.idanatomiapatopost;
	}

	public void setIdanatomiapatopost(long idanatomiapatopost) {
		this.idanatomiapatopost = idanatomiapatopost;
	}

	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public String getNroBiopsia() {
		return this.nroBiopsia;
	}

	public void setNroBiopsia(String nroBiopsia) {
		this.nroBiopsia = nroBiopsia;
	}

	public Date getFechaAp() {
		return this.fechaAp;
	}

	public void setFechaAp(Date fechaAp) {
		this.fechaAp = fechaAp;
	}

	public String getDiagHisto() {
		return this.diagHisto;
	}

	public void setDiagHisto(String diagHisto) {
		this.diagHisto = diagHisto;
	}

	public String getGradoDif() {
		return this.gradoDif;
	}

	public void setGradoDif(String gradoDif) {
		this.gradoDif = gradoDif;
	}

	public String getTumor() {
		return this.tumor;
	}

	public void setTumor(String tumor) {
		this.tumor = tumor;
	}

	public String getGanResecados() {
		return this.ganResecados;
	}

	public void setGanResecados(String ganResecados) {
		this.ganResecados = ganResecados;
	}

	public String getGanPositivos() {
		return this.ganPositivos;
	}

	public void setGanPositivos(String ganPositivos) {
		this.ganPositivos = ganPositivos;
	}

	public String getInvVascular() {
		return this.invVascular;
	}

	public void setInvVascular(String invVascular) {
		this.invVascular = invVascular;
	}

	public String getInvPeri() {
		return this.invPeri;
	}

	public void setInvPeri(String invPeri) {
		this.invPeri = invPeri;
	}

	public String getLinfa() {
		return this.linfa;
	}

	public void setLinfa(String linfa) {
		this.linfa = linfa;
	}

	public String getBuddingTumoral() {
		return this.buddingTumoral;
	}

	public void setBuddingTumoral(String buddingTumoral) {
		this.buddingTumoral = buddingTumoral;
	}

	public String getPushingBorder() {
		return this.pushingBorder;
	}

	public void setPushingBorder(String pushingBorder) {
		this.pushingBorder = pushingBorder;
	}

	public String getGradoRegresion() {
		return this.gradoRegresion;
	}

	public void setGradoRegresion(String gradoRegresion) {
		this.gradoRegresion = gradoRegresion;
	}

	public String getCap() {
		return this.cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getRtaComPato() {
		return this.rtaComPato;
	}

	public void setRtaComPato(String rtaComPato) {
		this.rtaComPato = rtaComPato;
	}

	public String getIhq() {
		return this.ihq;
	}

	public void setIhq(String ihq) {
		this.ihq = ihq;
	}

	public String getKras() {
		return this.kras;
	}

	public void setKras(String kras) {
		this.kras = kras;
	}

}
