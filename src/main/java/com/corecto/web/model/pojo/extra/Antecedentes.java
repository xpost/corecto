package com.corecto.web.model.pojo.extra;

// Generated 11-nov-2013 20:22:20 by Hibernate Tools 3.4.0.CR1

/**
 * Antecedentes generated by hbm2java
 */
public class Antecedentes implements java.io.Serializable {

	private long idantecedente;
	private Consulta consulta;
	private Boolean personalTabaquismo;
	private Boolean personalCardio;
	private Boolean personalAlcohol;
	private Boolean personalDbt;
	private Boolean personalNinguno;
	private String personalOtro;
	private Boolean patologicoNinguno;
	private Boolean patologicoColitis;
	private Boolean patologicoAdenoma;
	private Boolean patologicoCrohn;
	private Boolean patologicoNeoplasia;
	private Boolean patologicoHiv;
	private String neoplasia;
	private String familiarCancer;
	private String antecedentesCcrh;

	public Antecedentes() {
	}

	public Antecedentes(long idantecedente, Consulta consulta, Boolean personalTabaquismo,
			Boolean personalCardio, Boolean personalAlcohol, Boolean personalDbt, Boolean personalNinguno,
			String personalOtro, Boolean patologicoNinguno, Boolean patologicoColitis,
			Boolean patologicoAdenoma, Boolean patologicoCrohn, Boolean patologicoNeoplasia,
			Boolean patologicoHiv, String neoplasia, String familiarCancer, String antecedentesCcrh) {
		super();
		this.idantecedente = idantecedente;
		this.consulta = consulta;
		this.personalTabaquismo = personalTabaquismo;
		this.personalCardio = personalCardio;
		this.personalAlcohol = personalAlcohol;
		this.personalDbt = personalDbt;
		this.personalNinguno = personalNinguno;
		this.personalOtro = personalOtro;
		this.patologicoNinguno = patologicoNinguno;
		this.patologicoColitis = patologicoColitis;
		this.patologicoAdenoma = patologicoAdenoma;
		this.patologicoCrohn = patologicoCrohn;
		this.patologicoNeoplasia = patologicoNeoplasia;
		this.patologicoHiv = patologicoHiv;
		this.neoplasia = neoplasia;
		this.familiarCancer = familiarCancer;
		this.antecedentesCcrh = antecedentesCcrh;
	}

	public long getIdantecedente() {
		return idantecedente;
	}

	public void setIdantecedente(long idantecedente) {
		this.idantecedente = idantecedente;
	}

	public Consulta getConsulta() {
		return consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public Boolean getPersonalTabaquismo() {
		return personalTabaquismo;
	}

	public void setPersonalTabaquismo(Boolean personalTabaquismo) {
		this.personalTabaquismo = personalTabaquismo;
	}

	public Boolean getPersonalCardio() {
		return personalCardio;
	}

	public void setPersonalCardio(Boolean personalCardio) {
		this.personalCardio = personalCardio;
	}

	public Boolean getPersonalAlcohol() {
		return personalAlcohol;
	}

	public void setPersonalAlcohol(Boolean personalAlcohol) {
		this.personalAlcohol = personalAlcohol;
	}

	public Boolean getPersonalDbt() {
		return personalDbt;
	}

	public void setPersonalDbt(Boolean personalDbt) {
		this.personalDbt = personalDbt;
	}

	public Boolean getPersonalNinguno() {
		return personalNinguno;
	}

	public void setPersonalNinguno(Boolean personalNinguno) {
		this.personalNinguno = personalNinguno;
	}

	public String getPersonalOtro() {
		return personalOtro;
	}

	public void setPersonalOtro(String personalOtro) {
		this.personalOtro = personalOtro;
	}

	public Boolean getPatologicoNinguno() {
		return patologicoNinguno;
	}

	public void setPatologicoNinguno(Boolean patologicoNinguno) {
		this.patologicoNinguno = patologicoNinguno;
	}

	public Boolean getPatologicoColitis() {
		return patologicoColitis;
	}

	public void setPatologicoColitis(Boolean patologicoColitis) {
		this.patologicoColitis = patologicoColitis;
	}

	public Boolean getPatologicoAdenoma() {
		return patologicoAdenoma;
	}

	public void setPatologicoAdenoma(Boolean patologicoAdenoma) {
		this.patologicoAdenoma = patologicoAdenoma;
	}

	public Boolean getPatologicoCrohn() {
		return patologicoCrohn;
	}

	public void setPatologicoCrohn(Boolean patologicoCrohn) {
		this.patologicoCrohn = patologicoCrohn;
	}

	public Boolean getPatologicoNeoplasia() {
		return patologicoNeoplasia;
	}

	public void setPatologicoNeoplasia(Boolean patologicoNeoplasia) {
		this.patologicoNeoplasia = patologicoNeoplasia;
	}

	public Boolean getPatologicoHiv() {
		return patologicoHiv;
	}

	public void setPatologicoHiv(Boolean patologicoHiv) {
		this.patologicoHiv = patologicoHiv;
	}

	public String getNeoplasia() {
		return neoplasia;
	}

	public void setNeoplasia(String neoplasia) {
		this.neoplasia = neoplasia;
	}

	public String getFamiliarCancer() {
		return familiarCancer;
	}

	public void setFamiliarCancer(String familiarCancer) {
		this.familiarCancer = familiarCancer;
	}

	public String getAntecedentesCcrh() {
		return antecedentesCcrh;
	}

	public void setAntecedentesCcrh(String antecedentesCcrh) {
		this.antecedentesCcrh = antecedentesCcrh;
	}

}
