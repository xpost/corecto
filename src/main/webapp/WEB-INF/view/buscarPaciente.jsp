<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form2" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Co-Recto BD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
<!--     <link href="css/bootstrap.css" rel="stylesheet"> -->
    <style type="text/css">		
			body {
			    padding-bottom: 10px;
			    padding-top: 60px;
			}
	      .sidebar-nav {
	        padding: 9px 0;
	      }
	
	      @media (max-width: 980px) {
	        /* Enable use of floated navbar text */
	        .navbar-text.pull-right {
	          float: none;
	          padding-left: 5px;
	          padding-right: 5px;
	        }
	      }
	      
		#footer {
		background-color: #f5f5f5;
		}
		/* Lastly, apply responsive CSS fixes as necessary */
		@media (max-width: 767px) {
		#footer {
		margin-left: -20px;
		margin-right: -20px;
		padding-left: 20px;
		padding-right: 20px;
		}
		} 
		
		.show-grid[class*="span"] {
			background-color: #F5F5F5;
		    border: 1px solid #E3E3E3;
		    border-radius: 4px 4px 4px 4px;
		    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05) inset;
		    min-height: 20px;
		    padding: 10px 19px;
		}
	 
	 .bs-docs-example:after {
	    background-color: #0088CC;
	    border: 2px solid #DDDDDD;
	    border-radius: 4px 0 4px 0;
	    color: #FFFFFF; 
 		content: "Editar Paciente";
 	    font-size: 15px;
	    font-weight: bold;
	    left: -1px;
	    padding: 3px 7px;
	    position: absolute;
	    top: -1px;
  	 }
	
	.bs-docs-example {
	    background-color: #FFFFFF;
	    border: 1px solid #DDDDDD;
	    border-radius: 4px 4px 4px 4px;
	    margin: 15px 0;
	    padding: 39px 19px 14px;
	    position: relative;
	}
	#removeBtn{
		border-radius: 10px 10px 10px 10px;
		margin-top: 8px;
	}
	 .ui-pg-selbox{
  	 width: 50px !important;
  	 padding: 0 !important;
  	 }
  	 
	.ui-autocomplete-loading { background: white url('css/images/ui-anim_basic_16x16.gif') right center no-repeat; }
	.ui-loadingBar { background: transparent url('css/images/load.gif') center / 260px no-repeat !important; height: 12px; border-top: none !important;  }
	.ui-pg-input { width: 10px !important;  }
	
	#formFilter fieldset legend {
		font-size: 18px;
		line-height: 36px; 
	}
    </style>
    
    <jsp:include flush="true" page="header.jsp">
		<jsp:param name="left" value="1" />
	</jsp:include>

	<link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />                  
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/validate.css" rel="stylesheet">    
  </head>

  <body>

    <div class="container" style="margin-top: -15px"> <!-- Agregado a mano! -->
     <div class="row-fluid">
        <div class="span12">
			<ul class="nav nav-pills">
		    <li class="active">
		    <a href="#">Buscar Paciente</a>
		    </li>
		    </ul>
		    <div style="margin-bottom: -18px;" ></div>
		   <hr>
		   <div style="margin-bottom: -18px;" ></div>
          </div>
      </div>
     <div class="row-fluid">
     <div class="span12 thumbnail">
		  <div class="row-fluid">
 	  		 <form id="formFilter" action="" class="">
	         <div class="row-fluid">
	        	<div class="span3">    
					<label for="nombreSearch"><strong>Nombre</strong></label>
						<input type="text" class="" id="nombreSearch" name="nombreSearch" />
				</div>
				<div class="span3">    
					<label for="cuitSearch"><strong>Número Documento</strong></label>
						<input type="text" class="" id="cuitSearch" name="cuitSearch" />
				</div>
				<div class="span6">
				  	<label for="tipoComprobanteCaja"><strong>Sexo</strong></label>
				  	<div class="btn-group" data-toggle="buttons-radio">
									    <button type="button"   class="btn btn-primary" name="sexo" value=""  id="both">Ambos</button>
									    <button type="button"   class="btn btn-primary" name="sexo" value="M" id="masSex">M</button>
									    <button type="button"   class="btn btn-primary" name="sexo" value="F" id="femSex">F</button>
					</div>				    
				  </div>	
			</div>	
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Preconsulta<button div="preconsultaTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="preconsultaTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
				        	<div class="span3">     
								<label for="nombreC"><strong>Peso</strong></label>
								<div class="input-append">		
									<input type="text" class="span6 onlyNumbers" id="pesoPre" name="pesoPre" />
									<span class="add-on">kg</span>											
								</div>	
							</div>
							<div class="span3">	
								<label for="direccionC"><strong>Talla</strong></label>
										<div class="input-append">		
									<input type="text" class="span6 onlyNumbers" id="tallePre" name="tallePre" />
									<span class="add-on">cm</span>											
								</div>
							</div>
							<div class="span3">		
								<label for="localidadC"><strong>Superficie corporal</strong></label>
								<div class="input-append">		
									<input type="text" class="span6 onlyNumbers" id="superPre" name="superPre" />
									<span class="add-on">m&#178;</span>											
								</div>	
							</div>	
						<div class="span3">
						  <label for="tipoComprobanteCaja"><strong>Performance Status</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="performanceRadio" id="performanceRadio" value="0" class="btn btn-primary">0</button>
									    <button type="button" name="performanceRadio" id="performanceRadio" value="1" class="btn btn-primary">1</button>
									    <button type="button" name="performanceRadio" id="performanceRadio" value="2" class="btn btn-primary">2</button>
									    <button type="button" name="performanceRadio" id="performanceRadio" value="3" class="btn btn-primary">3</button>
									    <button type="button" name="performanceRadio" id="performanceRadio" value="4" class="btn btn-primary">4</button>
								    </div>		
				  		</div>	
		   			</div>
				</div>
				</fieldset>
			</div>	
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Motivo de la consulta<button div="motivoTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="motivoTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
				     	<div class="span3">
						  <label for="tipoComprobanteCaja"><strong>Motivos</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo1"> Dolor abodminal</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo2"> Dolor pelviano</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo3"> Enterorragia</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo4"> Diarrea</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo5"> Tumor palpable</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo6"> Perdida de peso</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo7"> Constipación</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivo8"> Adenopatías</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="motivoOtroCB"onclick="$('#motivoOtro').focus()"  >Otro</button>
									 <input type="text"  name="motivoCbox" id="motivoOtro"  onclick="$('#motivoOtroCB').addClass('active');" style="margin-bottom: 0px; margin-left:2px; width:20%;">
								    </div>		
				  		</div>	
				  	</div>
				  	<br style="line-height:10px">
				  	<div class="row-fluid">	
							<div class="span3">	
								<label for="direccionC"><strong>Fecha de inicio de sintomas</strong></label>
								<input type="text" class="span5" id="dateStartMotivo" alt="dateP" name="dateStartMotivo" placeHolder="dd/MM/yyyy" />
							</div>
							<div class="span3">	
								<label for="direccionC"><strong>Tiempo de evolución en meses</strong></label>
								 <input type="text" class="span3 onlyNumbers" id="mesesMotivo"  name="mesesMotivo"  />
							</div>
				  	</div>	
		   			</div>
				</fieldset>
			</div>
			<div class="row-fluid">
				<fieldset> 
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Antecedentes<button div="antecedentesTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="antecedentesTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
				     	<div class="span8">
						  <label for="tipoComprobanteCaja"><strong>Personales patológicos</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="apersonalPat1"> Ninguno</button>
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="apersonalPat2"> Colitis ulcerativa</button>
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="apersonalPat3"> Adenoma Velloso</button>
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="apersonalPat4"> Enfermedad de CROHN</button>
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="apersonalPat5"> HIV</button>
									    <button type="button"   class="btn btn-primary" name="anPersonal" id="neoplasia"> Neoplasia maligna</button>
								    </div>		
				  		</div>
				  		<div class="span3 form-inline" style="margin-top: 25px">	
								<label for="direccionC"><strong>Cual neoplasia:</strong></label>
								 <input type="text" class="span3" id="neoplasiaText"  name="neoplasiaText"  />
						</div>	
				  	</div>			  	
				  	<br style="line-height:10px">
				  <div class="row-fluid">
						<div class="span12">
						  <label for="tipoComprobanteCaja"><strong>Familiares de cáncer de colon o recto</strong></label>
						   <div class="span5">
						   <label class="radio">
							<input type="checkbox" id="checkfamMenorNin" > Ninguno
							</label>
							</div>
							<div class="span3">
							<label class="radio" style="display: inline;">
							<input type="checkbox" id="checkfamMenor60"> Familiar de 1º grado < 60 años
							</label>
							</div>
							<div class="span2">
							<div id="divfamMenor60" class="form-inline" style="display: none; margin-left: 20px">
							<label>Nro: </label>
							<input type="text" class="input-mini" id="famMenor60">
							</div>
							</div>
					   </div>
					 </div>
					 <div class="row-fluid">	
					  <div class="span12">	
							<div class="span3" style="margin-left: 29px">
							<label class="radio" style="display: inline;">
							<input type="checkbox" id="checkfamMayor60"> Familiar de 1º grado > 60 años
							</label>
							</div>
							<div class="span2">
							<div id="divfamMayor60" class="form-inline" style="display: none; margin-left: 20px">
							<label>Nro: </label>
							<input type="text" class="input-mini" id="famMayor60">
							</div>
							</div>
							<div class="span3" style="margin-left: 30px">
							<label class="radio" style="display: inline;">
							<input type="checkbox" id="checkfamSegundoGrado"> Familiar de 2º grado
							</label>
							</div>
							<div class="span2">
							<div id="divfamSegundoGrado" class="form-inline" style="display: none; margin-left: 20px">
							<label>Nro: </label>
							<input type="text" class="input-mini" id="famSegundoGrado">
							</div>				
							</div>	
				  		</div>			
				  	</div>	  	
				  	<br style="line-height:10px">
				  	<div class="row-fluid">				
				     	<div class="span3">
						  <label for="antecedemtesSindrome"><strong>Antecedente de Síndrome CCRH</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="anteSindrome" id="anteSindrome1"  value="1"> No</button>
									    <button type="button"   class="btn btn-primary" name="anteSindrome" id="anteSindrome2"  value="2"> No sabe</button>
									    <button type="button"   class="btn btn-primary" name="anteSindrome" id="anteSindrome3"  value="3"> En estudio</button>
									    <button type="button"   class="btn btn-primary" name="anteSindrome" id="anteSindrome4"  value="4"> Si</button>									    
								    </div>		
				  		</div>
				  		<div class="span3" style="margin-top: 25px; display: none;" id="anteSindrome4Div" >	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn" name="anPersonal" id="checkPAF"> PAF</button>
									    <button type="button"   class="btn" name="anPersonal" id="checkLYNCH"> LYNCH</button>
									    <button type="button"   class="btn" name="anPersonal" id="checkMYH"> MYH</button>
								    </div>	
						</div>	
				  	</div>			  	
				  </div>
				</fieldset>
			</div>
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Evaluación clínica<button div="evaClinicaTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="evaClinicaTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
				     	<div class="span3">
						  <label for=""><strong>Recto</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="haRecto1"> Tercio superior</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="haRecto2"> Tercio medio</button>
									    <button type="button"   class="btn btn-primary" name="motivoCbox" id="haRecto3"> Tercio inferior</button>
								    </div>		
				  		</div>	
				  	</div>
		   			</div>
				</fieldset>
			</div>								
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Examen Proctologico <button div="exaProctoTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="exaProctoTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
						 <label for="tipoComprobanteCaja"><strong>Tacto rectal</strong></label>
								<div class="span2" style="padding-bottom:1.1em;">	
								<label for="movilRectal"><strong>Movil</strong></label>
								    <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="movilRectal" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="movilRectal" id="opcion2" value="1" class="btn btn-primary">Si</button>
									 </div>
								</div>	
							<div class="span2" style="padding-bottom:1.1em;">	
								<label for="fijoRectal"><strong>Fijo</strong></label>
								  <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="fijoRectal" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="fijoRectal" id="opcion2" value="1" class="btn btn-primary">Si</button>
								  </div>
							</div>	
								<div class="span5" style="padding-bottom:1.1em;">	
								<label for="esfinterRectal"><strong>Infiltra esfinter</strong></label>
									  <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="esfinterRectal" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="esfinterRectal" id="opcion2" value="1" class="btn btn-primary">Si</button>
									    <button type="button" name="esfinterRectal" id="opcion3" value="2" class="btn btn-primary">Esfinter interno</button>
									    <button type="button" name="esfinterRectal" id="opcion4" value="3" class="btn btn-primary">Esfinter externo</button>
									    <button type="button" name="esfinterRectal" id="opcion5" value="4" class="btn btn-primary">Poco móvil</button>
								    </div>				
								</div>				
		   			</div>
		   			<div class="row-fluid">	
		   					 <label for="tipoComprobanteCaja"><strong>RSC</strong></label>
							 <div class="span2" style="padding-bottom:1.1em;">	
								<label for="movilRectal"><strong>Presente</strong></label>
								    <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="rscPresente" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="rscPresente" id="opcion2" value="1" class="btn btn-primary">Si</button>
									 </div>
								</div>	
							<div class="span4" style="padding-bottom:1.1em;">	
								<label for="esfinterRectal"><strong>Medida</strong></label>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="rscMedida" id="opcion1" value="0" class="btn btn-primary">0-5cm</button>
									    <button type="button" name="rscMedida" id="opcion2" value="1" class="btn btn-primary">5-10 cm</button>
									    <button type="button" name="rscMedida" id="opcion3" value="2" class="btn btn-primary">10-12 cm</button>
									    <button type="button" name="rscMedida" id="opcion4" value="3" class="btn btn-primary">> 12 cm</button>
								    </div>				
							</div>	
				  		<div class="span2 form-inline" style="margin-top: 25px">	
								<label for="direccionC"><strong>Altura:</strong></label>
								 <input type="text" class="span6" id="rscAltura"  name="rscAltura"  />
						</div>	
				  		<div class="span2 form-inline" style="margin-top: 25px">	
								<label for="direccionC"><strong>Fecha</strong></label>
								<input type="text" class="span7" alt="dateP"  placeholder="dd/MM/yyyy" id="rscFecha" >
						</div>	
		   			</div>
		   			<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja"><strong>EE</strong></label>
		   				 	<div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							 <div class="span2" style="padding-bottom:1.1em;">	
								<label for="movilRectal"><strong>Presente</strong></label>
								    <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="eePresente" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="eePresente" id="opcion2" value="1" class="btn btn-primary">Si</button>
									 </div>
								</div>	
							<div class="span4" style="padding-bottom:1.1em;">	
								<label for="esfinterRectal"><strong>Tipo</strong></label>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="eeTipo" id="opcion1" value="0" class="btn btn-primary">1</button>
									    <button type="button" name="eeTipo" id="opcion2" value="1" class="btn btn-primary">2</button>
									    <button type="button" name="eeTipo" id="opcion3" value="2" class="btn btn-primary">3</button>
									    <button type="button" name="eeTipo" id="opcion3" value="3" class="btn btn-primary">4</button>
								    </div>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="eeTipoN" id="opcion1" value="1" class="btn btn-primary">N0</button>
									    <button type="button" name="eeTipoN" id="opcion2" value="2" class="btn btn-primary">N1</button>
									    <button type="button" name="eeTipoN" id="opcion3" value="3" class="btn btn-primary">N2</button>
								    </div>												    				
							</div>		
						 </div>		   				
		   				 	<div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%" >	
							 <div class="span2" style="padding-bottom:1.1em;">	
								<label for=""><strong>Infiltra esfinter</strong></label>
								    <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="eeesfinter" id="opcion1" value="0" class="btn btn-primary">No</button>
									    <button type="button" name="eeesfinter" id="opcion2" value="1" class="btn btn-primary">Si</button>
									 </div>
								</div>	
							<div class="span4" style="padding-bottom:1.1em;">	
								<label for=""><strong>Medida</strong></label>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="eeMedida" id="opcion1" value="0" class="btn btn-primary">0-5cm</button>
									    <button type="button" name="eeMedida" id="opcion2" value="1" class="btn btn-primary">5-10 cm</button>
									    <button type="button" name="eeMedida" id="opcion3" value="2" class="btn btn-primary">10-12 cm</button>
									    <button type="button" name="eeMedida" id="opcion4" value="3" class="btn btn-primary">> 12 cm</button>
								    </div>				
							</div>	
					  		<div class="span2 form-inline" style="margin-top: 25px">	
									<label for="direccionC"><strong>Fecha</strong></label>
									<input type="text" class="span7" alt="dateP"  placeholder="dd/MM/yyyy" id="eeFecha" >
							</div>	
						 </div>
		   			</div>		   			
				</div>
				</fieldset>
			</div>
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Estadificación <button div="estadificacionTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="estadificacionTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
						<div class="span12">	  	
						 <label><strong>RM</strong></label>
								<div style="padding-bottom:1.1em;" class="span10 form-inline">	
								    <label for="centroRM"><strong>Centro</strong></label>
									<input type="text" id="centroRM" class="span2">
								    <label for="fechaRM"><strong>Fecha</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaRM">
									<label style="margin-left:25px" for="distanciaSupRM"><strong>Distancia a la porción superior del esfínter</strong></label>
									<input type="text" id="distanciaSupRM" class="span2">
								</div>
						</div>
						<div class="span10 form-inline" style="padding-bottom:1.1em;">	
								   <label for="distanciaMarARadio" style="margin-right:24px"><strong>Distancia al margen anal</strong></label>
								   <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="distanciaMarARadio" value="0" > 0-5cm</button>
									    <button type="button"   class="btn btn-primary" name="distanciaMarARadio" value="1" > 5-10 cm</button>
									    <button type="button"   class="btn btn-primary" name="distanciaMarARadio" value="2" > 10-12 cm</button>
									    <button type="button"   class="btn btn-primary" name="distanciaMarARadio" value="3" > > 12 cm</button>
									</div>    
								   <label  style="margin-left:25px" for="esfinterRectal"><strong>Altura</strong></label>
									<input type="text" class="span2" id="alturaRM" >	
								</div>	
		   			</div>
		   			<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja"><strong>T</strong></label>
		   				 	<div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="numTRadio" id="opcion1" value="0" class="btn btn-primary">X</button>
									    <button type="button" name="numTRadio" id="opcion2" value="1" class="btn btn-primary">1</button>
									    <button type="button" name="numTRadio" id="opcion3" value="2" class="btn btn-primary">2</button>
									    <button type="button" name="numTRadio" id="opcion3" value="3" class="btn btn-primary">3a</button>
									    <button type="button" name="numTRadio" id="opcion1" value="4" class="btn btn-primary">3b</button>
									    <button type="button" name="numTRadio" id="opcion2" value="5" class="btn btn-primary">3c</button>
									    <button type="button" name="numTRadio" id="opcion3" value="6" class="btn btn-primary">3d</button>
									    <button type="button" name="numTRadio" id="opcion3" value="7" class="btn btn-primary">4a</button>
									    <button type="button" name="numTRadio" id="opcion3" value="8" class="btn btn-primary">4b</button>
								    </div>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="numTNRadio" id="opcion1" value="0" class="btn btn-primary">N0</button>
									    <button type="button" name="numTNRadio" id="opcion2" value="1" class="btn btn-primary">N1a</button>
									    <button type="button" name="numTNRadio" id="opcion3" value="2" class="btn btn-primary">N1b</button>
									    <button type="button" name="numTNRadio" id="opcion3" value="3" class="btn btn-primary">N2a</button>
									    <button type="button" name="numTNRadio" id="opcion3" value="4" class="btn btn-primary">N2b</button>
								    </div>												    				
							</div>		
						 </div>		   				
		   			</div>		
		   			<div class="row-fluid">	
		   			<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="crmPresente"><strong>CRM</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="crmPresente" id="opcion1" value="0" class="btn btn-primary">Positivo</button>
									    <button type="button" name="crmPresente" id="opcion2" value="1" class="btn btn-primary">Negativo</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>
						<div class="span4" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>EMVI</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="emviPresente" id="emviPresente" value="0" class="btn btn-primary">Positivo</button>
									    <button type="button" name="emviPresente" id="emviPresente" value="1" class="btn btn-primary">Negativo</button>
									    <button type="button" name="emviPresente" id="opcion3" value="2" class="btn btn-primary">0</button>
									    <button type="button" name="emviPresente" id="opcion3" value="3" class="btn btn-primary">1</button>
									    <button type="button" name="emviPresente" id="opcion1" value="4" class="btn btn-primary">2</button>
									    <button type="button" name="emviPresente" id="opcion2" value="5" class="btn btn-primary">3</button>
									    <button type="button" name="emviPresente" id="opcion3" value="6" class="btn btn-primary">4</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span4" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Depósitos satélites</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="depoSati" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="depoSati" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 								
		   			</div>		
		   			<div class="row-fluid">	
		   			<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="estaRInterior"><strong>Estadificación tumores de recto inferior</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="estaRInterior" id="opcion1" value="0" class="btn btn-primary">1</button>
									    <button type="button" name="estaRInterior" id="opcion2" value="1" class="btn btn-primary">2</button>
									    <button type="button" name="estaRInterior" id="opcion1" value="2" class="btn btn-primary">3</button>
									    <button type="button" name="estaRInterior" id="opcion2" value="3" class="btn btn-primary">4</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Ganglios Inguinales</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="inguinales" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="inguinales" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Ganglios Laterales</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="gaLate" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="gaLate" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span2" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Infiltra Esfinter</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="esfinterRM" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="esfinterRM" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 													
		   			</div>	
		   			<div class="row-fluid">	
		   			<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="tcTorax"><strong>TC torax</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tcTorax" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="tcTorax" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tcAbdomen"><strong>TC abdomen-pelvis</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tcAbdomen" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="tcAbdomen" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>PET-CT</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="petTC" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="petTC" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span2" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>MTS</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="mtsRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="mtsRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 													
		   			</div>	
		   			<div class="row-fluid">	
		   			<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="tcTorax"><strong>Marcadores tumorales</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<label for="marcaTuFecha">Fecha</label>	
								<input type="text" class="span5" alt="dateP"  placeholder="dd/MM/yyyy" id="marcaTuFecha" >
						 </div>		   	
						</div>
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tcAbdomen"><strong>CEA aumentado</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="ceaAument" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="ceaAument" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>CA 19-9 aumentado</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="caAument" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="caAument" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span2" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>SUV</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span9" style="padding-bottom:1.1em;">	
									<input type="text" class="span12" id="suvEstati">									    				
							</div>		
						 </div>		
						</div>	 													
		   			</div>		
					<div class="row-fluid">
							<div class="span5">
							  <label for=""><strong>TNM</strong></label>
								<div class="span12 form-inline" style="padding-bottom:1.1em;">	
								  <label for="esfinterRectal">T</label>
									<input type="text" class="input-small" id="tnmValT" >
								 <label for="esfinterRectal">N</label>
									<input type="text" class="input-small" id="tnmValN" >
							     <label for="esfinterRectal">M</label>
									<input type="text" class="input-small" id="tnmValM"  >
								</div>
								</div>
							<div class="span5">
					           <label for=""><strong>pTNM</strong></label>
								<div class="span12 form-inline" style="padding-bottom:1.1em;">	
								  <label for="esfinterRectal">pT</label>
									<input type="text" class="input-small" id="ptnmValT" >
								 <label for="esfinterRectal">pN</label>
									<input type="text" class="input-small" id="ptnmValN" >
							     <label for="esfinterRectal">pM</label>
									<input type="text" class="input-small" id="ptnmValM" >
								</div>
							</div>
					</div>
					<div class="row-fluid">				
				     	<div class="span3">
						  <label for="tipoComprobanteCaja"><strong>Metástasis a distancia</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="metastaDist1" id="metastaDist1"> Ninguna</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist2" id="metastaDist2"> Hueso</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist3" id="metastaDist3"> Pulmón</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist4" id="metastaDist4"> Desc. </button>
									    <button type="button"   class="btn btn-primary" name="metastaDist5" id="metastaDist5"> Piel y TCS</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist6" id="metastaDist6"> Cerebro</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist7" id="metastaDist7"> Ganglios Dist</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist8" id="metastaDist8"> Ovario</button>
									    <button type="button"   class="btn btn-primary" name="metastaDist9" id="metastaDist9"> Hígado</button>
									    <button type="button"   class="btn btn-primary" name="metastaDistOtraCbox" id="metastaDistOtraCbox"onclick="$('#metastaDisOtra').focus()"  >Otras</button>
									 <input type="text"  name="motivoCbox" id="metastaDisOtra"  onclick="$('#metastaDistOtraCbox').addClass('active');" style="margin-bottom: 0px; margin-left:2px; width:20%;">
								    </div>		
				  		</div>	
				  	</div>
					<div class="row-fluid">				
						 <label for="tipoComprobanteCaja"><strong>Revisión RM en Correcto</strong></label>
							<div class="span2" style="padding-bottom:1.1em;">	
								<label for="marcaTuFecha">Fecha</label>	
								<input type="text" class="span7" alt="dateP"  placeholder="dd/MM/yyyy" id="revisionRMFecha" >
							</div>	
							<div class="span3" style="padding-bottom:1.1em;">	
								<label for="marcaTuFecha">Dist. a la porción superior del esfínter</label>	
								<input type="text" class="span5"  id="revisionRMDistan" >
							</div>	
							<div class="span4" style="padding-bottom:1.1em;">	
								<label for="esfinterRectal"><strong>Distancia al margen anal</strong></label>
									  <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="revisionRMMargen" id="opcion1" value="0" class="btn btn-primary">0-5cm</button>
									    <button type="button" name="revisionRMMargen" id="opcion2" value="1" class="btn btn-primary">5-10 cm </button>
									    <button type="button" name="revisionRMMargen" id="opcion3" value="2" class="btn btn-primary">10-12 cm </button>
									    <button type="button" name="revisionRMMargen" id="opcion4" value="3" class="btn btn-primary">> 12 cm</button>
								    </div>				
							</div>	
							<div class="span2" style="padding-bottom:1.1em;">	
								<label for="marcaTuFecha">Altura</label>	
								<input type="text" class="span10"  id="revisionAlturaRM" >
							</div>											
		   			</div>				  				   				   					   					   			   				   			
				</div>
				</fieldset>
			</div> 			
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Anatomia patológica<button div="AnotomiaPatTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="AnotomiaPatTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
				     	<div class="span3">
						  <label for="tipoComprobanteCaja"><strong>Grado de diferenciación</strong></label>
						  		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="0" > Diferenciado</button>
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="1" > Moderadamente diferenciado</button>
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="2" > Poco diferenciado</button>
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="3" > Indiferenciado</button>
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="4" > Anillo de sello</button>
									    <button type="button"   class="btn btn-primary" name="gradoDiferRadio" value="5" > Mucina</button>
								    </div>		
				  		</div>	
				  	</div>
		   			</div>
				</fieldset>
			</div>
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Tratamiento <button div="tratamientoTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="tratamientoTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
						<div class="span6">	  	
						 <label><strong>Udaondo</strong></label>
						 		  <div class="btn-group" data-toggle="buttons-radio">
									    <button type="button" name="udaOndoRadio"  onclick="$('#udaOndoOtro').val('');" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="udaOndoRadio"  onclick="$('#udaOndoOtro').val('');" value="1" class="btn btn-primary">No</button>
									    <button type="button" name="udaOndoRadio" onclick="$('#udaOndoOtro').focus()" value="2" class="btn btn-primary">Otro</button>
									 <input type="text" class="" name="udaOndoOtro" id="udaOndoOtro"  onclick="$('button[name=udaOndoRadio][value<2]').removeClass('active');$('button[name=udaOndoRadio][value=2]').addClass('active');" style="margin-bottom: 0px; margin-left:2px">
								    </div>
						</div>
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Cirugía (ir a AP)</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span5" style="">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="cirugiaTrataRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="cirugiaTrataRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	
		   			</div>
		   			<div class="row-fluid">
			   			<div class="span7" style="padding-bottom: 1.1em;">	  	
							 <label><strong>Quimioterapia de inducción</strong></label>
							 		  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="quimioInduccion"   value="0" class="btn btn-primary">XELOX</button>
										    <button type="button" name="quimioInduccion"   value="1" class="btn btn-primary">BFOL</button>
										    <button type="button" name="quimioInduccion"   value="2" class="btn btn-primary">FOLFOX</button>
										    <button type="button" name="quimioInduccion"   value="3" class="btn btn-primary">CAPECITABINA</button>
										    <button type="button" name="quimioInduccion" onclick="$('#quimioInduccionOtro').focus()" value="4" class="btn btn-primary">Otro</button>
										 <input type="text" class="" name="quimioInduccionOtro" id="quimioInduccionOtro"  onclick="$('button[name=quimioInduccion][value=4]').addClass('active');" style="margin-bottom: 0px; margin-left:2px">
									    </div>
						</div>
						<div class="span5" style="margin-top: 20px">	 
						<label class="radio inline">
									<strong>N Ciclos:</strong>
								<select id="quimioInduccionCiclos" class="input-mini">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								</select>
					    </label>
					    </div>
		   			</div>
		   			<div class="row-fluid">
		  				<div class="span5">	  	
						 <label><strong>Quimioradioterapia</strong></label>
						 		  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="quimioradioInduRadio"  value="0" class="btn btn-primary">Capecitabina</button>
									    <button type="button" name="quimioradioInduRadio" onclick="$('#quimioradioInduRadioOtro').focus()" value="1" class="btn btn-primary">Otro</button>
									 <input type="text" class="" name="quimioradioInduRadioOtro" id="quimioradioInduRadioOtro"  onclick="$('button[name=quimioradioInduRadio][value=1]').addClass('active');" style="margin-bottom: 0px; margin-left:1px">
								    </div>
						</div>
			   			<div class="span4" style="margin-left: -15px">	  	
							 <label><strong>Quimioterapia de Intervalo precirugia</strong></label>
							 		  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="quimioIntervalRadio"   value="0" class="btn btn-primary">Si</button>
										    <button type="button" name="quimioIntervalRadio"   value="1" class="btn btn-primary">No</button>
										    <button type="button" name="quimioIntervalRadio"   value="2" class="btn btn-primary">Capecitabina</button>
										    <button type="button" name="quimioIntervalRadio" onclick="$('#quimioIntervalRadioOtro').focus()" value="3" class="btn btn-primary">Otro</button>
										 <input type="text" class="" name="quimioIntervalRadioOtro" id="quimioIntervalRadioOtro"  onclick="$('button[name=quimioIntervalRadio][value=3]').addClass('active');" style="margin-bottom: 0px; margin-left:1px">
									    </div>
						</div>	
						<div class="span2" style="margin-top: 20px;margin-left: 100px">	 
						<label class="radio inline">
									<strong>N Ciclos:</strong>
								<select id="quimioIntervalCiclos" class="input-mini">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								</select>
					    </label>
					    </div>											
					</div>	
				</div>
				</fieldset>
			</div>  			 
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Tratamiento Neoadyuante <button div="tratNeoadyuanteTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="tratNeoadyuanteTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
					<div class="row-fluid">				
						<div class="span12">	  	
						 		<div class="span2" style="">	 
						     			 <label for="tipoComprobanteCaja"><strong>Radioterapia</strong></label>
						   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
											<div class="span7" style="padding-bottom:1.1em;">	
													  <div class="btn-group" data-toggle="buttons-checkbox">
													    <button type="button" name="radioTera" id="opcion1" value="0" class="btn btn-primary">Si</button>
													    <button type="button" name="radioTera" id="opcion2" value="1" class="btn btn-primary">No</button>
												    </div>										    				
											</div>		
										 </div>		
								</div>		
								<div style="padding-bottom:1.1em; margin-top:24px" class="span10 form-inline">	
								    <label for="centroRM"><strong>Dosis total</strong></label>
									<input type="text" id="dosisTotalRadioTer" class="span2">
								    <label for="fechaRM" style="margin-left:25px"><strong>Fecha inicio</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaInicioRadioTer">
									<label for="fechaRM" style="margin-left:25px"><strong>Fecha final</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaFinRadioTer">
								</div>
						</div>
		   			</div>
					<div class="row-fluid">				
						<div class="span12">	  	
						 		<div class="span2" style="">	 
						     			 <label for="tipoComprobanteCaja"><strong>Quimioterapia</strong></label>
						   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
											<div class="span7" style="padding-bottom:1.1em;">	
													  <div class="btn-group" data-toggle="buttons-checkbox">
													    <button type="button" name="quimioRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
													    <button type="button" name="quimioRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
												    </div>										    				
											</div>		
										 </div>		
								</div>		
								<div style="padding-bottom:1.1em; margin-top:24px" class="span10 form-inline">	
								    <label for="centroRM"><strong>Esquema</strong></label>
									<input type="text" id="quimioEsquema" class="span2">
									<label class="radio inline">
											<strong>N Ciclos:</strong>
											<select id="quimioNroCiclos" class="input-mini">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											</select>
								    </label>									
								    <label for="fechaRM" style="margin-left:25px"><strong>Fecha inicio</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaInicioQuimio">
									<label for="fechaRM" style="margin-left:25px"><strong>Fecha final</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaFinQuimio">
								</div>
						</div>
		   			</div>		   			
		   			<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja" style="font-size: 21px;padding-bottom:1.1em;"><strong>Respuesta al tratamiento neoadyuante</strong></label>
		   			</div>	
		   			<div class="row-fluid">	
						<div class="span12">	  	
						 <label><strong>RM post tratamiento</strong></label>
								<div style="padding-bottom:1.1em;" class="span10 form-inline">	
								    <label for="centroRM"><strong>Centro</strong></label>
									<input type="text" id="centroPostTrata" class="span2">
								    <label for="fechaRM"><strong>Fecha</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaPostTrata">
									<label style="margin-left:25px" for="distanciaSupRM"><strong>Distancia a la porción superior del esfínter</strong></label>
									<input type="text" id="distanciaPostTrata" class="span2">
								</div>
						</div>
						<div class="span10 form-inline" style="padding-bottom:1.1em;">	
								   <label for="distanciaMarARadio" style="margin-right:24px"><strong>Distancia al margen anal</strong></label>
								   <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button"   class="btn btn-primary" name="distMargenPostTrataRadio" value="0" > 0-5cm</button>
									    <button type="button"   class="btn btn-primary" name="distMargenPostTrataRadio" value="1" > 5-10 cm</button>
									    <button type="button"   class="btn btn-primary" name="distMargenPostTrataRadio" value="2" > 10-12 cm</button>
									    <button type="button"   class="btn btn-primary" name="distMargenPostTrataRadio" value="3" > > 12 cm</button>
									</div>    
								   <label  style="margin-left:25px" for="alturaPostTrataRadio"><strong>Altura</strong></label>
									<input type="text" class="span2" id="alturaPostTrataRadio" >	
						</div>	
	 				</div>
	 				<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja"><strong>T</strong></label>
		   				 	<div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tumorPostTrataRadio" id="opcion1" value="0" class="btn btn-primary">X</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion2" value="1" class="btn btn-primary">1</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion3" value="2" class="btn btn-primary">2</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion3" value="3" class="btn btn-primary">3a</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion1" value="4" class="btn btn-primary">3b</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion2" value="5" class="btn btn-primary">3c</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion3" value="6" class="btn btn-primary">3d</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion3" value="7" class="btn btn-primary">4a</button>
									    <button type="button" name="tumorPostTrataRadio" id="opcion3" value="8" class="btn btn-primary">4b</button>
								    </div>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tumorPostTrataNRadio" id="opcion1" value="0" class="btn btn-primary">N0</button>
									    <button type="button" name="tumorPostTrataNRadio" id="opcion2" value="1" class="btn btn-primary">N1a</button>
									    <button type="button" name="tumorPostTrataNRadio" id="opcion3" value="2" class="btn btn-primary">N1b</button>
									    <button type="button" name="tumorPostTrataNRadio" id="opcion3" value="3" class="btn btn-primary">N2a</button>
									    <button type="button" name="tumorPostTrataNRadio" id="opcion3" value="4" class="btn btn-primary">N2b</button>
								    </div>												    				
							</div>		
						 </div>		   				
		   			</div>	 
		   			<div class="row-fluid">	
		   			<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="crmPresente"><strong>CRM</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="crmPostTrataRadio" id="opcion1" value="0" class="btn btn-primary">Positivo</button>
									    <button type="button" name="crmPostTrataRadio" id="opcion2" value="1" class="btn btn-primary">Negativo</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>
						<div class="span4" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>EMVI</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="emviPostTrataRadio" id="opcion3" value="0" class="btn btn-primary">Positivo</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion3" value="1" class="btn btn-primary">Negativo</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion3" value="2" class="btn btn-primary">0</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion3" value="3" class="btn btn-primary">1</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion1" value="4" class="btn btn-primary">2</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion2" value="5" class="btn btn-primary">3</button>
									    <button type="button" name="emviPostTrataRadio" id="opcion3" value="6" class="btn btn-primary">4</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 	
						<div class="span4" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Depósitos satélites</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="depoSatiRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="depoSatiRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 								
		   			</div>		
		   			<div class="row-fluid">	
		   				<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="estaRInterior"><strong>Estadificación tumores de recto inferior</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="estaRInteriorRadio" id="opcion1" value="0" class="btn btn-primary">1</button>
									    <button type="button" name="estaRInteriorRadio" id="opcion2" value="1" class="btn btn-primary">2</button>
									    <button type="button" name="estaRInteriorRadio" id="opcion1" value="2" class="btn btn-primary">3</button>
									    <button type="button" name="estaRInteriorRadio" id="opcion2" value="3" class="btn btn-primary">4</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>
		   				<div class="span4" style="padding-bottom:1.1em;">	
		   				<label for="estaRInterior"><strong>Grado de regresion</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="gradoRegresionRadio" id="opcion1" value="0" class="btn btn-primary">5</button>
									    <button type="button" name="gradoRegresionRadio" id="opcion2" value="1" class="btn btn-primary">4</button>
									    <button type="button" name="gradoRegresionRadio" id="opcion1" value="2" class="btn btn-primary">3</button>
									    <button type="button" name="gradoRegresionRadio" id="opcion2" value="3" class="btn btn-primary">2</button>
									    <button type="button" name="gradoRegresionRadio" id="opcion2" value="3" class="btn btn-primary">1</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>						
						<div class="span3" style="padding-bottom:1.1em;">	 
		     			 <label for="tipoComprobanteCaja"><strong>Ganglios Inguinales</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="inguinalesRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="inguinalesRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 															
		   			</div>	
		  			<div class="row-fluid">		
		  				 <div class="span3" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Ganglios Laterales</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="gaLateRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="gaLateRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 
		  				<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Infiltra Esfinter</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="infiltraEsPostRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="infiltraEsPostRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	   
		   				<div class="span4" style="">	
		   				<label for="estaRInterior"><strong>Evaluación de la respuesta</strong></label>
		   				 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span3" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="evaPostRadio" id="opcion1" value="0" class="btn btn-primary">RC</button>
									    <button type="button" name="evaPostRadio" id="opcion2" value="1" class="btn btn-primary">RP</button>
									    <button type="button" name="evaPostRadio" id="opcion1" value="2" class="btn btn-primary">EE</button>
									    <button type="button" name="evaPostRadio" id="opcion2" value="3" class="btn btn-primary">PE</button>
									    <button type="button" name="evaPostRadio" id="opcion2" value="3" class="btn btn-primary">No evaluable</button>
								    </div>											    				
							</div>		
						 </div>		   	
						</div>						 				   					   					   			   				   			
				</div>
				<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja" style="font-size: 21px;padding-bottom:1.1em;"><strong>Conducta post neoadyuvancia</strong></label>
		   		</div>
		   		<div class="row-fluid">	
						<div class="span12">	  	
						 <label><strong>Cirugia</strong></label>
			  				 <div class="span3" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>Presente</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span7" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="ciruNeoRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
										    <button type="button" name="ciruNeoRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
									    </div>										    				
								</div>		
							 </div>		
							</div>	 
							<div class="span3" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>Procedimiento</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span7" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="prodCiruRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
										    <button type="button" name="prodCiruRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
									    </div>										    				
								</div>		
							 </div>		
							</div>
							<div class="span3" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>Miles cilíndrico:</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span7" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="milesCiliRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
										    <button type="button" name="milesCiliRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
										    <button type="button" name="milesCiliRadio" onclick="$('#milesCiliOtro').focus()" value="2" class="btn btn-primary">Otro</button>
										 <input type="text" class="" name="milesCiliOtro" id="milesCiliOtro"  onclick="$('button[name=milesCiliRadio][value=2]').addClass('active');" style="margin-bottom: 0px; margin-left:1px">
									    </div>										    				
								</div>		
							 </div>		
							</div>		
						</div>
	 			 </div>		
	 			 <div class="row-fluid">	
			  				 <div class="span4" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>Urgencia</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span3" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="urgenciaRadio" id="opcion1" value="0" class="btn btn-primary">No</button>
										    <button type="button" name="urgenciaRadio" id="opcion2" value="1" class="btn btn-primary">Si</button>
									    </div>										    				
								</div>
								<div class="span7 form-inline" style="padding-bottom:1.1em;">	
										<label for="fechaRM" style="margin-left:25px"><strong>Fecha</strong></label>
										<input type="text" class="span6" alt="dateP"  placeholder="dd/MM/yyyy" id="urgenciaFecha">
								</div>				
							 </div>		
							</div>
			  				 <div class="span3" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>Cirujano Nombre</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<input type="text" class="" name="cirujaName" id="cirujaName" style="margin-bottom: 0px; margin-left:1px">	
							 </div>		
							</div>
							<div class="span5" style="padding-bottom:1.1em;">	 
			     			 <label for="tipoComprobanteCaja"><strong>WAIT AND SEE</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span3" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="waitSeeRadio" id="opcion1" value="0" class="btn btn-primary">No</button>
										    <button type="button" name="waitSeeRadio" id="opcion2" value="1" class="btn btn-primary">Si</button>
									    </div>										    				
								</div>
								<div class="span7 form-inline" style="padding-bottom:1.1em;">	
										<label for="fechaRM" style="margin-left:05px"><strong>Fecha inicio</strong></label>
										<input type="text" class="span6" alt="dateP"  placeholder="dd/MM/yyyy" id="fechaInicioConducta">
								</div>				
							 </div>		
							</div>										 			 
	 			 </div>   			
				</fieldset>
			</div> 
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Anatomia patológica Post<button div="anotomiaPatPostTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="anotomiaPatPostTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
	 				<div class="row-fluid">	
		   				<label for="tipoComprobanteCaja"><strong>Tumor</strong></label>
		   				 	<div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span4" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tumorAnatPostRadio" id="opcion2" value="1" class="btn btn-primary">1</button>
									    <button type="button" name="tumorAnatPostRadio" id="opcion3" value="2" class="btn btn-primary">2</button>
									    <button type="button" name="tumorAnatPostRadio" id="opcion3" value="3" class="btn btn-primary">3</button>
									    <button type="button" name="tumorAnatPostRadio" id="opcion3" value="7" class="btn btn-primary">4a</button>
									    <button type="button" name="tumorAnatPostRadio" id="opcion3" value="8" class="btn btn-primary">4b</button>
								    </div>
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tumorAnatPostNRadio" id="opcion1" value="0" class="btn btn-primary">N0</button>
									    <button type="button" name="tumorAnatPostNRadio" id="opcion2" value="1" class="btn btn-primary">N1</button>
									    <button type="button" name="tumorAnatPostNRadio" id="opcion3" value="3" class="btn btn-primary">N2</button>
								    </div>												    				
							</div>
							<div style="padding-bottom:1.1em;" class="span8 form-inline">	
								    <label for="centroRM"><strong>Ganglios resecados</strong></label>
									<input type="text" id="gangliosResaPost" class="span3">
								    <label for="fechaRM" style="margin-left:25px"><strong>Ganglios positivos</strong></label>
									<input type="text" id="gangliosPosiPost" class="span3">
							</div>		
						 </div>		   				
		   			</div>	
		  			<div class="row-fluid">		
		  				 <div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Invasión Vascular</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="invaVascularRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="invaVascularRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 
		  				<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Invasión Perineural</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="invaPeriRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="invaPeriRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>
						<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Linfatica</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="linfaTicaRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="linfaTicaRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	
						<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Budding Tumoral</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="buddTomoralRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="buddTomoralRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>		
						<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Pushing Border</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="pushBorderRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="pushBorderRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		 
						</div>											   					 				   					   					   			   				   			
				</div>	
		   		<div class="row-fluid">	
						<div class="span5">	  	
						 <label><strong>Grado de regresión</strong></label>
							<div style="padding-bottom:1.1em;" class="span12 form-inline">	
								    <label for="centroRM"><strong>Dvorak</strong></label>
									<input type="text" id="gradoRegresionDvorak" class="span4">
								    <label for="fechaRM" style="margin-left:25px"><strong>CAP </strong></label>
									<input type="text" id="capVal" class="span4">
							</div>
						</div>		 
							<div class="span3" style="">	 
			     			 <label for="tipoComprobanteCaja"><strong>Rta completa patológica</strong></label>
			   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
								<div class="span7" style="padding-bottom:1.1em;">	
										  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="rtaCompletaRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
										    <button type="button" name="rtaCompletaRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
									    </div>										    				
								</div>		
							 </div>		
						</div>
	 			 </div>			
		  		<div class="row-fluid">		
		  				 <div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>IHQ</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="ihqRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="ihqRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>	 
		  				<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>KRAS</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="krasRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
									    <button type="button" name="krasRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>				
						<div class="span2" style="">	 
		     			 <label for="tipoComprobanteCaja"><strong>Tipo KRAS</strong></label>
		   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
							<div class="span7" style="padding-bottom:1.1em;">	
									  <div class="btn-group" data-toggle="buttons-checkbox">
									    <button type="button" name="tipoKrasRadio" id="opcion1" value="0" class="btn btn-primary">WT</button>
									    <button type="button" name="tipoKrasRadio" id="opcion2" value="1" class="btn btn-primary">M</button>
								    </div>										    				
							</div>		
						 </div>		
						</div>							   					 				   					   					   			   				   			
				</div>		 			 			   			 
		   		</div>
				</fieldset>
			</div>
			<div class="row-fluid">
				<fieldset>
				<legend style="margin-bottom: 0px !important;border-bottom: 1px solid #9B9B9E !important;">Tratamiento adyuvante<button div="TratamientoAdytTab" style="float: right; margin-top: 5px" class="colapsableBtn btn btn-primary" ><i class="icon-plus"></i></button> </legend>
				<div id="TratamientoAdytTab" style="padding: 5px;border-bottom: 1px solid #9B9B9E;border-left: 1px solid #9B9B9E; border-right: 1px solid #9B9B9E;border-radius:0 0 4px 4px;display: none">
		   			<div class="row-fluid">
			   			<div class="span7" style="padding-bottom: 1.1em;">	  	
							 <label><strong>Quimioterapia</strong></label>
							 		  <div class="btn-group" data-toggle="buttons-checkbox">
										    <button type="button" name="quimiotrataRadio"   value="0" class="btn btn-primary">XELOX</button>
										    <button type="button" name="quimiotrataRadio"   value="1" class="btn btn-primary">BFOL</button>
										    <button type="button" name="quimiotrataRadio"   value="2" class="btn btn-primary">FOLFOX</button>
										    <button type="button" name="quimiotrataRadio"   value="3" class="btn btn-primary">CAPECITABINA</button>
										    <button type="button" name="quimiotrataRadio" onclick="$('#quimiotrataOtro').focus()" value="4" class="btn btn-primary">Otro</button>
										 <input type="text" class="" name="quimiotrataOtro" id="quimiotrataOtro"  onclick="$('button[name=quimiotrataRadio][value=4]').addClass('active');" style="margin-bottom: 0px; margin-left:2px">
									    </div>
						</div>
						<div class="span5" style="margin-top: 20px">	 
						<label class="radio inline">
									<strong>N Ciclos:</strong>
								<select id="nroCiclosTrata" class="input-mini">
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								</select>
					    </label>
					    </div>
		   			</div>	
					<div class="row-fluid">				
						<div class="span12">	  	
						 		<div class="span2" style="">	 
						     			 <label for="tipoComprobanteCaja"><strong>Radioterapia</strong></label>
						   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
											<div class="span7" style="padding-bottom:1.1em;">	
													  <div class="btn-group" data-toggle="buttons-checkbox">
													    <button type="button" name="radioTeRadio" id="opcion1" value="0" class="btn btn-primary">Si</button>
													    <button type="button" name="radioTeRadio" id="opcion2" value="1" class="btn btn-primary">No</button>
												    </div>										    				
											</div>		
										 </div>		
								</div>		
								<div style="padding-bottom:1.1em; margin-top:24px" class="span10 form-inline">	
								    <label for="centroRM"><strong>Dosis total</strong></label>
									<input type="text" id="dosisTotalTrata" class="span2">
								    <label for="fechaRM" style="margin-left:25px"><strong>Fecha inicio</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="dosisTRataFechaInicio">
									<label for="fechaRM" style="margin-left:25px"><strong>Fecha finalización</strong></label>
									<input type="text" class="span2" alt="dateP"  placeholder="dd/MM/yyyy" id="dosisTRataFechaFin">
								</div>
						</div>
		   			</div>		
					<div class="row-fluid">				
						<div class="span12">	  	
						 		<div class="span2" style="">	 
						     			 <label for="tipoComprobanteCaja"><strong>Suspendió</strong></label>
						   		  	 	 <div class="row-fluid" style="padding-bottom:1.1em;margin-left:2.5641%">	
											<div class="span7" style="padding-bottom:1.1em;">	
													  <div class="btn-group" data-toggle="buttons-checkbox">
													    <button type="button" name="suspendioYesRadio" id="opcion2" value="0" class="btn btn-primary">No</button>
													    <button type="button" name="suspendioYesRadio" id="opcion1" value="1" class="btn btn-primary">Si</button>
												    </div>										    				
											</div>		
										 </div>		
								</div>		
								<div style="padding-bottom:1.1em; margin-top:24px" class="span10 form-inline">	
								    <label for="centroRM"><strong>Dias</strong></label>
									<input type="text" id="suspenTrataDias" class="span2">
								</div>
						</div>
		   			</div>			   			   				 			   			 
		   		</div>
				</fieldset>
			</div>												 
			  <br>
				<div class="row-fluid">	 
				<div class="pull-right">			
		               <button type="button" class="btn btn-primary"  id="searchButton" name="searchButton">Buscar</button>
		               <button type="button" class="btn" id="clearSearchButton" name="clearSearchButton" >Remover filtros</button>	
				</div>
				</div>
        </form>
		  </div>
      </div>
      </div><!--/row-->
           <hr>
 </div>
     <div class="container" style="width:95%"> <!-- Agregado a mano! -->          
     <div class="row-fluid">
     <div class="span12 thumbnail">
		  <div class="row-fluid">
