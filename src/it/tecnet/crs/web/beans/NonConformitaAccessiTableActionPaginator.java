package it.tecnet.crs.web.beans;

import it.tecnet.crs.jpa.model.AuMNonConf;
import it.tecnet.crs.web.dto.NonConformitaAccessiDto;

import java.util.ArrayList;
import java.util.List;

public class NonConformitaAccessiTableActionPaginator {
	
	
	private NonConformitaAccessiDto nc= new NonConformitaAccessiDto();
	//contiene idNonConfM e idNonConfS
	
	private String filtroFaseAcc="";
	private List<String> descrizioneFaseAcc= new ArrayList<String>();
	
	
	private String id;

	public String sEcho;
    
  	public String sSearch;

  	public int iDisplayLength;

  	public int iDisplayStart;

  	public int iColumns;

  	public int iSortingCols;
    
  	public String sColumns;
    
  	public int  iTotalRecords;
    
  	public int  iTotalDisplayRecords;

  	public List<Object> aaData = new ArrayList<Object>();
  
  	public int iSortCol_0=0;

  	public String sSortDir_0;

  	public String getsEcho() {
		return sEcho;
	}


	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}


	public String getsSearch() {
		return sSearch;
	}


	public void setsSearch(String sSearch) {
		this.sSearch = sSearch;
	}


	public int getiDisplayLength() {
		return iDisplayLength;
	}


	public void setiDisplayLength(int iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}


	public int getiDisplayStart() {
		return iDisplayStart;
	}


	public void setiDisplayStart(int iDisplayStart) {
		this.iDisplayStart = iDisplayStart;
	}


	public int getiColumns() {
		return iColumns;
	}


	public void setiColumns(int iColumns) {
		this.iColumns = iColumns;
	}


	public int getiSortingCols() {
		return iSortingCols;
	}


	public void setiSortingCols(int iSortingCols) {
		this.iSortingCols = iSortingCols;
	}


	public String getsColumns() {
		return sColumns;
	}


	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}	

	public int getiTotalRecords() {
		return iTotalRecords;
	}


	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}


	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}


	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}


	public List<Object> getAaData() {
		return aaData;
	}


	public void setAaData(List<Object> aaData) {
		this.aaData = aaData;
	}


	public int getiSortCol_0() {
		return iSortCol_0;
	}


	public void setiSortCol_0(int iSortCol_0) {
		this.iSortCol_0 = iSortCol_0;
	}


	public String getsSortDir_0() {
		return sSortDir_0;
	}


	public void setsSortDir_0(String sSortDir_0) {
		this.sSortDir_0 = sSortDir_0;
	}


	public void setNc(NonConformitaAccessiDto nc) {
		this.nc = nc;
	}


	public NonConformitaAccessiDto getNc() {
		return nc;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getId() {
		return id;
	}


	


	public void setDescrizioneFaseAcc(List<String> descrizioneFaseAcc) {
		this.descrizioneFaseAcc = descrizioneFaseAcc;
	}


	public List<String> getDescrizioneFaseAcc() {
		return descrizioneFaseAcc;
	}


	public void setFiltroFaseAcc(String filtroFaseAcc) {
		this.filtroFaseAcc = filtroFaseAcc;
	}


	public String getFiltroFaseAcc() {
		return filtroFaseAcc;
	}


	


	
  	
	
}
