package it.tecnet.crs.report.jpa.dao;

import it.tecnet.crs.ATPO.auditors.jpa.model.AtpoPratiche;
import it.tecnet.crs.report.web.dto.ReportAccessoPDFDto;

import java.util.List;

public interface ReportPDFDao {
	
	public List<Object[]> getReportErmPDF(long idSSessione);
	public List<AtpoPratiche> getReportAllegatiPDF(String sede, long idSessione);
	
	
	public Object[] getReportAccessoPDF(long idSSessione);
	public Object[] getAllegatoReportAccessoPDF(long idSSessione);
	

	public List<Object[]> getRiepilogoFasi(long idSSessione);

	public List<Object[]> getMNonConfByIdFase(long idFase,long idSSessione);

	public List<Object[]> getVarCompByIdMNonConf(long sessione, Long idFase, Long idMNonConf);

	public List<Object[]> getVarCompByIdMNonConf(long idMNonConf);

	public List<Object[]> getRiepilogoRischi(long idSSessione);

	public List<Object[]> getRisEsprByIdMNonConf(long idMRischio, long idSSessione);

	public List<Object[]> getRiepilogoFascicolo(long idSSessione);

	public List<Object[]> getRiepilogoDocManc(long idSSessione);

	public List<Object[]> getEsitoByTipoDifesa(long idSSessione);

	public List<Object[]> getEsitoByTipoDifesaWithDissenso(long idSSessione);
	
	public List<Object[]> getEsitoByTipoDifesaWithDissensoByCampagna(long idSSessione);
	
	public List<Object[]> getRiepilogoGiudizi(long idSSessione);

	public List<Object[]> getRiepilogoGiudiziByCampagna(long idCampagna);
	
	public List<Object[]> getRisultatiByTempo(long idSSessione);

	public List<Object[]> getRiepilogoIstanze(long idSSessione);

	public List<String> getListaAuditors(long idSSessione);

	public List<Object[]> getGiudiziDefinitiviSisco(long idSSessione,
			String tipoDifesa);
	
	public List<Object[]> getGiudiziDefinitiviSiscoByCampagna(long idCampagna, String tipoDifesa);
	
	public List<Object[]> getGiudiziDefinitiviSiscoByCampagnaAndSede(long idCampagna, String tipoDifesa, String codSede);

	public int getGiudiziDefinitiviSiscoByCampagnaTotale(long idCampagna, String tipoDifesa, String codSede);
	
	public List<Object[]> getGiudiziDefinitiviEtichette();
	
	public List<Object[]> getTipoDifesaIncompleta(long idSSessione,
			String tipoDifesa);

	public List<Object[]> getTipoDifesaIncompletaWithDissenso(long idSSessione,
			String tipoDifesa);

	public List<Object[]>  getGiudiziDefinitiviSiscoByCampagnaAndSedeWithOutFavorevoli(long idCampagna, String tipoDifesa, String codSede);
	public String[] getElencoRischi();
	
	// -------------------------------------------
	// NUOVI REPORT ANGELO
	public Object[] getReportAccessoPDFAnnuale(long idSSessione);
	public List<Object[]> getRiepilogoIstanzeAnnuale(long idSSessione);
	public List<Object[]> getRiepilogoFasiAnnuale(long idSSessione);
	public List<Object[]> getRiepilogoRischiAnnuale(long idSSessione);
	public List<Object[]> getRisEsprByIdMNonConfAnnuale(Long idMRischio, long idSSessione);
	public List<Object[]> getRiepilogoFascicoloAnnuale(long idSSessione);
	public List<Object[]> getRiepilogoDocMancAnnuale(long idSSessione);
	public List<Object[]> getEsitoByTipoDifesaWithDissensoAnnuale(long idSSessione);
	public List<Object[]> getRiepilogoGiudiziAnnuale(long idSSessione);
	public List<Object[]> getTipoDifesaIncompletaAnnuale(long idSSessione, String tipoDifesa);
	public List<Object[]> getRisultatiByTempoAnnuale(long idSSessione);
	public List<Object[]> getMNonConfByIdFaseAnnuale(Long idFase, long idSSessione);
	public List<Object[]> getVarCompByIdMNonConfAnnuale(Long idMNonConf);
	public List<Object[]> getEsitoByTipoDifesaAnnuale(long idSSessione);
	public List<String> getListaAuditorsAnnuale(long idSSessione);
	public Object[] getAllegatoReportAccessoPDFAnnuale(long idSSessione);
	public List<AtpoPratiche> getReportAllegatiPDFAnnuale(String sede, long idSessione);
	public List<Object[]> getGiudiziDefinitiviEtichetteAnnuale();
}