<!-- 		  Tabla -->
		     		<div style="width: 100%" align="center" >
			    		<div style="height: 1px" ></div>
	  						 <table style="text-align: center;font-size: 15px" align="center" width="100%" id="listClientTable">
	             			 </table>	
	             		<div id="listClientTableGrid"></div>
              		</div>
		  </div>

      </div>
      </div>
      <hr>
      </div>
  <div class="container" >    
<!-- edit patient -->
     <div class="row-fluid editClientDiv" style="display: none">
    <div class="bs-docs-example"> 
     <div class="">
		  <div class="row-fluid">
 	  		 <form id="editPatientForm" action="" method="post">
 	  		 	        <input type="hidden" class="" id="idPatientEdit" name="idPatientEdit" />
	         <div class="row-fluid">
	        	<div class="span4">    
					<label for="nombreC"><strong>Nombre</strong></label>
						<input type="text" class="span12" id="nombreC" name="nombreC" />
					<label for="direccionC"><strong>Dirección</strong></label>
						<input type="text" class="span12" id="direccionC" name="direccionC" />
					<label for="localidadC"><strong>Localidad</strong></label>
					<div class="input-prepend">
						<span class="add-on"><i class="icon-map-marker icon-large"></i></span>		
						<input type="text" class="span12" id="localidadC" name="localidadC" />											
					</div>	
				</div>
				<div class="span4">    
						<div class="row-fluid">
					<div class="span6">	
					<label for="dateBirth"><strong>Fecha de nacimiento</strong></label>
				   <input type="text" class="span8" id="dateBirth" alt="dateP" name="dateBirth" placeHolder="dd/MM/yyyy" />			  	
				  	</div>
				  	<div class="span6">
				  	<label for="tipoComprobanteCaja"><strong>Sexo</strong></label>
				   <label class="radio inline">
						    <input type="radio" name="sexoEdit" id="masSexEdit" value="M" checked="checked">
							M
						</label>
					    <label class="radio inline">
						    <input type="radio" name="sexoEdit" id="femSexEdit" value="F">
							F
						</label>
				  </div>		
				</div>		
					<label for="emailC"><strong>Correo electrónico</strong></label>
					 <div class="input-prepend">
						 <span class="add-on"><i class="icon-envelope icon-large"></i></span>
						<input type="text" class="" id="emailC" name="emailC" />
					 </div>
					<div class="row-fluid">
				     <div class="span4">
				     <label for="typeId"><strong>Obra social</strong></label>
						<select id="typeId" name="typeId" class="span10">
						</select>
					</div>	
				    <div class="span5">
					<label for="cuitC"><strong>Número Obra Social</strong></label>
						<input type="text" class="" id="numOS" name="numOS" />
					</div>	
					</div>	 
				</div>		
				<div class="span4">    
					<label for="cuitC"><strong>Número Documento</strong></label>
						<input type="text" class="" id="cuitC" name="cuitC" />
					<div id="phone-container">
						<div class="" id="phone-form" >
						<label for="telC"><strong>Teléfono</strong></label>
							<div class="form-search input-prepend">
							<span class="add-on">#</span>
							<input type="text" class="" id="telC-1" name="telC" /><button type="button" style="display: none" id="removeBtn" class="btn btn-mini btn-danger"><i class="icon-remove icon-white icon-large"></i></button>
							</div>   
