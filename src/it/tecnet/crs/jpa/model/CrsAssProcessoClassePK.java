package it.tecnet.crs.jpa.model;

import java.io.Serializable;

/**
 * ID class for entity: CrsAssProcessoClasse
 *
 */
public class CrsAssProcessoClassePK implements Serializable {

	private static final long serialVersionUID = 1L;
	private long idProcesso;
	private long idClasse;

	public CrsAssProcessoClassePK() {
	}

	public long getIdProcesso() {
		return idProcesso;
	}

	public void setIdProcesso(long idProcesso) {
		this.idProcesso = idProcesso;
	}

	public long getIdClasse() {
		return idClasse;
	}

	public void setIdClasse(long idClasse) {
		this.idClasse = idClasse;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (idProcesso ^ (idProcesso >>> 32));
		result = prime * result + (int) (idClasse ^ (idClasse >>> 32));
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof CrsAssProcessoClassePK)) {
			return false;
		}
		CrsAssProcessoClassePK other = (CrsAssProcessoClassePK) obj;
		if (idProcesso != other.idProcesso) {
			return false;
		}
		if (idClasse != other.idClasse) {
			return false;
		}
		return true;
	}
}