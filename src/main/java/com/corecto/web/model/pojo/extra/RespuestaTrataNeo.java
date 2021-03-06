package com.corecto.web.model.pojo.extra;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * RespuestaTrataNeo generated by hbm2java
 */
public class RespuestaTrataNeo implements java.io.Serializable {

	private long idrespuestatrataneo;
	private Consulta consulta;
	private Date rmFecha;
	private String rmCentro;
	private String rmDistEsfinter;
	private String rmDistAnal;
	private String rmAltura;
	private String rmTumor;
	private String crm;
	private String emvi;
	private String depSatelites;
	private String gangliosImgui;
	private String gangliosLateral;
	private String infiltraEsf;
	private String estadifTumor;
	private String gradoRegre;
	private String evaRespuesta;
	private String tactoRectal;
	private String exaInfiltraEsf;
	private String rsc;
	private String rscAltura;
	private Date rscFecha;
	private String vcc;
	private String vccAltura;
	private Date vccFecha;
	private String ee;
	private String eeInfiltraEsf;
	private Date eeFecha;

	public RespuestaTrataNeo() {
	}

	public RespuestaTrataNeo(long idrespuestatrataneo) {
		this.idrespuestatrataneo = idrespuestatrataneo;
	}

	public RespuestaTrataNeo(long idrespuestatrataneo, Consulta consulta,
			Date rmFecha, String rmCentro, String rmDistEsfinter,
			String rmDistAnal, String rmAltura, String rmTumor, String crm,
			String emvi, String depSatelites, String gangliosImgui,
			String gangliosLateral, String infiltraEsf, String estadifTumor,
			String gradoRegre, String evaRespuesta, String tactoRectal,
			String exaInfiltraEsf, String rsc, String rscAltura, Date rscFecha,
			String vcc, String vccAltura, Date vccFecha, String ee,
			String eeInfiltraEsf, Date eeFecha) {
		this.idrespuestatrataneo = idrespuestatrataneo;
		this.consulta = consulta;
		this.rmFecha = rmFecha;
		this.rmCentro = rmCentro;
		this.rmDistEsfinter = rmDistEsfinter;
		this.rmDistAnal = rmDistAnal;
		this.rmAltura = rmAltura;
		this.rmTumor = rmTumor;
		this.crm = crm;
		this.emvi = emvi;
		this.depSatelites = depSatelites;
		this.gangliosImgui = gangliosImgui;
		this.gangliosLateral = gangliosLateral;
		this.infiltraEsf = infiltraEsf;
		this.estadifTumor = estadifTumor;
		this.gradoRegre = gradoRegre;
		this.evaRespuesta = evaRespuesta;
		this.tactoRectal = tactoRectal;
		this.exaInfiltraEsf = exaInfiltraEsf;
		this.rsc = rsc;
		this.rscAltura = rscAltura;
		this.rscFecha = rscFecha;
		this.vcc = vcc;
		this.vccAltura = vccAltura;
		this.vccFecha = vccFecha;
		this.ee = ee;
		this.eeInfiltraEsf = eeInfiltraEsf;
		this.eeFecha = eeFecha;
	}

	public long getIdrespuestatrataneo() {
		return this.idrespuestatrataneo;
	}

	public void setIdrespuestatrataneo(long idrespuestatrataneo) {
		this.idrespuestatrataneo = idrespuestatrataneo;
	}

	public Consulta getConsulta() {
		return this.consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public Date getRmFecha() {
		return this.rmFecha;
	}

	public void setRmFecha(Date rmFecha) {
		this.rmFecha = rmFecha;
	}

	public String getRmCentro() {
		return this.rmCentro;
	}

	public void setRmCentro(String rmCentro) {
		this.rmCentro = rmCentro;
	}

	public String getRmDistEsfinter() {
		return this.rmDistEsfinter;
	}

	public void setRmDistEsfinter(String rmDistEsfinter) {
		this.rmDistEsfinter = rmDistEsfinter;
	}

	public String getRmDistAnal() {
		return this.rmDistAnal;
	}

	public void setRmDistAnal(String rmDistAnal) {
		this.rmDistAnal = rmDistAnal;
	}

	public String getRmAltura() {
		return this.rmAltura;
	}

	public void setRmAltura(String rmAltura) {
		this.rmAltura = rmAltura;
	}

	public String getRmTumor() {
		return this.rmTumor;
	}

	public void setRmTumor(String rmTumor) {
		this.rmTumor = rmTumor;
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

	public String getGangliosImgui() {
		return this.gangliosImgui;
	}

	public void setGangliosImgui(String gangliosImgui) {
		this.gangliosImgui = gangliosImgui;
	}

	public String getGangliosLateral() {
		return this.gangliosLateral;
	}

	public void setGangliosLateral(String gangliosLateral) {
		this.gangliosLateral = gangliosLateral;
	}

	public String getInfiltraEsf() {
		return this.infiltraEsf;
	}

	public void setInfiltraEsf(String infiltraEsf) {
		this.infiltraEsf = infiltraEsf;
	}

	public String getEstadifTumor() {
		return this.estadifTumor;
	}

	public void setEstadifTumor(String estadifTumor) {
		this.estadifTumor = estadifTumor;
	}

	public String getGradoRegre() {
		return this.gradoRegre;
	}

	public void setGradoRegre(String gradoRegre) {
		this.gradoRegre = gradoRegre;
	}

	public String getEvaRespuesta() {
		return this.evaRespuesta;
	}

	public void setEvaRespuesta(String evaRespuesta) {
		this.evaRespuesta = evaRespuesta;
	}

	public String getTactoRectal() {
		return this.tactoRectal;
	}

	public void setTactoRectal(String tactoRectal) {
		this.tactoRectal = tactoRectal;
	}

	public String getExaInfiltraEsf() {
		return this.exaInfiltraEsf;
	}

	public void setExaInfiltraEsf(String exaInfiltraEsf) {
		this.exaInfiltraEsf = exaInfiltraEsf;
	}

	public String getRsc() {
		return this.rsc;
	}

	public void setRsc(String rsc) {
		this.rsc = rsc;
	}

	public String getRscAltura() {
		return this.rscAltura;
	}

	public void setRscAltura(String rscAltura) {
		this.rscAltura = rscAltura;
	}

	public Date getRscFecha() {
		return this.rscFecha;
	}

	public void setRscFecha(Date rscFecha) {
		this.rscFecha = rscFecha;
	}

	public String getVcc() {
		return this.vcc;
	}

	public void setVcc(String vcc) {
		this.vcc = vcc;
	}

	public String getVccAltura() {
		return this.vccAltura;
	}

	public void setVccAltura(String vccAltura) {
		this.vccAltura = vccAltura;
	}

	public Date getVccFecha() {
		return this.vccFecha;
	}

	public void setVccFecha(Date vccFecha) {
		this.vccFecha = vccFecha;
	}

	public String getEe() {
		return this.ee;
	}

	public void setEe(String ee) {
		this.ee = ee;
	}

	public String getEeInfiltraEsf() {
		return this.eeInfiltraEsf;
	}

	public void setEeInfiltraEsf(String eeInfiltraEsf) {
		this.eeInfiltraEsf = eeInfiltraEsf;
	}

	public Date getEeFecha() {
		return this.eeFecha;
	}

	public void setEeFecha(Date eeFecha) {
		this.eeFecha = eeFecha;
	}

}