<!-- 							<span id="helpB" class="help-block"><a id="addNumberBtn" class="btn btn-mini btn-info" ><i class="icon-plus icon-white"></i> Agregar otro Nro de Teléfono</a></span> -->
						</div>
					</div> 
				</div>		
			</div>	
				<div class="row-fluid">	 
					<div class="span7">							 
						<label for="comentC"><strong>Comentario</strong></label>
					  		<textarea name="comentC" id="comentC" rows="3" class="input-block-level"></textarea>
					</div>
				</div>
				<div class="row-fluid">	 
				<div class="pull-right">			
		               <button type="button" onclick="jQuery('#editPatientForm').submit();" class="btn btn-primary">Guardar</button>
		               <button type="button" onclick="cancelEdit();" class="btn" >Cancelar</button>	
				</div>
				</div>

        </form>
		  </div>
      </div>
      	</div>
      </div><!--/row-->
      
    </div><!--/.fluid-container-->
    
 <div aria-hidden="false" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" class="modal hide fade in" id="consultInfoModal" style="display: none; width: 880px; margin-left:-440px">
           <div class="modal-header">
              <button aria-hidden="true" onclick="$('#consultInfoModal').modal('hide');" class="close" type="button">×</button>
              <h3 id="myModalLabel">Detalle Paciente</h3>
          </div>
          <div class="modal-body">
          <div class="row-fluid">	 
	          <div id="accordion-preconsulta" class="accordion span6" style="margin-left: 0px">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#preconsultaData').collapse('toggle');"  data-parent="accordion-preconsulta" class="accordion-toggle">
	                    Preconsulta</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#preconsultaData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-plus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="preconsultaData" class="collapse">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>
	
	         <div id="accordion-motivoConsultaData" class="accordion span6" style="">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleMotivo');$('#motivoConsultaData').collapse('toggle');"  data-parent="accordion-motivoConsultaData" class="accordion-toggle">
	                    Motivo de la consulta</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleMotivo');$('#motivoConsultaData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-plus-sign" id="imgToggleMotivo"></i>
	                    </span>
	                </div>
	                <div id="motivoConsultaData" class="collapse">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                 <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	        </div>
        </div>
        <div class="row-fluid">
          <div id="accordion-antecedentes" class="accordion span6" style="margin-left: 0px">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#antecedentesData').collapse('toggle');"  data-parent="accordion-antecedentes" class="accordion-toggle">
	                    Antecedentes</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#antecedentesData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="antecedentesData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>
         	 <div id="accordion-evaClinica" class="accordion span6" >
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#evaClinicaData').collapse('toggle');"  data-parent="accordion-evaClinica" class="accordion-toggle">
	                    Evaluación Clinica</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#evaClinicaData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="evaClinicaData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	                 	
        </div>
        <div class="row-fluid">
         	 <div id="accordion-exaProcto" class="accordion span6" style="margin-left: 0px">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#exaProctoData').collapse('toggle');"  data-parent="accordion-exaProcto" class="accordion-toggle">
	                    Examen Proctológico</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#exaProctoData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="exaProctoData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 
         	 <div id="accordion-estadificacion" class="accordion span6">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#estadificacionData').collapse('toggle');"  data-parent="accordion-estadificacion" class="accordion-toggle">
	                    Estadificación</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#estadificacionData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="estadificacionData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 	                 
        </div>
        <div class="row-fluid">
         	 <div id="accordion-anatPatologica" class="accordion span6" style="margin-left: 0px">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#anatPatologicaData').collapse('toggle');"  data-parent="accordion-anatPatologica" class="accordion-toggle">
	                    Anatomia patológica</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#anatPatologicaData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="anatPatologicaData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 
         	 <div id="accordion-tratamiento" class="accordion span6">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoData').collapse('toggle');"  data-parent="accordion-tratamiento" class="accordion-toggle">
	                    Tratamiento</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="tratamientoData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 	 
	         <div class="row-fluid">      
         	 <div id="accordion-tratamientoNeoGlobal" class="accordion span6">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoNeoGlobalData').collapse('toggle');"  data-parent="accordion-tratamientoNeoGlobal" class="accordion-toggle">
	                    Tratamiento Neoadyuante</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoNeoGlobalData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="tratamientoNeoGlobalData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	
         	 <div id="accordion-anatomiaPatologicaPost" class="accordion span6">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#anatomiaPatologicaPostData').collapse('toggle');"  data-parent="accordion-anatomiaPatologicaPost" class="accordion-toggle">
	                    Anatomia patológica Post</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#anatomiaPatologicaPostData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="anatomiaPatologicaPostData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 	
	        </div>
	        <div class="row-fluid"> 
         	 <div id="accordion-tratamientoAdyu" class="accordion span6">
	            <div class="accordion-group">
	                <div class="accordion-heading" style="height: 40px">
	                    <a  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoAdyuData').collapse('toggle');"  data-parent="accordion-tratamientoAdyu" class="accordion-toggle">
	                    Tratamiento adyuvante</a>
	                    <span  onclick="javascript:toggleCollapseImg('imgToggleReserva');$('#tratamientoAdyuData').collapse('toggle');" style="position:relative;left:90%;top:-27px;cursor: pointer;">
	                        <i class="icon-minus-sign" id="imgToggleReserva"></i>
	                    </span>
	                </div>
	                <div id="tratamientoAdyuData">
	                   <div class="accordion-inner">
	                    <table class="table table-striped table-condensed">
				        <tbody>
				            <tr>
				                <td class="ui-loadingBar"></td>
				            </tr>
				        </tbody>
	    			</table>
	                 </div>
	                </div>
	            </div>
	         </div>	 	
	        </div> 	         	          	                   
        </div>
       </div>  
            <div class="modal-footer">
              <button onclick="$('#consultInfoModal').modal('hide');" class="btn" >Cerrar</button>
              <button class="btn btn-primary" id="dialogSeeConsult">Ver consulta</button>
            </div>
 		</div>
             
  <div id="footer" >
      <div class="container">
        <p class="muted credit">Creada por <a href="#">[Matias Iseas]</a>.</p>
      </div>
    </div>
   	<div id="dialogSendEmail" style="display: none" align="" title="Enviar email" >
	<p style="margin:0px;">Destinatario: <input class="text2" type="text" id="toEmail" /> </p>
	<p style="margin:0px;">Asunto: <input class="text2" type="text" id="subjectEmail" /> </p>
	<p style="margin:10px 0px 0px 0px">Contenido:</p>
	<textarea style="width: 500px" name="contentEmail" id="contentEmail" rows="8" cols="6"></textarea>
	</div> 
	<div id="dialogDeleteClient" style="display: none" align="" title="Eliminar paciente" >
	<p style="margin:0px;"><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>Esta seguro de que desea eliminar el paciente? </p>
	</div> 
	<div id="dialogErrorOperation" class="" style="display: none" align="" title="Eliminar cliente" >
	<p style="margin:0px;"><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>Se ha producido un error al realizar la operacion! </p>
	</div> 
	<div id="dialogSuccessOperation"  style="display: none" align="" title="Eliminar cliente" >
	<p style="margin:0px;"><span class="ui-icon ui-icon-circle-check" style="float: left; margin: 0 7px 20px 0;"></span>Operacion realizada exitosamente!</p>
	</div> 
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
<script src="js/i18n/grid.locale-es.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.bt.min.js" ></script>  
<script type="text/javascript" src="js/jquery.validate.js" ></script>  
<script type="text/javascript" src="js/jquery.scrollTo-min.js" ></script>  

