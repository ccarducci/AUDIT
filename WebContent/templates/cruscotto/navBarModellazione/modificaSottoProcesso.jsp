<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!-- BEGIN CONTENT -->
		<!-- BEGIN PAGE HEAD -->
		<div class="page-head">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
                   <!-- <h1>ACL Engine <small>gestione autorizzazioni applicative</small></h1> -->
				<h1>Modifica Fase <!-- <small>- Modifica Processo</small> --></h1>
			</div>
               <!-- BEGIN PAGE BREADCRUMB -->
               <ul class="page-breadcrumb breadcrumb">
                   <li>
                       Modellazione
                       <i class="fa fa-circle"></i>
                   </li>
                   <li>
                       <a onclick="clickMenu('modellazione-fase');loadDiv('/CruscottoAuditWeb/getSottoProcessiList', 'appView', null, 'initSottoProcesso' );">Fase</a>
				   <i class="fa fa-circle"></i>
                   </li>
                   <li>
                       Modifica Fase
                   </li>
               </ul>
               <!-- END PAGE BREADCRUMB -->
			<!-- END PAGE TITLE -->
		</div>
		<!-- END PAGE HEAD -->
		
		<!-- BEGIN PAGE CONTENT INNER -->
		<div class="row margin-top-10">
			<div class="col-md-12">

                   <!-- BEGIN SAMPLE TABLE PORTLET-->
                   <div class="portlet">
                       <div class="portlet-body">
                           <div class="row">
                               <div class="col-md-12 ">
                                   <!-- BEGIN Portlet PORTLET-->
                                   <div class="portlet light accessori">
                                       <div class="portlet-title tabbable-line">
                                           <ul class="nav nav-tabs">
                                               <li class="active"> <!-- TAB 1 -->
                                                   <a href="#portlet_tab1" data-toggle="tab">
                                                   Generale </a>
                                               </li>
                                               <li> <!-- TAB 2 -->
                                                   <a href="#portlet_tab2" data-toggle="tab" onclick="initAttivitaComponente();">
                                                   Attivit� Componente </a>
                                               </li>
                                                 
                                               <li> <!-- TAB 3 --> 
                                                   <a href="#portlet_tab3" data-toggle="tab" onclick="ricaricaSottoProcessoNormativa();">
                                                   Normativa </a>
                                               </li>
                                               
                                               <li>  
                                                   <a href="#portlet_tab5" data-toggle="tab">
                                                   Regole e modelli </a>
                                               </li>
                                               <li>  
                                                   <a href="#dominiSottoProcesso" data-toggle="tab" onclick="loadDiv('/CruscottoAuditAtpoWebWeb/getDominiSottoProcesso', 'dominiSottoProcesso', null, 'initDominiSottoProcessoTable' );">
                                                   Domini </a>
                                               </li>
                                               <li>  
                                                   <a href="#portlet_tab7" data-toggle="tab">
                                                   Tassonomie </a>
                                               </li>
                                                <li>  
                                                   <a href="#compTecniciSottoProcesso" data-toggle="tab" onclick="loadDiv('/CruscottoAuditAtpoWebWeb/getCompTecniciSottoProcesso', 'compTecniciSottoProcesso', null, 'initCompTecSottoProcessoTable' );">
                                                   Componenti Tecnici </a>
                                               </li>
                                               
                                           </ul>
                                       </div>
                                       <div class="portlet-body">
                                           <div class="tab-content">
                       <!------------------------------------------- TAB 1 (Generale) ------------------------------------------------------->
                                               
                                               <s:hidden id="idSottoProcesso" value="%{sottoProcesso.idSottoProcesso}"/>
                                               
                                               <div class="tab-pane active" id="portlet_tab1">
                                                   <form role="form" id="sottoProcessoForm">
                                                       <div class="form-body" style="margin: 30px 0 40px;">
                                                           <div class="row" style="margin-bottom: 60px;">
                                                               <div class="col-md-3 col-xs-12">
                                                                   <div class="form-group">
                                                                   		<s:label>Processo <i class="fa fa-asterisk obbligatorio"></i></s:label>
									                                    <s:select class="form-control input-medium select2me" 
									                               			data-placeholder="Processo" 
									                               			id="comboProcesso" 
										                              		list="processoList"
										                              		listKey="idProcesso"
																			listValue="descrizione"
																			value="%{sottoProcesso.processo.idProcesso}"	/>
									                                </div>
                                                               </div>
                                                               <div class="col-md-3 col-xs-12">
									                                <div class="form-group form-md-line-input">
									                                	<s:set var="ordinamento" value="%{sottoProcesso.ordinamento}" />
									                                    <input type="text" class="form-control" id="ordinamento" value="<s:property value="ordinamento" />" style="height: 38px;">
									                                    <label for="form_control_2">Ordinamento <i class="fa fa-asterisk obbligatorio"></i></label>
									                                </div>
									                            </div>
                                                               <div class="col-md-3 col-xs-12">
                                                                   <div class="form-group">
                                                                       <s:set var="dataInizio" value="%{sottoProcesso.dataInizioAsString}" />
                                                                       <div class="form-group">
                                                                             <s:label>Data inizio<i class="fa fa-asterisk obbligatorio"></i> </s:label>
                                                                         
                                                                            <input id="dataInizio"  value="<s:property value="dataInizio" />" class="form-control form-control-inline input-medium date-picker" size="16" type="text" >
                                                                       </div>
                                                                       <!-- /input-group -->
                                                                    
                                                                   </div>
                                                               </div>
                                                           </div>
                                                           <div class="row">
                                                               <div class="col-md-6 col-xs-12" style="margin-bottom: 15px;">
                                                                   <div class="form-group form-md-line-input">
                                                                      	<s:label for="form_control_2">Descrizione <i class="fa fa-asterisk obbligatorio"></i></s:label>  
                                                                       <s:textfield type="text" class="form-control" id="descrizione" 
                                                                       			value="%{sottoProcesso.descrizione}" style="height: 38px;"/>
                                                                      
                                                                   </div>
                                                               </div>

                                                               <div class="col-md-3 col-xs-12">
                                                                   <div class="form-group">
                                                                       <s:set var="dataFine" value="%{sottoProcesso.dataFineAsString}" />
                                                                     <div class="form-group">
                                                                            <!-- /input-group -->
                                                                       <s:label>Data fine</s:label>
                                                                         
                                                                          <input id="dataFine" value="<s:property value="dataFine" />" class="form-control form-control-inline input-medium date-picker" size="16" type="text" >
                                                                       </div>
                                                                   
                                                                   </div>
                                                               </div>
                                                           </div>
                                                           
                                                           <div class="row">
									                            <div class="col-md-6" style="margin-bottom: 15px;">
									                               <div class="form-group form-md-line-input">
									                                   <s:label>Input</s:label>
									                                    <s:textfield type="text" class="form-control" id="input" value="%{sottoProcesso.input}" style="height: 38px;"/>
									                                 
									                                </div>
									                            </div>
									                            
									                            <div class="col-md-6">
									                             <div class="form-group form-md-line-input">
									                                  <s:label>Output</s:label>
									                                    <s:textfield type="text" class="form-control" id="output" value="%{sottoProcesso.output}" style="height: 38px;"/>
									                                  
									                                </div>
									                            </div>
									                        </div>
                        
                                                       </div>
                                                       <div class="form-actions noborder">
                                                           <button type="button" class="btn blue" onclick="salvaSottoProcesso('U');">Salva</button>
                                                           <!-- button type="button" class="btn default" onclick="resetSottoProcessoForm();">Annulla</button-->
                                                       </div>
                                                   </form>
                                               </div>
                                               
                          <!---------------------------------------- TAB 2 (Attivita) ----------------------------------------------------------->
                          
                                               <div class="tab-pane" id="portlet_tab2">
                                                   <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                       <div class="portlet">
                                                           <!--<div class="row">
                                                               <div class="col-lg-4 col-lg-offset-4">
                                                                   <div class="actions add-action">
                                                                       <a data-toggle="modal" href="javascript:void(0);" class="btn btn-default btn-sm">
                                                                       <i class="fa fa-plus"></i> Nuovo </a>
                                                                   </div>
                                                                   <div class="actions add-action">
                                                                       <a data-toggle="modal" href="javascript:void(0);" class="btn btn-default btn-sm">
                                                                       <i class="fa fa-binoculars"></i> Visualizza </a>
                                                                   </div>
                                                                   <div class="actions add-action">
                                                                       <a href="javascript:;" class="btn btn-default btn-sm">
                                                                       <i class="fa fa-refresh"></i> Aggiorna </a>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                           --><div class="portlet-body">
                                                               <table class="table table-striped table-bordered table-advance table-hover" id="attivitacomponente_table">
                                                                   <thead>
									                                 <tr>
								                                     <th>
								                        				</th>
								                        				<th>
								                                           Ordinamento
								                                       </th>
								                                       <th>
								                                           Descrizione
								                                       </th>
								                                       <th>
								                                           Area
								                                       </th>
								                                       <th>
								                                           Processo
								                                       </th>
								                                       <th>
								                                           Fase
								                                       </th>
								                                       <th>
								                                           Data Inizio
								                                       </th>
								                                       <th>
								                                           Data Fine
								                                       </th>
								                                       <th>
								                                           Vincolo
								                                       </th>
								                                   </tr>
								                                   </thead>
                                                                   <tbody>
                                                                       
                                                                   </tbody>
                                                               </table>
                                                           </div>
                                                       </div>
                                                       <!-- END SAMPLE TABLE PORTLET-->
                                               </div>

                         <!------------------------------------------- TAB 3 (Normativa) ------------------------------------------------->
                         
                                               <div class="tab-pane" id="portlet_tab3">
                                                   <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                   <div class="portlet">
                                                       <div class="row" id="sottoprocessoNormativaButton">
                                                           <div class="col-lg-4">
                                                               <div class="form-group">
								                                    <label for="form_control_2" style="top: 0; font-size: 13px; color: #888888; opacity: 1; width: 100%; position: absolute;">Tipo Normativa <i class="fa fa-asterisk obbligatorio"></i></label><br>
								                                   <s:select class="form-control input-medium select2me" 
								                              					data-placeholder="TipoNormativaEnum" 
								                                                id="comboTipoNormativa" 
								                              					list="@it.tecnet.crs.util.TipoNormativaEnum@values()"
								                              					listKey="getCodice()"
																				listValue="getDescrizione()" 
								  												onchange="ricaricaSottoProcessoNormativa()"/>
								                                </div>
                                                           </div>
                                                           <div class="col-lg-4" style="padding-top: 18px;">
                                                               <div class="actions add-action">
                                                                   <a data-toggle="modal" onclick="showAsideSottoProcessoNormativa();return false;" class="btn btn-default btn-sm">
                                                                   <i class="fa fa-plus"></i> Aggiungi </a>
                                                               </div>
                                                               <div class="actions add-action">
                                                                   <a data-toggle="modal" onclick="rimuoviAssociazioneSottoProcessoNormativa();" class="btn btn-default btn-sm del">
                                                                   <i class="fa fa-trash"></i> Rimuovi </a>
                                                               </div>
                                                               <div class="actions add-action">
                                                                   <a data-toggle="modal" onclick="getCheckBoxID('visualizzaNormativaSottoProcesso');" class="btn btn-default btn-sm del">
                                                                   <i class="fa fa-search"></i> Visualizza </a>
                                                               </div>
                                                               <div class="actions add-action">
                                                                   <a href="javascript:;" class="btn btn-default btn-sm">
                                                                   <i class="fa fa-refresh"></i> Aggiorna </a>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       
                                                       <div class="portlet-body" id="sottoProcessoNormativaDiv">
                                                           
                                                       </div>
                                                   </div>
                                                   <!-- END SAMPLE TABLE PORTLET-->
                                               </div>

                        <!------------------------------------------------ TAB 4 (Documenti) ------------------------------------>
                        
                                             

                        <!------------------------------------------------ TAB 5 (Regole e modelli) ------------------------------>
                        
                                               <div class="tab-pane" id="portlet_tab5">
                                                   <!-- BEGIN SAMPLE TABLE PORTLET-->
                                                   <div class="portlet">
                                                       <div class="row">
                                                           <div class="col-lg-4">
                                                               <div class="form-group">
                                                                   <label for="form_control_2" style="top: 0; font-size: 13px; color: #888888; opacity: 1; width: 100%; position: absolute;">Tipo <i class="fa fa-asterisk obbligatorio"></i></label><br>
                                                                   <select class="form-control input-medium select2me" data-placeholder="Tipo">
                                                                       <option value=""></option>
                                                                       <option value="area1">Tipo 1</option>
                                                                       <option value="area2">Tipo 2</option>
                                                                       <option value="area3">Tipo 3</option>
                                                                   </select>
                                                               </div>
                                                           </div>
                                                           <div class="col-lg-4" style="padding-top: 18px;">
                                                               <div class="actions add-action">
                                                                   <a data-toggle="modal" href="javascript:void(0);" class="btn btn-default btn-sm">
                                                                   <i class="fa fa-plus"></i> Aggiungi </a>
                                                               </div>
                                                               <div class="actions add-action">
                                                                   <a data-toggle="modal" href="#" class="btn btn-default btn-sm del">
                                                                   <i class="fa fa-trash"></i> Rimuovi </a>
                                                               </div>
                                                               <div class="actions add-action">
                                                                   <a href="javascript:;" class="btn btn-default btn-sm">
                                                                   <i class="fa fa-refresh"></i> Aggiorna </a>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="portlet-body">
                                                           <table class="table table-striped table-bordered table-advance table-hover" id="sample_3">
                                                               <thead>
                                                                   <tr>
                                                                       <th>
                                                                           Descrizione
                                                                       </th>
                                                                       <th>
                                                                           Codice
                                                                       </th>
                                                                       <th>
                                                                           Data inizio
                                                                       </th>
                                                                       <th>
                                                                           Data fine
                                                                       </th>
                                                                   </tr>
                                                               </thead>
                                                               <tbody>
                                                                   <tr>
                                                                       <td>
                                                                           Descrizione 1
                                                                       </td>
                                                                       <td>
                                                                           Codice 1
                                                                       </td>
                                                                       <td style="text-align: right;">
                                                                           01/01/2000
                                                                       </td>
                                                                       <td style="text-align: right;">
                                                                           01/01/2001
                                                                       </td>
                                                                   </tr>
                                                               </tbody>
                                                           </table>
                                                       </div>
                                                   </div>
                                                   <!-- END SAMPLE TABLE PORTLET-->
                                               </div>

                          <!----------------------------------------------- TAB 6 (Domini) ----------------------------------------->
                          
                                               <div class="tab-pane" id="dominiSottoProcesso">
                                                   
                                               </div>

                          <!----------------------------------------------- TAB 7 (Dizionari) -------------------------------------->
                          
                                               <div class="tab-pane" id="portlet_tab7">
                                                   TAB 7 - Dizionari
                                               </div>
                                               
                          <!----------------------------------------------- TAB 8 (Componenti Tecnici) ---------------------------->
                          
                                               <div class="tab-pane" id="compTecniciSottoProcesso">
                                                   
                                               </div>
                                               
                                           </div>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <!-- END SAMPLE TABLE PORTLET-->

			</div>
		</div>
		
		<!-- MODAL -->
            <div class="modalSottoProcessoNormativa">
            	<s:include value="sideBar/associaSottoProcessoNormativa_aside.jsp" />
            </div>
		
           <!-- MODALE PER GESTIONE MESSAGGI DA DARE ALL'UENTE IN CASO DI ERRORI/WARNING -->
         <div class="modal fade" tabindex="-1" id="modificaSottoProcessoModal" aria-hidden="true">
		  <div class="modal-dialog"  style="width: 550px !important; height: 200px !important;">
		    <div class="modal-content">
		      <div class="modal-header">
		        <div class="caption font-green">
		                  <span class="caption-subject bold uppercase">GESTIONE FASE</span>
		              </div>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body" id="modificaSottoProcessoDiv">
		        <p></p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" data-dismiss="modal" class="btn default">Chiudi</button>
		      </div>
		    </div>
		  </div>
		</div>
           
		<!-- END PAGE CONTENT INNER -->

<!-- END CONTENT -->
<script>
	jQuery(document).ready(function() {
		ComponentsPickers.init();
    });
</script>
