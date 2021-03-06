package com.corecto.web.model.pojo.extra;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * Estadificacion generated by hbm2java
 */
public class Estadificacion implements java.io.Serializable {

	private long idestadificacion;
	private Consulta consulta;
	private String rmCentro;
	private Date rmFecha;
	private String rmDistEsfinter;
	private Integer rmDistAnal;
	private String rmAltura;
	private Integer rmTumor;
	private Integer rmTumorN;
	private String crm;
	private String emvi;
	private String depSatelites;
	private String tumoRectoInferior;
	private String ganglios;
	private String gangliosLate;
	private String infiltraEsfinter;
	private String tcTorax;
	private String tcAbd;
	private String petCt;
	private String mts;
	private String suv;
	private Date marTumFecha;
	private String ceaAumentado;
	private String ca19;
	private String tnmT;
	private String tnmN;
	private String tnmM;
	private String tnmPt;
	private String tnmPn;
	private String tnmPm;
	private String metastasis;
	private String metastasisOtra;
	private Date revRmFecha;
	private String revDistanEsfinter;
	private String revDistanAnal;
	private String revAltura;
	private String revTumor;
	private String revCrm;
	private String revEmvi;
	private String revEstadifTumores;
	private String revGanIngui;
	private String revGanLateral;
	private String revInfiltraEsf;

	public Estadificacion() {
	}

	public Estadificacion(long idestadificacion) {
		this.idestadificacion = idestadificacion;
	}

	public Estadificacion(long idestadificacion, Consulta consulta, String rmCentro, Date rmFecha,
			String rmDistEsfinter, Integer rmDistAnal, String rmAltura, Integer rmTumor, String crm,
			String emvi, String depSatelites, String tumoRectoInferior, String ganglios,
			String infiltraEsfinter, String tcTorax, String tcAbd, String petCt, String mts, String suv,
			Date marTumFecha, String ceaAumentado, String ca19, String tnmT, String tnmN, String tnmM,
			String tnmPt, String tnmPn, String tnmPm, String metastasis, Date revRmFecha,
			String revDistanEsfinter, String revDistanAnal, String revAltura, String revTumor, String revCrm,
			String revEmvi, String revEstadifTumores, String revGanIngui, String revGanLateral,
			String revInfiltraEsf) {
		this.idestadificacion = idestadificacion;
		this.consulta = consulta;
		this.rmCentro = rmCentro;
		this.rmFecha = rmFecha;
		this.rmDistEsfinter = rmDistEsfinter;
		this.rmDistAnal = rmDistAnal;
		this.rmAltura = rmAltura;
		this.rmTumor = rmTumor;
		this.crm = crm;
		this.emvi = emvi;
		this.depSatelites = depSatelites;
		this.tumoRectoInferior = tumoRectoInferior;
		this.ganglios = ganglios;
		this.infiltraEsfinter = infiltraEsfinter;
		this.tcTorax = tcTorax;
		this.tcAbd = tcAbd;
		this.petCt = petCt;
		this.mts = mts;
		this.suv = suv;
		this.marTumFecha = marTumFecha;
		this.ceaAumentado = ceaAumentado;
		this.ca19 = ca19;
		this.tnmT = tnmT;
		this.tnmN = tnmN;
		this.tnmM = tnmM;
		this.tnmPt = tnmPt;
		this.tnmPn = tnmPn;
		this.tnmPm = tnmPm;
		this.metastasis = metastasis;
		this.revRmFecha = revRmFecha;
		this.revDistanEsfinter = revDistanEsfinter;
		this.revDistanAnal = revDistanAnal;
		this.revAltura = revAltura;
		this.revTumor = revTumor;
		this.revCrm = revCrm;
		this.revEmvi = revEmvi;
		this.revEstadifTumores = revEstadifTumores;
		this.revGanIngui = revGanIngui;
		this.revGanLateral = revGanLateral;
		this.revInfiltraEsf = revInfiltraEsf;
	}

	public long getIdestadificacion() {
		return this.idestadificacion;
	}

	public void setIdestadificacion(long idestadificacion) {
		this.idestadificacion = idestadificacion;
	}

	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public String getRmCentro() {
		return this.rmCentro;
	}

	public void setRmCentro(String rmCentro) {
		this.rmCentro = rmCentro;
	}

	public Date getRmFecha() {
		return this.rmFecha;
	}

	public void setRmFecha(Date rmFecha) {
		this.rmFecha = rmFecha;
	}

	public String getRmDistEsfinter() {
		return this.rmDistEsfinter;
	}

	public void setRmDistEsfinter(String rmDistEsfinter) {
		this.rmDistEsfinter = rmDistEsfinter;
	}

	public Integer getRmDistAnal() {
		return this.rmDistAnal;
	}

	public void setRmDistAnal(Integer rmDistAnal) {
		this.rmDistAnal = rmDistAnal;
	}

	public String getRmAltura() {
		return this.rmAltura;
	}

	public void setRmAltura(String rmAltura) {
		this.rmAltura = rmAltura;
	}

	public Integer getRmTumor() {
		return this.rmTumor;
	}

	public void setRmTumor(Integer rmTumor) {
		this.rmTumor = rmTumor;
	}

	public Integer getRmTumorN() {
		return rmTumorN;
	}

	public void setRmTumorN(Integer rmTumorN) {
		this.rmTumorN = rmTumorN;
	}

	public String getCrm() {
		return this.crm;
	}

	public void setCrm(String crm) {
		this.crm = crm;
	}

	public String getEmvi() {
		return this.emvi;
	}