<script type="text/javascript">
jQuery(function() {
cleanScreenSearch();

jQuery.ajax({
    url: '<c:url value="/loadAllCat.json" />',
    type: "GET",
    dataType: "json",
    contentType: "application/json",
    data:"", 
    success: function(resp){                                       
   	 var options = $("#typeId");
   	 $.each(resp.obraSociales, function() {
   	     options.append($("<option />").val(this.idos).text(this.nombre));
   	 });
//    	 var options = $("#clientState");
//    	 $.each(resp.estadoCli, function() {
//    	     options.append($("<option />").val(this.idestadocli).text(this.descripcion));
//    	 });
    }
  });
  
  

jQuery("#searchButton").click(function(){
	 //var filterObject = {};
	 var name = jQuery("#nombreSearch").val();
	 var dni = jQuery("#cuitSearch").val();
	 var sexoSelected = jQuery("button[name=sexo].active").val(); //jQuery("input[name=sexo]:checked").val();
	 //preconsulta
	 if(jQuery("#preconsultaTab").css('display') !== 'none'){
		 var peso = jQuery("#pesoPre").val();
		 var talla = jQuery("#tallePre").val();
		 var superficie = jQuery("#superPre").val();  		
	     var performance = jQuery("button[name=performanceRadio].active").val();
	 }
	 //motivo de la consulta
	 if(jQuery("#motivoTab").css('display') !== 'none'){
		 var motivosConsulta = "";
		 var motivoOtro = "";
		 jQuery("button[name=motivoCbox].active").each(function(index,btn){
			 if(btn.id == 'motivoOtroCB'){
				 motivoOtro = jQuery("#motivoOtro").val();  
			 }
			 else{
				 motivosConsulta+="-"+btn.id;
			 }
		 });
		 var dateStartMotivo = dbFormatDate(jQuery("#dateStartMotivo").val());
		 var mesesMotivo = jQuery("#mesesMotivo").val();
	 }
	 //Antecedentes
	 if(jQuery("#antecedentesTab").css('display') !== 'none'){
			var apersonalPat1 = $("#apersonalPat1").hasClass('active')?true:'';
			var apersonalPat2 = $("#apersonalPat2").hasClass('active')?true:'';
			var apersonalPat3 = $("#apersonalPat3").hasClass('active')?true:'';
			var apersonalPat4 = $("#apersonalPat4").hasClass('active')?true:'';
			var apersonalPat5 = $("#apersonalPat5").hasClass('active')?true:'';
			var neoplasiaVal = $("#neoplasia").hasClass('active')?true:'';
			var neoPlasiaText = $("#neoplasiaText").val();
			
			var famCancer = "";
			
			if($("#checkfamMenorNin").is(':checked')) {  
				famCancer =  famCancer+"-"+$("#checkfamMenorNin").attr("id");
			}
			if($("#checkfamMenor60").is(':checked')) {  
				famCancer =  famCancer+"-"+$("#checkfamMenor60").attr("id");
				var famMenor60Nro = jQuery("#famMenor60").val();	
				famCancer =  famCancer+"*"+famMenor60Nro;
			}
			if($("#checkfamMayor60").is(':checked')) {  
				famCancer =  famCancer+"-"+$("#checkfamMayor60").attr("id");
				var famMayor60Nro = jQuery("#famMayor60").val();
				famCancer =  famCancer+"*"+famMayor60Nro;
			}
			if($("#checkfamSegundoGrado").is(':checked')) {  
				famCancer =  famCancer+"-"+$("#checkfamSegundoGrado").attr("id");
				var famSegundoGradoNro = jQuery("#famSegundoGrado").val();
				famCancer =  famCancer+"*"+famSegundoGradoNro;
			}			
			
			var anteSindrome = []; 
			jQuery("button[name=anteSindrome].active").each(function(index, val){	
				anteSindrome.push(val.value);
			});
			
			var siSindrome = "";
			if($("#checkPAF").hasClass('active')) {  
				siSindrome =  siSindrome+"-"+$("#checkPAF").attr("id");
			}
			if($("#checkLYNCH").hasClass('active')) {  
				siSindrome =  siSindrome+"-"+$("#checkLYNCH").attr("id");
			}
			if($("#checkMYH").hasClass('active')) {  
				siSindrome =  siSindrome+"-"+$("#checkMYH").attr("id");
			}
			
	 }
	 //evaluacion clínica(hallazgos)
	  if(jQuery("#evaClinicaTab").css('display') !== 'none'){
	 		var evaRecto = "";
			if($("#haRecto1").hasClass('active')) {  
				evaRecto =  evaRecto+"-"+$("#haRecto1").attr("id");
			}
			if($("#haRecto2").hasClass('active')) {  
				evaRecto =  evaRecto+"-"+$("#haRecto2").attr("id");
			}
			if($("#haRecto3").hasClass('active')) {  
				evaRecto =  evaRecto+"-"+$("#haRecto3").attr("id");
			}
	  }	
	 //examen proctologico
	 if(jQuery("#exaProctoTab").css('display') !== 'none'){
		 var movilRectal = jQuery("button[name=movilRectal].active").val();
		 var fijoRectal = jQuery("button[name=fijoRectal].active").val();
		 var esfinterRectal = jQuery("button[name=esfinterRectal].active").val();
		 var eePresente = []; 
		 jQuery("button[name=eePresente].active").each(function(index, val){	
			 eePresente.push(val.value);
	     });
		 var eeTipo = [];
		 jQuery("button[name=eeTipo].active").each(function(index, val){	
			 eeTipo.push(val.value);
	     });
		 var eeTipoN = [];
		 jQuery("button[name=eeTipoN].active").each(function(index, val){	
			 eeTipoN.push(val.value);
	     });
		 var eeesfinter = [];
		 jQuery("button[name=eeesfinter].active").each(function(index, val){	
			 eeesfinter.push(val.value);
	     }); 
		 var eeMedida = [];
		 jQuery("button[name=eeMedida].active").each(function(index, val){	
			 eeMedida.push(val.value);
	     }); 
		 var eeFecha = dbFormatDate(jQuery("#eeFecha").val());
	 }
	 //estadificacion
	 if(jQuery("#estadificacionTab").css('display') !== 'none'){
		 var centroRM = $("#centroRM").val();
		 var fechaRM = dbFormatDate($("#fechaRM").val());
		 var distanciaSupRM = $("#distanciaSupRM").val();
		 var distanciaMarARadio = [];
		 jQuery("button[name=distanciaMarARadio].active").each(function(index, val){	
			 distanciaMarARadio.push(val.value);
	     }); 
		 var alturaRM = $("#alturaRM").val(); 
		 var numTRadio = [];
		 jQuery("button[name=numTRadio].active").each(function(index, val){	
			 numTRadio.push(val.value);
	     }); 
		 var numTNRadio = [];
		 jQuery("button[name=numTNRadio].active").each(function(index, val){	
			 numTNRadio.push(val.value);
	     });
		 var crmPresente = []; 
		 jQuery("button[name=crmPresente].active").each(function(index, val){	
			 crmPresente.push(val.value);
	     }); 
		 var emviPresente = []; 
		 jQuery("button[name=emviPresente].active").each(function(index, val){	
			 emviPresente.push(val.value);
	     }); 		
		 var depoSati = []; 
		 jQuery("button[name=depoSati].active").each(function(index, val){	
			 depoSati.push(val.value);
	     }); 
		 var estaRInterior = []; 
		 jQuery("button[name=estaRInterior].active").each(function(index, val){	
			 estaRInterior.push(val.value);
	     }); 
		 var inguinales = []; 
		 jQuery("button[name=inguinales].active").each(function(index, val){	
			 inguinales.push(val.value);
	     }); 
		 var gaLate = []; 
		 jQuery("button[name=gaLate].active").each(function(index, val){	
			 gaLate.push(val.value);
	     });
		 var esfinterRM = []; 
		 jQuery("button[name=esfinterRM].active").each(function(index, val){	
			 esfinterRM.push(val.value);
	     });
		 var tcTorax = []; 
		 jQuery("button[name=tcTorax].active").each(function(index, val){	
			 tcTorax.push(val.value);
	     });
		 var tcAbdomen = []; 
		 jQuery("button[name=tcAbdomen].active").each(function(index, val){	
			 tcAbdomen.push(val.value);
	     });
		 var petTC = []; 
		 jQuery("button[name=petTC].active").each(function(index, val){	
			 petTC.push(val.value);
	     });
		 var mtsRadio = []; 
		 jQuery("button[name=mtsRadio].active").each(function(index, val){	
			 mtsRadio.push(val.value);
	     });
		 var ceaAument = []; 
		 jQuery("button[name=ceaAument].active").each(function(index, val){	
			 ceaAument.push(val.value);
	     });
		 var caAument = []; 
		 jQuery("button[name=caAument].active").each(function(index, val){	
			 caAument.push(val.value);
	     });
		 var marcaTuFecha = dbFormatDate($("#marcaTuFecha").val());
		 var suvEstati = $("#suvEstati").val();
		 var tnmValT = jQuery("#tnmValT").val();
		 var tnmValN = jQuery("#tnmValN").val();
	 	 var tnmValM = jQuery("#tnmValM").val();
		 var ptnmValT = jQuery("#ptnmValT").val();
		 var ptnmValN = jQuery("#ptnmValN").val();
		 var ptnmValM = jQuery("#ptnmValM").val();

	 	 var metastaDist = "";
		 for(var i = 1; i < 10; i++) {
		 	 if($("#metastaDist"+i).hasClass('active')) {  
		 			metastaDist =  metastaDist+"-"+$("#metastaDist"+i).attr("id");
			 }
		 }
		 var metastaDisOtra = jQuery("#metastaDisOtra").val();
		 var revisionRMFecha = dbFormatDate($("#revisionRMFecha").val());
		 var revisionRMDistan = jQuery("#revisionRMDistan").val();
		 var revisionRMMargen = []; 
		 jQuery("button[name=revisionRMMargen].active").each(function(index, val){	
			 revisionRMMargen.push(val.value);
	     });
		 var revisionAlturaRM = jQuery("#revisionAlturaRM").val();
	 } 
	 //anatomia patologica
	 if(jQuery("#AnotomiaPatTab").css('display') !== 'none'){
		 var gradoDiferRadio = [];
		 jQuery("button[name=gradoDiferRadio].active").each(function(index, val){	
			 gradoDiferRadio.push(val.value);
	     }); 
	 } 
	 //tratamiento
	 if(jQuery("#tratamientoTab").css('display') !== 'none'){
		 var udaOndoRadio = jQuery("button[name=udaOndoRadio].active").val();
		 var udaOndoOtro =  jQuery("#udaOndoOtro").val();
		 
		 var cirugiaTrataRadio = []; 
		 jQuery("button[name=cirugiaTrataRadio].active").each(function(index, val){	
			 cirugiaTrataRadio.push(val.value);
	     }); 			 
		 var quimioInduccion = "";
		 jQuery("button[name=quimioInduccion].active").each(function(index, val){	
			 quimioInduccion.push(val.value);
	     });
		 var quimioInduccionOtra = jQuery("#quimioInduccionOtro").val();
		 var quimioInduccionCiclos = jQuery("#quimioInduccionCiclos").val();
		 
		 var quimioradioInduRadio = "";
		 jQuery("button[name=quimioradioInduRadio].active").each(function(index, val){	
			 quimioradioInduRadio.push(val.value);
	     });
		 var quimioradioInduRadioOtro = jQuery("#quimioradioInduRadioOtro").val();
		 
		 var quimioIntervalRadio = "";
		 jQuery("button[name=quimioIntervalRadio].active").each(function(index, val){	
			 quimioIntervalRadio.push(val.value);
	     });
		 var quimioIntervalRadioOtro = jQuery("#quimioIntervalRadioOtro").val();
		 var quimioIntervalCiclos = jQuery("#quimioIntervalCiclos").val();
	 }
	 //Tratamiento NeoAdtuante
	 if(jQuery("#tratNeoadyuanteTab").css('display') !== 'none'){
		 var radioTera = []; 
		 jQuery("button[name=radioTera].active").each(function(index, val){	
			 radioTera.push(val.value);
	     }); 
		 var dosisTotalRadioTer = $("#dosisTotalRadioTer").val();
		 var fechaInicioRadioTer = dbFormatDate($("#fechaInicioRadioTer").val());
		 var fechaFinRadioTer = dbFormatDate($("#fechaFinRadioTer").val());
		 
		 var quimioRadio = []; 
		 jQuery("button[name=quimioRadio].active").each(function(index, val){	
			 quimioRadio.push(val.value);
	     }); 
		 var quimioEsquema = $("#quimioEsquema").val();
		 var quimioNroCiclos = $("#quimioNroCiclos").val();
		 var fechaInicioQuimio = dbFormatDate($("#fechaInicioQuimio").val());
		 var fechaFinQuimio = dbFormatDate($("#fechaFinQuimio").val());
		 
		 var centroPostTrata = $("#centroPostTrata").val();
		 var fechaPostTrata = dbFormatDate($("#fechaPostTrata").val());		 
		 var distanciaPostTrata = $("#distanciaPostTrata").val();
		 var distMargenPostTrataRadio = [];
		 jQuery("button[name=distMargenPostTrataRadio].active").each(function(index, val){	
			 distMargenPostTrataRadio.push(val.value);
	     }); 
		 var alturaPostTrataRadio = $("#alturaPostTrataRadio").val(); 
		 
		 var tumorPostTrataRadio = [];
		 jQuery("button[name=tumorPostTrataRadio].active").each(function(index, val){	
			 tumorPostTrataRadio.push(val.value);
	     }); 
		 var tumorPostTrataNRadio = [];
		 jQuery("button[name=tumorPostTrataNRadio].active").each(function(index, val){	
			 tumorPostTrataNRadio.push(val.value);
	     }); 
		 
		 var crmPostTrataRadio = []; 
		 jQuery("button[name=crmPostTrataRadio].active").each(function(index, val){	
			 crmPostTrataRadio.push(val.value);
	     }); 
		 var emviPostTrataRadio = []; 
		 jQuery("button[name=emviPostTrataRadio].active").each(function(index, val){	
			 emviPostTrataRadio.push(val.value);
	     }); 				 
		 var depoSatiRadio = []; 
		 jQuery("button[name=depoSatiRadio].active").each(function(index, val){	
			 depoSatiRadio.push(val.value);
	     }); 
		 var estaRInteriorRadio = []; 
		 jQuery("button[name=estaRInteriorRadio].active").each(function(index, val){	
			 estaRInteriorRadio.push(val.value);
	     }); 		 
		 var gradoRegresionRadio = []; 
		 jQuery("button[name=gradoRegresionRadio].active").each(function(index, val){	
			 gradoRegresionRadio.push(val.value);
	     }); 
		 var inguinalesRadio = []; 
		 jQuery("button[name=inguinalesRadio].active").each(function(index, val){	
			 inguinalesRadio.push(val.value);
	     });	 
		 var gaLateRadio = []; 
		 jQuery("button[name=gaLateRadio].active").each(function(index, val){	
			 gaLateRadio.push(val.value);
	     });
		 var infiltraEsPostRadio = []; 
		 jQuery("button[name=infiltraEsPostRadio].active").each(function(index, val){	
			 infiltraEsPostRadio.push(val.value);
	     });		 
		 var evaPostRadio = []; 
		 jQuery("button[name=evaPostRadio].active").each(function(index, val){	
			 evaPostRadio.push(val.value);
	     });
		 
		 var ciruNeoRadio = []; 
		 jQuery("button[name=ciruNeoRadio].active").each(function(index, val){	
			 ciruNeoRadio.push(val.value);
	     }); 
		 var prodCiruRadio = []; 
		 jQuery("button[name=prodCiruRadio].active").each(function(index, val){	
			 prodCiruRadio.push(val.value);
	     }); 
		 var milesCiliRadio = []; 
		 jQuery("button[name=milesCiliRadio].active").each(function(index, val){	
			 milesCiliRadio.push(val.value);
	     });
		 var milesCiliOtro = $("#milesCiliOtro").val();
		 
		 var urgenciaRadio = []; 
		 jQuery("button[name=urgenciaRadio].active").each(function(index, val){	
			 urgenciaRadio.push(val.value);
	     }); 
		 var urgenciaFecha = dbFormatDate($("#urgenciaFecha").val());
		 var cirujaName = $("#cirujaName").val();
		 var waitSeeRadio = []; 
		 jQuery("button[name=waitSeeRadio].active").each(function(index, val){	
			 waitSeeRadio.push(val.value);
	     }); 
		 var fechaInicioConducta = dbFormatDate($("#fechaInicioConducta").val());
	 }
	 //Anatomia patológica Post
	 if(jQuery("#anotomiaPatPostTab").css('display') !== 'none'){
		 var tumorAnatPostRadio = [];
		 jQuery("button[name=tumorAnatPostRadio].active").each(function(index, val){	
			 tumorAnatPostRadio.push(val.value);
	     }); 
		 var tumorAnatPostNRadio = [];
		 jQuery("button[name=tumorAnatPostNRadio].active").each(function(index, val){	
			 tumorAnatPostNRadio.push(val.value);
	     });  
		 var gangliosResaPost = $("#gangliosResaPost").val();
		 var gangliosPosiPost = $("#gangliosPosiPost").val();
		 var invaVascularRadio = []; 
		 jQuery("button[name=invaVascularRadio].active").each(function(index, val){	
			 invaVascularRadio.push(val.value);
	     });	
		 var invaPeriRadio = []; 
		 jQuery("button[name=invaPeriRadio].active").each(function(index, val){	
			 invaPeriRadio.push(val.value);
	     });	
		 var linfaTicaRadio = []; 
		 jQuery("button[name=linfaTicaRadio].active").each(function(index, val){	
			 linfaTicaRadio.push(val.value);
	     });	
		 var buddTomoralRadio = []; 
		 jQuery("button[name=buddTomoralRadio].active").each(function(index, val){	
			 buddTomoralRadio.push(val.value);
	     });	
		 var pushBorderRadio = []; 
		 jQuery("button[name=pushBorderRadio].active").each(function(index, val){	
			 pushBorderRadio.push(val.value);
	     });	
		 var gradoRegresionDvorak = $("#gradoRegresionDvorak").val();
		 var capVal = $("#capVal").val();
		 var rtaCompletaRadio = []; 
		 jQuery("button[name=rtaCompletaRadio].active").each(function(index, val){	
			 rtaCompletaRadio.push(val.value);
	     });	
		 var ihqRadio = []; 
		 jQuery("button[name=ihqRadio].active").each(function(index, val){	
			 ihqRadio.push(val.value);
	     });	
		 var krasRadio = []; 
		 jQuery("button[name=krasRadio].active").each(function(index, val){	
			 krasRadio.push(val.value);
	     });
		 var tipoKrasRadio = []; 
		 jQuery("button[name=tipoKrasRadio].active").each(function(index, val){	
			 tipoKrasRadio.push(val.value);
	     });		 
	 }
	 //Anatomia patológica Post
	 if(jQuery("#TratamientoAdytTab").css('display') !== 'none'){
		 var quimiotrataRadio = []; 
		 jQuery("button[name=quimiotrataRadio].active").each(function(index, val){	
			 quimiotrataRadio.push(val.value);
	     });
		 var quimiotrataOtro = $("#quimiotrataOtro").val();
		 var nroCiclosTrata = $("#nroCiclosTrata").val();
		 var radioTeRadio = []; 
		 jQuery("button[name=radioTeRadio].active").each(function(index, val){	
			 radioTeRadio.push(val.value);
	     });
		 var dosisTotalTrata = $("#dosisTotalTrata").val();
		 var dosisTRataFechaInicio = dbFormatDate($("#dosisTRataFechaInicio").val());
		 var dosisTRataFechaFin = dbFormatDate($("#dosisTRataFechaFin").val());
		 var suspendioYesRadio = []; 
		 jQuery("button[name=suspendioYesRadio].active").each(function(index, val){	
			 suspendioYesRadio.push(val.value);
	     });
		 var suspenTrataDias = $("#suspenTrataDias").val();		 
	 }
	 
	 var filterObject = {"nombre":name,"dni":dni,"sexo":sexoSelected,"movilRectal":movilRectal,"fijoRectal":fijoRectal,
			  'ee':eePresente,'eeTipo':eeTipo,'eeTipoN':eeTipoN,'eeInfiltra':eeesfinter,'eeInfiltraMedida':eeMedida,'eeFecha':eeFecha,
			  'patologicoNinguno': apersonalPat1, 'patologicoColitis': apersonalPat2, 'patologicoAdenoma': apersonalPat3,
			  'patologicoCrohn': apersonalPat4, 'patologicoHiv': apersonalPat5, 'patologicoNeoplasia': neoplasiaVal,
			  'neoplasia':neoPlasiaText, 'familiarCancer':famCancer, 'tipoCcrh':anteSindrome, 'antecedentesCcrh':siSindrome,
			  'evaRecto':evaRecto, 'gradoDif':gradoDiferRadio,
			  'rmCentro':centroRM, 'rmFecha':fechaRM, 'rmDistEsfinter':distanciaSupRM, 'rmDistAnal':distanciaMarARadio,
			  'rmAltura':alturaRM, 'rmTumor':numTRadio,'rmTumorN':numTNRadio,
			  'crm':crmPresente, 'emvi':emviPresente,  'depSatelites':depoSati,  'tumoRectoInferior':estaRInterior,
			  'ganglios':inguinales, 'gangliosLate':gaLate,'infiltraEsfinter':esfinterRM,'tcTorax':tcTorax,
			  'tcAbd':tcAbdomen,  'petCt':petTC,  'mts':mtsRadio,'suv':suvEstati,
			  'marTumFecha':marcaTuFecha,  'ceaAumentado':ceaAument,
			  'ca19':caAument, 'tnmT':tnmValT, 'tnmN':tnmValN,'tnmM':tnmValM,'tnmPt':ptnmValT,
			  'tnmPn':ptnmValN,	'tnmPm':ptnmValM,	'metastasis':metastaDist,
			  'metastasisOtra':metastaDisOtra, 'revRmFecha':revisionRMFecha,
			  'revDistanEsfinter':revisionRMDistan, 'revDistanAnal':revisionRMMargen, 'revAltura':revisionAlturaRM,  
			  "consultaMotivos":motivosConsulta,"consultaMotivoOtro":motivoOtro,'fechaInSintoma':dateStartMotivo,'motivoEvoMeses':mesesMotivo,
			  "esfinterRectal":esfinterRectal,"udaOndoRadio":udaOndoRadio, "udaOndoOtro":udaOndoOtro, "peso":peso,"talla":talla,
			  "superficie":superficie,"performance":performance,"cirugia":cirugiaTrataRadio,"quimioterapiaInduc":quimioInduccion,
			  "quimioterapiaInducOtra":quimioInduccionOtra,"quimioteInducNroCiclos":quimioInduccionCiclos,"quimioOtra":quimioradioInduRadio,
			  "quimioOtraOtra":quimioradioInduRadioOtro,"quimioterapiaInter":quimioIntervalRadio,"quimioterapiaInterOtra":quimioIntervalRadioOtro,
			  "quimioteInterNroCiclos":quimioIntervalCiclos,"radioterapia":radioTera ,"radioDosis":dosisTotalRadioTer ,"radioFechaInicio":fechaInicioRadioTer,
			  "radioFechaFinal":fechaFinRadioTer ,"quimio":quimioRadio, "quimioEsquema":quimioEsquema ,"quimioNroCiclos":quimioNroCiclos ,
			  "quimioFechaInicio":fechaInicioQuimio ,"quimioFechaFinal":fechaFinQuimio ,"rmFechaResp":fechaPostTrata ,"rmCentroResp":centroPostTrata ,
			  "rmDistEsfinterResp":distanciaPostTrata ,	"rmDistAnalResp":distMargenPostTrataRadio ,"rmAlturaResp":alturaPostTrataRadio ,"rmTumorResp":tumorPostTrataRadio ,
			  "rmTumorNResp":tumorPostTrataNRadio , "crmResp":crmPostTrataRadio ,"emviResp":emviPostTrataRadio ,"depSatelitesResp":depoSatiRadio,
			  "estadifTumor": estaRInteriorRadio,"gradoRegre":gradoRegresionRadio ,"gangliosImguiResp": inguinalesRadio,"gangliosLateral": gaLateRadio,"infiltraEsf": infiltraEsPostRadio,
			  "evaRespuesta": evaPostRadio,"cirugiaCond":ciruNeoRadio ,"cirugiaProcedCond":prodCiruRadio ,"milesCilindrico":milesCiliRadio ,"milesCilindricoOtro":milesCiliOtro,
			  "urgencia":urgenciaRadio ,"urgenciaFecha":urgenciaFecha ,"cirujano": cirujaName, "waitAndSee": waitSeeRadio,"fechaInicio":fechaInicioConducta,
			  "tumor":tumorAnatPostRadio,"tumorN":tumorAnatPostNRadio,"ganResecados":gangliosResaPost,"ganPositivos":gangliosPosiPost,"invVascular":invaVascularRadio,
			  "invPeri":invaPeriRadio,"linfa":linfaTicaRadio,"buddingTumoral":buddTomoralRadio,
			  "pushingBorder":pushBorderRadio,"gradoRegresion":gradoRegresionDvorak,"cap":capVal,"rtaComPato":rtaCompletaRadio,"ihq":ihqRadio,"kras":krasRadio,
			  "krasTipo":tipoKrasRadio,"quimioterapia":quimiotrataRadio,"quimioterapiaOtro":quimiotrataOtro,
			  "quimioNroCiclosPost":nroCiclosTrata,"radioterapiaPost":radioTeRadio,"radioDosisPost":dosisTotalTrata,"radioFechaInicioPost":dosisTRataFechaInicio,
			  "radioFechaFinalPost":dosisTRataFechaFin,"suspendio":suspendioYesRadio,
			  "suspendioDia":suspenTrataDias};
	 		
		
	  jQuery.ajax({
          url: '<c:url value="/findPatientFilter.json" />',
          type: "POST",
          dataType: "json",
          contentType: "application/json",
          data: JSON.stringify( filterObject ), 
          success: function(resp){     
			     	 if(resp){
				  		 jQuery("#listClientTable").jqGrid("clearGridData");	
				  		 $.each(resp,function(index,ob){
				  			jQuery("#listClientTable").addRowData(index,ob);
				  		 });
			          	 }
			     	 else{
			     		 jQuery("#dialogErrorOperation").dialog("open");
			     		 }
     	 }
       });	 
	  
      //jQuery("#listClientTable").jqGrid('setGridParam',{url:"<c:url value="/findPatient.htm" />?name="+name+"&cuit="+cuit+"&score="+score,page:1}).trigger('reloadGrid');
});

jQuery("#clearSearchButton").click(function(){
	 cleanScreenSearch();
	 cancelEdit();
});



jQuery("#listClientTable").jqGrid({
	 url: '<c:url value="/loadlistPatients.json"/>',
	 datatype: "json", 
	 autowidth : true,
	 height : 200,
	 colNames : ['Operación','','','Nombre','Sexo','DNI',  
	             'Fecha Nac.', 'Localidad','Teléfono','','','','','',''],
		colModel : [ 
		        	{name: 'myac',
						 width:82, 
						 fixed:true, 
						 sortable:false, 
						 resize:false, 
							search: false,
							formatter:function(){
								return "<div style='margin-left: 5px;'>"+
								'<div onmouseout="jQuery(this).removeClass(\'ui-state-hover\')" onmouseover="jQuery(this).addClass(\'ui-state-hover\');"  class="ui-pg-div ui-inline-edit" style="float: left; cursor: pointer; display: block;margin-left: 0px;margin-right: 4px;" title="Modificar fila seleccionada"><span op="edit" class="ui-icon ui-icon-pencil"></span></div>'+											
								'<div onmouseout="jQuery(this).removeClass(\'ui-state-hover\')" onmouseover="jQuery(this).addClass(\'ui-state-hover\');"  class="ui-pg-div ui-inline-edit" style="float: left; cursor: pointer; display: block;" title="Eliminar fila seleccionada"><span op="delete" class="ui-icon ui-icon-trash"></span></div>'+
								'<div onmouseout="jQuery(this).removeClass(\'ui-state-hover\')" onmouseover="jQuery(this).addClass(\'ui-state-hover\');"  class="ui-pg-div ui-inline-edit" style="float: left; cursor: pointer; display: block;margin-left: 4px;margin-right: 4px;" title="Seleccionar paciente"><span op="select" class="ui-icon ui-icon-check"></span></div>'+
								'<div onmouseout="jQuery(this).removeClass(\'ui-state-hover\')" onmouseover="jQuery(this).addClass(\'ui-state-hover\');"  class="ui-pg-div ui-inline-edit" style="float: left; cursor: pointer; display: block;margin-right: 1px;" title="Ver paciente"><span op="detail" class="ui-icon ui-icon-clipboard"></span></div>'+
								"</div>";
								}

					},
		{
			name : 'idos',
			index : 'idos',
			width : 1,
			hidden:true					
		},
		{
			name : 'idpaciente',
			index : 'idpaciente',
			width : 1,
			hidden:true					
		},
		{
			name : 'nombre',
			index : 'nombre',
			align: 'center',
			width : 250
		},
		{
			name : 'sexo',
			index : 'sexo',
			align: 'center',
			width : 80
		},
		 {
			name : 'dni',
			index : 'dni',
			align: 'center',
			width : 100
		},
		 {
			name : 'fechanac',
			index : 'fechanac',
			align: 'center',
			width : 100
		}, {
			name : 'localidad',
			index : 'localidad',
			align: 'center',
			width : 100
		}, {
			name : 'direccion',
			index : 'direccion',
			align: 'center',
			width : 1,
			hidden:true
		},{
			name : 'telefono',
			index : 'telefono',
			align: 'center',
			width : 1,
			hidden:true
		},
		{
			name : 'nroOs',
			index : 'nroOs',
			align: 'center',
			width : 1,
			hidden:true
		},
		{
			name : 'idos',
			index : 'idos',
			align: 'center',
			width : 1,
			hidden:true
		},
		{
			name : 'mail',
			index : 'mail',
			align: 'center',
			width : 1,
			hidden:true,
			editable:true
		},
		{
			name : 'notas',
			index : 'notas',
			align: 'center',
			width : 1,
			hidden:true,
			editable:true
		},
		{
			name : 'dummy',
			index : 'dummy',
			align: 'center',
			width : 1,
			hidden:true,
			editable:true
		}],
		ondblClickRow: function(id ){},
	  rowNum:25, 
	  rowList: [10,50,100],
	  //multiselect: true,
	  sortable: true,
	  pager: '#listClientTableGrid',
	  pgbuttons: true,
	  pginput:false,
	  rownumbers : true,
	  //loadonce:true,
	  hidegrid:false,
	  jsonReader : {
         root: "rows",
         page: "page",
         total: "total",
         records: "records",
         repeatitems: false,
         id: "id"
     },				
     beforeSelectRow: function(rowid, e) {
			 var iCol = jQuery.jgrid.getCellIndex(e.target);
			 if(iCol == 1 && e.target.attributes.op!=null){

			 	if(e.target.attributes.op.value=="edit"){		 		
					 var row = jQuery('#listClientTable').jqGrid('getRowData',rowid);										 
					 updatePatient(row);		
		             return false;
		            }
			 	if(e.target.attributes.op.value=="delete"){
			 		 var idPatient = jQuery('#listClientTable').jqGrid('getCell',rowid,"idpaciente");
			 		 jQuery.data(document.body,"PacienteData",{"idPatient":idPatient});
			 		 jQuery("#dialogDeleteClient" ).dialog("open");
			 		//delPatient(idCliente);
			 		return false;
		            }
				 if(e.target.attributes.op.value=="select"){		 		
					 var row = jQuery('#listClientTable').jqGrid('getRowData',rowid);										 
					 selectPatient(row);		
		             return false;
		            }
				 if(e.target.attributes.op.value=="detail"){		 		
					 var row = jQuery('#listClientTable').jqGrid('getRowData',rowid);									 
					 showPatientConsultModal(row);		
		             return false;
		            }
				 
			 	}
		
			 
		       //return true;    // allow select the row
            //  return false;   // not allow select the row
			 // prevent row selection if one click on the button
			 return (iCol != 1)? true: false;
         
     },
	  onSelectRow:function(){//alert("asdasd")
		  },
	  viewrecords: true, 
	  sortorder: "desc", 
	  caption:'Pacientes', 
	  editurl: "dummy.htm"
	  });

$("#gview_listClientTable").css("font-size","14px");

$(".colapsableBtn").click(function(event){
	event.preventDefault();
	var button = $(this);
	var divTab =button.attr("div");
	
	$("#"+divTab).slideToggle("normal", function(){
		var iconButton =button.find("i");
		if (iconButton.hasClass("icon-minus")){
			iconButton.removeClass("icon-minus").addClass("icon-plus");
		}
		else{
			iconButton.removeClass("icon-plus").addClass("icon-minus");
		}
	});
});	

jQuery("#dialogDeleteClient").dialog({
	autoOpen: false,
	height: 170,
	modal:true,
	buttons: {
		"Ok": function() {
			delPatient();
			jQuery( this ).dialog( "close" );
		},
		"Cancelar": function() {
			jQuery( this ).dialog( "close" );
		}
	},
	resizable: false,
	draggable: false,
	close: function() {
	}
});	 	

jQuery("#dialogErrorOperation").dialog({
	autoOpen: false,
	height: 170,
	modal:true,
	buttons: {
		"Ok": function() {
			jQuery( this ).dialog( "close" );
		}
	},
	resizable: false,
	draggable: false,
	close: function() {
	}
});	 	

jQuery("#dialogSuccessOperation").dialog({
	autoOpen: false,
	height: 170,
	modal:true,
	buttons: {
		"Ok": function() {
			jQuery( this ).dialog( "close" );
			 jQuery("#listClientTable").trigger('reloadGrid');
		}
	},
	resizable: false,
	draggable: false,
	close: function() {
	}
});	 

jQuery("#nombreSearch" ).autocomplete({
	source: function( request, response ) {
		$.ajax({
			url: '<c:url value="/searchPatientByName.json" />',
			dataType: "json",
			type: "POST",
			data: {
				featureClass: "P",
				style: "full",
				maxRows: 12,
				nameStartWith: request.term
			},
			success: function( data ) {
				response( jQuery.map( data, function (elementOfArray, indexInArray){							
					return  { value: capitaliseFirstLetter(elementOfArray.nombre)};											
				}));						
			}
		});
	},
	minLength: 1,
	select: function(event, ui){
	},
	open: function() {
	},
	close: function() {
	}
});


jQuery("input[alt=dateP]").datepicker({
	 showButtonPanel: true,
	 changeYear: true,
	 yearRange: "-80:+0",
	 dateFormat: "dd/mm/yy",
	 showOn: "button",
	 buttonImage: "css/images/calendar.gif",
	 buttonImageOnly: true,
	 dayNames: [ "Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado" ],
	 dayNamesMin: [ "Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa" ],
	 monthNames: [ "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" ], 
	 closeText: "Cerrar", 
	 currentText: "Hoy"
	 });
	 

jQuery("#editPatientForm").validate({
			focusInvalid:false,
		    rules: {
		    	nombreC:{required: true}
	        },
		    messages: {
		    	nombreC: {required: "campo obligatorio"}
		    },
	  	submitHandler: function() { 	  	
	  		var nombreEdit = jQuery("#nombreC").val();
	  		var direccionEdit = jQuery("#direccionC").val();
	  		var localidadEdit = jQuery("#localidadC").val();
	  		var emailEdit = jQuery("#emailC").val();
	  		var telNew = jQuery("#telC-1").val();
	  		var cuitEdit = jQuery("#cuitC").val();
	  		var comentEdit = jQuery("#comentC").val();
	  		var typeId = jQuery("#typeId").val();
	  		var numOS = jQuery("#numOS").val();
	  		var idPatient = jQuery("#idPatientEdit").val();
	  		var sexoSelected = jQuery("input[name=sexoEdit]:checked").val();
	  		var dateB = jQuery("#dateBirth").val();
	  		
	  		var editPaciente = {'idpaciente':idPatient,'nombre':nombreEdit,'direccion':direccionEdit, 'idos':typeId,'nroOs':numOS,
	  					    'localidad':localidadEdit,'mail':emailEdit,'telefono':telNew, //+"@@"+telNew2+"@@"+telNew3,
	  						'notas':comentEdit, "dni":cuitEdit,"sexo":sexoSelected, "fechanac":dateB};		  		 
	  		 
            jQuery.ajax({
                 url: '<c:url value="/editPatient.htm" />',
                 type: "POST",
                 dataType: "json",
                 contentType: "application/json",
                 data: JSON.stringify( editPaciente ), 
                 success: function(resp){                                       
            		 		jQuery("#dialogSuccessOperation").dialog("option","title","Editar paciente");
            		 		jQuery("#dialogSuccessOperation").dialog("open");
                			jQuery('#listClientTable').jqGrid('setGridState','visible');
                			jQuery("#listClientTable").trigger('reloadGrid');
                			cleanScreenEdit();

                 }
               });
	  		
	  	}      
	});
		

$("#addNumberBtn").click(function(){
	var idLastNum = jQuery('#phone-container input').last().attr("id");
	var counter = parseInt(idLastNum.split("-")[1]);
	var phoneForm = jQuery('#phone-form').clone(true);
	if (counter==1){
		jQuery('#helpB').hide();
	}else{
		$("#phone-form-"+(counter-1)).find('#helpB').hide();
		$("#phone-form-"+(counter-1)).find("#removeBtn").hide();
		if (counter<2){
			phoneForm.find('#helpB').show();
		}
	}
	phoneForm.find("label").html("<strong>"+phoneForm.find("label").text()+" "+(counter+1)+"</strong>");
	phoneForm.find("#removeBtn").show();
	phoneForm.find("input").attr("id","telC-"+(counter+1)).val("");
	phoneForm.attr("id","phone-form-"+counter);
	phoneForm.insertAfter('#phone-container div:last-child');
});

$("#removeBtn").click(function(){
	var idSelecNum = $(this).prev().attr("id");
	var counter = parseInt(idSelecNum.split("-")[1]);
	jQuery('#phone-form-'+(counter-1)).remove();		
	jQuery('#phone-container div:last-child').find('#helpB').show();
	$("#phone-form-"+(counter-2)).find("#removeBtn").show();
});

$("#closeSelected").click(function(){
	$("#selectedPatientDiv").hide();
});

jQuery("#seeConsultBtn").click(function(){
	// var idConsult = $(this).attr("idConsult");	
	window.location.href = "<%=request.getContextPath()%>/cargarConsulta.htm"; //?id=" + idConsult;
});

$("#checkfamMenor60").click(function(){
	if($(this).is(':checked')){
		$("#divfamMenor60").css("display","inline-block");
		$("#famMenor60").focus();
	}
	else{
		$("#divfamMenor60").hide();	
	}
});

$("#checkfamMayor60").click(function(){
	if($(this).is(':checked')){
		$("#divfamMayor60").css("display","inline-block");
		$("#famMayor60").focus();
	}
	else{
		$("#divfamMayor60").hide();	
	}
});

$("#checkfamSegundoGrado").click(function(){
	if($(this).is(':checked')){
		$("#divfamSegundoGrado").css("display","inline-block");
		$("#famSegundoGrado").focus();
	}
	else{
		$("#divfamSegundoGrado").hide();
	}
	
});

$("#anteSindrome4").click(function(){
	if($("#anteSindrome4").hasClass('active')){
		$("#anteSindrome4Div").hide();
	}
	else{
		$("#anteSindrome4Div").css("display","inline-block");
	}
	
});

});
//Other functions
function showPatientConsultModal(row){
    jQuery.ajax({
        url: '<c:url value="/consultInfoData.json" />',
        type: "GET",
        dataType: "json",
        contentType: "application/json",
        data: {'idPat':row.idpaciente,'dtPart':0}, 
        success: function(consultDataMap){             
        	if(consultDataMap.preconsulta !=null){
        		renderInTable("preconsultaData", consultDataMap.preconsulta);
        	}
        	if(consultDataMap.motivo !=null){
        		renderInTable("motivoConsultaData", consultDataMap.motivo);
        	}
        	if(consultDataMap.antecedentes !=null){
        		renderInTable("antecedentesData", consultDataMap.antecedentes);
        	}
        	if(consultDataMap.evaClinica !=null){
        		renderInTable("evaClinicaData", consultDataMap.evaClinica);
        	}
        	if(consultDataMap.exaProcto !=null){
        		renderInTable("exaProctoData", consultDataMap.exaProcto);
        	}
        	if(consultDataMap.estadificacion !=null){
        		renderInTable("estadificacionData", consultDataMap.estadificacion);
        	}
        	
            jQuery.ajax({
                url: '<c:url value="/consultInfoData.json" />',
                type: "GET",
                dataType: "json",
                contentType: "application/json",
                data: {'idPat':row.idpaciente,'dtPart':1}, 
                success: function(consultDataMap){
                	if(consultDataMap.anatPatologica !=null){
            			renderInTable("anatPatologicaData", consultDataMap.anatPatologica);
            		}
	            	if(consultDataMap.tratamiento !=null){
	            		renderInTable("tratamientoData", consultDataMap.tratamiento);
	            	}
	            	// los 3 sig dentro de Trat. Neoadyuante
	            	if(consultDataMap.descTrataNeo !=null){
	            		renderInTable("tratamientoNeoGlobalData", consultDataMap.descTrataNeo);
	            	}
	            	if(consultDataMap.respuestaTrataNeo !=null){
	            		renderInTable("tratamientoNeoGlobalData", consultDataMap.respuestaTrataNeo,true);
	            	}
	            	if(consultDataMap.conductaPostNeo !=null){
	            		renderInTable("tratamientoNeoGlobalData", consultDataMap.conductaPostNeo,true);
	            	}
	            	if(consultDataMap.anatomiaPatologicaPost !=null){
	            		renderInTable("anatomiaPatologicaPostData", consultDataMap.anatomiaPatologicaPost);
	            	}
	            	if(consultDataMap.tratamientoAdyu !=null){
	            		renderInTable("tratamientoAdyuData", consultDataMap.tratamientoAdyu);
	            	}
                }
            });   
            selectConsult(row);
        }
      });
    
    $("#consultInfoModal").modal('show');	
}


