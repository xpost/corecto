/***************************************************************************************
 * No part of this program may be photocopied reproduced or translated to another program
 * language without prior written consent of Matias E. Iseas
 **************************************************************************************/
package com.corecto.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.text.WordUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.corecto.web.model.dto.FilterDTO;
import com.corecto.web.model.dto.PacienteDTO;
import com.corecto.web.model.dto.PageResult;
import com.corecto.web.service.PatientService;

import fr.xebia.audit.Audited;

//import fr.xebia.audit.Audited;

/**
 * TODO comment<br>
 * <br>
 * <b>Change log:</b>
 * <ul>
 * <li>1.0 20/02/2013 - Xpost - initial version</li>
 * </ul>
 * 
 * @author Xpost
 * @version 1.0
 */
@Controller
public class PatientController {

	Logger LOG = LoggerFactory.getLogger(PatientController.class);

	@Autowired
	PatientService patientService;

	@RequestMapping(value = "/findPatientFilter.json", method = RequestMethod.POST)
	public @ResponseBody
	List<PacienteDTO> findPatientFilter(@RequestBody FilterDTO filterDTO) {
		LOG.info("ClientController.findPatientFilter()");
		List<PacienteDTO> resultList = new ArrayList<PacienteDTO>();
		PageResult pageResult = new PageResult();
		try {
			resultList = patientService.listPatientByFilter(filterDTO);
			pageResult.setPage("1");
			pageResult.setRecords(resultList.size() + "");
			pageResult.setRows(resultList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultList;
	}

	@Audited(message = "Accion: Agregar Paciente")
	@RequestMapping(value = "/addNewPatient.json", method = RequestMethod.POST)
	public @ResponseBody
	long saveNewPaciente(@RequestBody PacienteDTO pacienteDTO) {
		LOG.info("PatientController.saveNewPaciente()");
		long returnNewId = -1;
		try {
			returnNewId = patientService.savePatient(pacienteDTO);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

		return returnNewId;
	}

	@RequestMapping(value = "/editPatient.json", method = RequestMethod.POST)
	public @ResponseBody
	boolean editPatient(@RequestBody PacienteDTO pacienteDTO) {
		LOG.info("PatientController.editPatient()");
		try {
			patientService.updatePatient(pacienteDTO);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	@Audited(message = "Accion: Busqueda inical de pacientes en Listado")
	@RequestMapping(value = "/loadlistPatients.json", method = RequestMethod.GET)
	public @ResponseBody
	PageResult loadlistPatients(
			@RequestParam(value = "idpatient", required = false, defaultValue = "") String patientID,
			@RequestParam(value = "domic", required = false, defaultValue = "") String domicilio,
			@RequestParam(value = "sidx", required = false, defaultValue = "") String fieldName,
			@RequestParam(value = "sord", required = false, defaultValue = "") String order) {
		LOG.info("ClientController.loadlistPatients()");
		List<PacienteDTO> listPatients = new ArrayList<PacienteDTO>();
		PageResult pageResult = new PageResult();
		try {
			listPatients = patientService.listPatients("", null, domicilio);
			pageResult.setPage("1");
			pageResult.setRecords(listPatients.size() + "");
			pageResult.setRows(listPatients);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pageResult;
	}

	@Audited(message = "Accion: Seleccionar Paciente")
	@RequestMapping(value = "/selectPatient.json", method = RequestMethod.GET)
	public @ResponseBody
	Long seleccionarPaciente(
			@RequestParam(value = "idPatient", required = false, defaultValue = "") long idPatient,
			@RequestParam(value = "paName", required = false, defaultValue = "") String paName,
			@RequestParam(value = "op", required = false, defaultValue = "") boolean operation,
			HttpServletRequest request, HttpServletResponse response) {
		LOG.info("PatientController.seleccionarPaciente()");
		Long idConsult = -2l;
		try {
			if (operation) {
				idConsult = patientService.alreadyHasConsultCreated(idPatient);
				request.getSession().setAttribute("PACIENTE_ID", idPatient);
				request.getSession().setAttribute("PACIENTE_NOMBRE", WordUtils.capitalize(paName));
			} else {
				request.getSession().removeAttribute("PACIENTE_ID");
				request.getSession().removeAttribute("PACIENTE_NOMBRE");
			}

		} catch (Exception e) {
			e.printStackTrace();
			return idConsult;
		}

		return idConsult;
	}

	@RequestMapping(value = "/searchPatientByName.json", method = RequestMethod.POST)
	public @ResponseBody
	Object[] searchPatientByName(
			@RequestParam(value = "nameStartWith", required = false, defaultValue = "") String name,
			@RequestParam(value = "maxRows", required = false, defaultValue = "5") int maxRows) {
		List<PacienteDTO> listClients = new ArrayList<PacienteDTO>();
		try {
			listClients = patientService.listPatientByName(name, "", "", maxRows);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return listClients.toArray();
	}

	@Audited(message = "Accion: Eliminar Paciente")
	@RequestMapping(value = "/delPatient.json", method = RequestMethod.GET)
	public @ResponseBody
	boolean deletePatient(
			@RequestParam(value = "idPaciente", required = false, defaultValue = "") Long idPatient) {
		LOG.info("PatientController.deletePatient()");
		try {
			patientService.deletePatientById(idPatient);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	@RequestMapping(value = "/loadAllCat.json", method = RequestMethod.GET)
	public @ResponseBody
	Map<String, Object> loadAllCat() {
		LOG.info("ClientController.listClients()");
		Map<String, Object> catalogs = new HashMap<String, Object>();
		try {
			catalogs = patientService.loadAllAddPatientCat();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return catalogs;
	}

}