	public void setEmvi(String emvi) {
		this.emvi = emvi;
	}

	public String getDepSatelites() {
		return this.depSatelites;
	}

	public void setDepSatelites(String depSatelites) {
		this.depSatelites = depSatelites;
	}

	public String getTumoRectoInferior() {
		return this.tumoRectoInferior;
	}

	public void setTumoRectoInferior(String tumoRectoInferior) {
		this.tumoRectoInferior = tumoRectoInferior;
	}

	public String getGanglios() {
		return this.ganglios;
	}

	public void setGanglios(String ganglios) {
		this.ganglios = ganglios;
	}

	public String getInfiltraEsfinter() {
		return this.infiltraEsfinter;
	}

	public void setInfiltraEsfinter(String infiltraEsfinter) {
		this.infiltraEsfinter = infiltraEsfinter;
	}

	public String getTcTorax() {
		return this.tcTorax;
	}

	public void setTcTorax(String tcTorax) {
		this.tcTorax = tcTorax;
	}

	public String getTcAbd() {
		return this.tcAbd;
	}

	public void setTcAbd(String tcAbd) {
		this.tcAbd = tcAbd;
	}

	public String getPetCt() {
		return this.petCt;
	}

	public void setPetCt(String petCt) {
		this.petCt = petCt;
	}

	public String getMts() {
		return this.mts;
	}

	public void setMts(String mts) {
		this.mts = mts;
	}

	public String getSuv() {
		return this.suv;
	}

	public void setSuv(String suv) {
		this.suv = suv;
	}

	public Date getMarTumFecha() {
		return this.marTumFecha;
	}

	public void setMarTumFecha(Date marTumFecha) {
		this.marTumFecha = marTumFecha;
	}

	public String getCeaAumentado() {
		return this.ceaAumentado;
	}

	public void setCeaAumentado(String ceaAumentado) {
		this.ceaAumentado = ceaAumentado;
	}

	public String getCa19() {
		return this.ca19;
	}

	public void setCa19(String ca19) {
		this.ca19 = ca19;
	}

	public String getTnmT() {
		return this.tnmT;
	}

	public void setTnmT(String tnmT) {
		this.tnmT = tnmT;
	}

	public String getTnmN() {
		return this.tnmN;
	}

	public void setTnmN(String tnmN) {
		this.tnmN = tnmN;
	}

	public String getTnmM() {
		return this.tnmM;
	}

	public void setTnmM(String tnmM) {
		this.tnmM = tnmM;
	}

	public String getTnmPt() {
		return this.tnmPt;
	}

	public void setTnmPt(String tnmPt) {
		this.tnmPt = tnmPt;
	}

	public String getTnmPn() {
		return this.tnmPn;
	}

	public void setTnmPn(String tnmPn) {
		this.tnmPn = tnmPn;
	}

	public String getTnmPm() {
		return this.tnmPm;
	}

	public void setTnmPm(String tnmPm) {
		this.tnmPm = tnmPm;
	}

	public String getMetastasis() {
		return this.metastasis;
	}

	public void setMetastasis(String metastasis) {
		this.metastasis = metastasis;
	}

	public Date getRevRmFecha() {
		return this.revRmFecha;
	}

	public void setRevRmFecha(Date revRmFecha) {
		this.revRmFecha = revRmFecha;
	}

	public String getRevDistanEsfinter() {
		return this.revDistanEsfinter;
	}

	public void setRevDistanEsfinter(String revDistanEsfinter) {
		this.revDistanEsfinter = revDistanEsfinter;
	}

	public String getRevDistanAnal() {
		return this.revDistanAnal;
	}

	public void setRevDistanAnal(String revDistanAnal) {
		this.revDistanAnal = revDistanAnal;
	}

	public String getRevAltura() {
		return this.revAltura;
	}

	public void setRevAltura(String revAltura) {
		this.revAltura = revAltura;
	}

	public String getRevTumor() {
		return this.revTumor;
	}

	public void setRevTumor(String revTumor) {
		this.revTumor = revTumor;
	}

	public String getRevCrm() {
		return this.revCrm;
	}

	public void setRevCrm(String revCrm) {
		this.revCrm = revCrm;
	}

	public String getRevEmvi() {
		return this.revEmvi;
	}

	public void setRevEmvi(String revEmvi) {
		this.revEmvi = revEmvi;
	}

	public String getRevEstadifTumores() {
		return this.revEstadifTumores;
	}

	public void setRevEstadifTumores(String revEstadifTumores) {
		this.revEstadifTumores = revEstadifTumores;
	}

	public String getRevGanIngui() {
		return this.revGanIngui;
	}

	public void setRevGanIngui(String revGanIngui) {
		this.revGanIngui = revGanIngui;
	}

	public String getRevGanLateral() {
		return this.revGanLateral;
	}

	public void setRevGanLateral(String revGanLateral) {
		this.revGanLateral = revGanLateral;
	}

	public String getRevInfiltraEsf() {
		return this.revInfiltraEsf;
	}

	public void setRevInfiltraEsf(String revInfiltraEsf) {
		this.revInfiltraEsf = revInfiltraEsf;
	}

	public String getGangliosLate() {
		return gangliosLate;
	}

	public void setGangliosLate(String gangliosLate) {
		this.gangliosLate = gangliosLate;
	}

	public String getMetastasisOtra() {
		return metastasisOtra;
	}

	public void setMetastasisOtra(String metastasisOtra) {
		this.metastasisOtra = metastasisOtra;
	}

}