function selectConsult(row){
	$("#dialogSeeConsult").unbind();
	$("#dialogSeeConsult").click(function(){
		selectPatient(row, function(){ jQuery("#seeConsultBtn").click(); });
	});
}

function renderInTable(idTable, dataMap, avoidClean){
		var table =$("#"+idTable+" table");
		if(!avoidClean){
			table.empty();
		}
		var ignoreFirst = true;
		var mark = "";
		var	counterS = 0;
		for( var key in dataMap){
			if(ignoreFirst){
				ignoreFirst = false;
				continue;
			}
    		var tr = $("<tr></tr>");
    		if(key.indexOf("sz") === 0){
    			mark = key;
    			var tdlabel = $("<td colspan='2' style='text-align: center' ><b>"+dataMap[key]+"</b></td>");
    			tr.append(tdlabel);
    		}
    		else{
				var tdlabel = $("<td><b>"+key.replace("_"+mark,"")+"</b></td>");
				var tdValue = $("<td>" + dataMap[key] +"</td>");
				tr.append(tdlabel).append(tdValue);
    		}
			table.append(tr);
		}
}

function cleanScreenSearch(){
	 	 jQuery("#nombreSearch").val("");
		 jQuery("#cuitSearch").val("");		 
		 jQuery("button[name=sexo].active").removeClass("active");
		 jQuery("#localidadSearch").val("");
		 jQuery("#both").attr("checked","checked");
		 jQuery("#nombreSearch").focus();
		 //preconsulta
		 jQuery("#pesoPre").val("");
		 jQuery("#tallePre").val("");
		 jQuery("#superPre").val("");  		
	     jQuery("button[name=performanceRadio].active").removeClass("active");
		 //motivos
		 jQuery("button[name=motivoCbox].active").removeClass("active");
		 jQuery("#motivoOtro").val("");
		 jQuery("#dateStartMotivo").val("");
		 jQuery("#mesesMotivo").val("");
		 //Antecedentes
		 jQuery("button[name=anPersonal].active").removeClass("active");
		 jQuery("#neoplasiaText").val("");
		 jQuery("#checkfamMenorNin").prop('checked', false); 
		 jQuery("#checkfamMenor60").prop('checked', false); 
		 jQuery("#checkfamMayor60").prop('checked', false); 
		 jQuery("#checkfamSegundoGrado").prop('checked', false);
		 jQuery("#divfamMenor60").hide();
		 jQuery("#divfamMayor60").hide();
		 jQuery("#divfamSegundoGrado").hide();
		 jQuery("#famMenor60").val("");
		 jQuery("#famMayor60").val("");
		 jQuery("#famSegundoGrado").val("");
		 jQuery("button[name=anteSindrome].active").removeClass("active");
		 jQuery("#anteSindrome4Div").hide();
		 //examen proctologico
		 jQuery("button[name=movilRectal].active").removeClass("active");
		 jQuery("button[name=fijoRectal].active").removeClass("active");
		 jQuery("button[name=esfinterRectal].active").removeClass("active");
		 jQuery("button[name=eePresente].active").removeClass("active");
		 jQuery("button[name=eeTipo].active").removeClass("active");
		 jQuery("button[name=eeTipoN].active").removeClass("active");
		 jQuery("button[name=eeesfinter].active").removeClass("active");
		 jQuery("button[name=eeMedida].active").removeClass("active");
		 jQuery("#eeFecha").val("");
		 //estadificacion
		 jQuery("#centroRM").val("");
		 jQuery("#fechaRM").val("");
		 jQuery("#distanciaSupRM").val("");
		 jQuery("button[name=distanciaMarARadio].active").removeClass("active");
		 jQuery("button[name=numTRadio].active").removeClass("active");
		 jQuery("button[name=numTNRadio].active").removeClass("active");
		 jQuery("#alturaRM").val(""); 
		 jQuery("button[name=crmPresente].active").removeClass("active");
		 jQuery("button[name=emviPresente].active").removeClass("active");
		 jQuery("button[name=depoSati].active").removeClass("active");
		 jQuery("button[name=estaRInterior].active").removeClass("active");
		 jQuery("button[name=inguinales].active").removeClass("active");
		 jQuery("button[name=gaLate].active").removeClass("active");
		 jQuery("button[name=esfinterRM].active").removeClass("active");
		 jQuery("button[name=tcTorax].active").removeClass("active");
		 jQuery("button[name=tcAbdomen].active").removeClass("active");
		 jQuery("button[name=petTC].active").removeClass("active");
		 jQuery("button[name=mtsRadio].active").removeClass("active");
		 jQuery("button[name=ceaAument].active").removeClass("active");
		 jQuery("button[name=caAument].active").removeClass("active");
		 jQuery("button[name=tcTorax].active").removeClass("active");
		 jQuery("button[name=tcTorax].active").removeClass("active");
		 jQuery("button[name=tcTorax].active").removeClass("active");
		 jQuery("button[name=tcTorax].active").removeClass("active");
		 jQuery("#marcaTuFecha").val("");
		 jQuery("#suvEstati").val("");
		 jQuery("#tnmValT").val("");
		 jQuery("#tnmValN").val("");
	 	 jQuery("#tnmValM").val("");
		 jQuery("#ptnmValT").val("");
		 jQuery("#ptnmValN").val("");
		 jQuery("#ptnmValM").val("");
		 for(var i = 1; i < 10; i++) {
			 jQuery("#metastaDist"+i+".active").removeClass("active");
		 }
		 jQuery("#metastaDisOtra").val("");
		 jQuery("#revisionRMFecha").val("");
		 jQuery("#revisionRMDistan").val("");
		 jQuery("button[name=revisionRMMargen].active").removeClass("active");
		 jQuery("#revisionAlturaRM").val("");
		 //ana patologica
		 jQuery("button[name=gradoDiferRadio].active").removeClass("active");
		 //tratamiento
		 jQuery("button[name=udaOndoRadio].active").removeClass("active");
		 jQuery("#udaOndoOtro").val("");
}


