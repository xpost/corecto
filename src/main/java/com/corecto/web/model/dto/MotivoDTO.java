package com.corecto.web.model.dto;

public class MotivoDTO {

	private long idmotivo;
	private long idConsulta;
	private String motivo;
	private String fechaInicio;
	private String evoMeses;
	private String motivoOtro;

	public MotivoDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getIdConsulta() {
		return idConsulta;
	}

	public void setIdConsulta(long idConsulta) {
		this.idConsulta = idConsulta;
	}

	public long getIdmotivo() {
		return idmotivo;
	}

	public void setIdmotivo(long idmotivo) {
		this.idmotivo = idmotivo;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public String getEvoMeses() {
		return evoMeses;
	}

	public void setEvoMeses(String evoMeses) {
		this.evoMeses = evoMeses;
	}

	public String getMotivoOtro() {
		return motivoOtro;
	}

	public void setMotivoOtro(String motivoOtro) {
		this.motivoOtro = motivoOtro;
	}

}
