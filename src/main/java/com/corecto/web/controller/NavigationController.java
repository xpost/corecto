/***************************************************************************************
 * No part of this program may be photocopied reproduced or translated to another program
 * language without prior written consent of Matias E. Iseas
 **************************************************************************************/
package com.corecto.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * TODO comment<br>
 * <br>
 * <b>Change log:</b>
 * <ul>
 * <li>1.0 20/05/2013 - Xpost - initial version</li>
 * </ul>
 * 
 * @author Xpost
 * @version 1.0
 */
@Controller
public class NavigationController {

	Logger LOG = LoggerFactory.getLogger(NavigationController.class);

    @Autowired
//    AlertService alertService;

    @RequestMapping(value = "/login")
    public ModelAndView loadLoginPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }
 
    @RequestMapping(value = "/agregarPaciente")
    public ModelAndView loadAddClientPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("agregarPaciente");
        return model;
    }
    
    @RequestMapping(value = "/buscarPaciente")
    public ModelAndView loadlistClientPage(HttpServletRequest request, HttpServletResponse response ) {
        ModelAndView model = new ModelAndView();
        request.getSession().removeAttribute("PACIENTE_ID"); 
        model.setViewName("buscarPaciente");
        return model;
    }

    @RequestMapping(value = "/agregarConsulta")
    public ModelAndView loadAddNewConsultPage( HttpServletRequest request, HttpServletResponse response) {
        ModelAndView model = new ModelAndView();
        model.setViewName("agregarConsulta");
        model.addObject("PACIENTE_ID",request.getSession().getAttribute("PACIENTE_ID"));
        model.addObject("PACIENTE_NOMBRE",request.getSession().getAttribute("PACIENTE_NOMBRE"));
        return model;
    }
    
    @RequestMapping(value = "/cargarConsulta")
    public ModelAndView loadConsultPage( Long id, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView model = new ModelAndView();
        model.setViewName("agregarConsulta");
        model.addObject("PACIENTE_ID",request.getSession().getAttribute("PACIENTE_ID"));
        model.addObject("PACIENTE_NOMBRE",request.getSession().getAttribute("PACIENTE_NOMBRE"));
        model.addObject("ID_CONSULTA",id);
        return model;
    }
    
//    @RequestMapping(value = "/addAbono")
//    public ModelAndView loadAddAbonoPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("addAbono");
//        return model;
//    }
//    
//    @RequestMapping(value = "/listAbonos")
//    public ModelAndView loadListAbonosPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("listAbonos");
//        return model;
//    }
//    
//    @RequestMapping(value = "/assignClientAbono")
//    public ModelAndView loadLassignClientAbonoPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("assignClientAbono");
//        return model;
//    }
//    
//    
//    @RequestMapping(value = "/addIncidencia")
//    public ModelAndView loadAddIncidenciaPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("addIncidencia");
//        return model;
//    }
//    
//    @RequestMapping(value = "/listIncidencia")
//    public ModelAndView loadListIncidenciaPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("listIncidencia");
//        return model;
//    }
//    
//    
//    @RequestMapping(value = "/agenda")
//    public ModelAndView loadAgendaPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("/agenda");
//        return model;
//    }
//    
//    @RequestMapping(value = "/historialIncidencia")
//    public ModelAndView loadHistorialIncidenciaPage() {
//        ModelAndView model = new ModelAndView();
//        model.setViewName("/historyIncidencia");
//        return model;
//    }
    
//    @RequestMapping(value = "/alerts")
//    public ModelAndView loadAlertsPage() {
//        System.out.println("NavigationController.loadAlertsPage()");
//        ModelAndView model = new ModelAndView();
//        model.addObject("disableAlert", !alertService.getStateAlerts());
//        model.setViewName("alerts");
//        return model;
//    }

    @RequestMapping(value = "/dummy")
    public @ResponseBody
    String dummyEditTable() {
        return "{value:true}";
    }

    @RequestMapping(value = "/help")
    public ModelAndView loadHelpPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("help");
        return model;
    }

    @RequestMapping(value = "/help1")
    public ModelAndView loadHelp1Page() {
        ModelAndView model = new ModelAndView();
        model.setViewName("help1");
        return model;
    }


    @RequestMapping(value = "/contacto")
    public ModelAndView loadContactPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("contact");
        return model;
    }




}