function selectPatient(row, callback){
	jQuery("#selectedPatientName").html(" "+(capitaliseFirstLetter(row.nombre)));
	jQuery("#idPacienteSelected").val(row.idpaciente);
	   jQuery.ajax({
	          url: '<c:url value="/selectPatient.json" />',
	          type: "GET",
	          dataType: "json",
	          contentType: "application/json",
	          data: {idPatient:row.idpaciente,paName:row.nombre,op:true}, 
	          success: function(resp){     
         	 if(resp!="-2"){ // se encontro paciente
         		jQuery("#selectedPatientDiv").show();
         		if (resp!="-1"){  //Aun no existe consulta
         			jQuery("#seeConsultBtn").show().attr("idConsult",resp);
         		}
         		else{
         			jQuery("#seeConsultBtn").hide();
         		}
         		if(callback!=null){
         			callback.call();
         		}
         	 }
         	 else{
         		 jQuery("#dialogErrorOperation").dialog("open");
         		 }
         	 }
	        });	 
	}
	
function updatePatient(row){
	jQuery('#listClientTable').jqGrid('setGridState','hidden');	
	
	jQuery("#nombreC").val(capitaliseFirstLetter(row.nombre));
	jQuery("#direccionC").val(row.direccion);
	jQuery("#localidadC").val(row.localidad);
	jQuery("#emailC").val(row.mail);
	jQuery("#telC-1").val(row.telefono);
	
	if(row.sexo=="Masculino"){
		jQuery("#masSexEdit").attr("checked","checked");
	}
	else{
		jQuery("#femSexEdit").attr("checked","checked");
	}
// 	if(row.telefono2.length>1){
// 		jQuery("#addNumberBtn").trigger("click");
// 		jQuery("#telC-2").val(row.telefono2);
// 	}
// 	if(row.telefono3.length>1){
// 		jQuery("#addNumberBtn").trigger("click");
// 		jQuery("#telC-3").val(row.telefono3);
// 	}
	
	jQuery("#cuitC").val(row.dni);
	jQuery("#comentC").val(row.notas);
	jQuery("#typeId").val(row.idos);
	jQuery("#numOS").val(row.nroOs);    
	jQuery("#dateBirth").val(row.fechanac);
	jQuery("#clientState").val(row.estadoCliId);
	jQuery("#clientNum").val(row.numerocli);

	jQuery("#idPatientEdit").val(row.idpaciente);
	jQuery(".editClientDiv").show();
	jQuery(document).scrollTo( $('.editClientDiv'), 700 );
	}
	
function delPatient(){  
	      var clientObj = jQuery.data(document.body,"PacienteData");
		   jQuery.ajax({
		          url: '<c:url value="/delPatient.json" />',
		          type: "GET",
		          dataType: "json",
		          contentType: "application/json",
		          data: {idPaciente:clientObj.idPatient}, 
		          success: function(resp){     
	            	 if(resp){
	               		jQuery("#dialogSuccessOperation").dialog( "option", "title", "Eliminar paciente" );
	            		 jQuery("#dialogSuccessOperation").dialog("open");
	            		 jQuery("#listClientTable").trigger('reloadGrid');
		          	  }
	            	 else{
	            		 jQuery("#dialogErrorOperation").dialog("open");
	            		 }
	            	 }
		        });	 

}

function cleanScreenEdit(){
	 jQuery(".editClientDiv").hide();			 
     jQuery("#nombreC").val("");
	 jQuery("#direccionC").val("");
	 jQuery("#localidadC").val(0);
	 jQuery("#emailC").val("");
	 jQuery("#telC-1").val("");
	 jQuery("#phone-form-1").remove();
	 jQuery("#phone-form-2").remove();
	 jQuery("#cuitC").val("");
	 jQuery("#comentC").val("");
	 jQuery("#nombreC").focus();
	 jQuery("#dateBirth").val("");
	 jQuery("#listClientTable").trigger('reloadGrid');

}

function cancelEdit(){
	jQuery("div .ui-inline-cancel").trigger("click");
	jQuery(".editClientDiv").hide();
	jQuery("#telC-1").val("");
  	jQuery("#phone-form-1").remove();
  	jQuery("#phone-form-2").remove();
	jQuery('#listClientTable').jqGrid('setGridState','visible');	
	cleanScreenEdit();
};

function dbFormatDate(unDate){
	if(unDate == ""){
		return "";
	}
	var params = unDate.split("/");
	return params[2]+"-"+params[1]+"-"+params[0];
};

function capitaliseFirstLetter(string)
{
    return string.charAt(0).toUpperCase() + string.slice(1);
}

var toggleCollapseImg = function(id){
    if(id != null && id != ""){
        var img = $("#" + id);
        if(img.size() > 0){
            if(img.hasClass("icon-minus-sign")){
                img.removeClass("icon-minus-sign");
                img.addClass("icon-plus-sign");
            } else {
                img.addClass("icon-minus-sign");
                img.removeClass("icon-plus-sign");
            }
        }
    }
    return;
} 
</script> 

  </body>
</html>
