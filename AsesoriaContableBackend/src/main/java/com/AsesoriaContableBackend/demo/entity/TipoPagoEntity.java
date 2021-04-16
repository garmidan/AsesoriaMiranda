package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "tipopago", schema = "asesoriamiranda")
public class TipoPagoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipopago", precision = 11)
	private long idtipopago;
	
	@Column(name = "tipopago")
	private String tipopago;
	
	public TipoPagoEntity() {
	}

	public TipoPagoEntity(long idtipopago, String tipopago) {
		this.idtipopago = idtipopago;
		this.tipopago = tipopago;
	}

	public long getIdtipopago() {
		return idtipopago;
	}

	public void setIdtipopago(long idtipopago) {
		this.idtipopago = idtipopago;
	}

	public String getTipopago() {
		return tipopago;
	}

	public void setTipopago(String tipopago) {
		this.tipopago = tipopago;
	}

	@Override
	public String toString() {
		return "TipoPagoEntity [idtipopago=" + idtipopago + ", tipopago=" + tipopago + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (idtipopago ^ (idtipopago >>> 32));
		result = prime * result + ((tipopago == null) ? 0 : tipopago.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TipoPagoEntity other = (TipoPagoEntity) obj;
		if (idtipopago != other.idtipopago)
			return false;
		if (tipopago == null) {
			if (other.tipopago != null)
				return false;
		} else if (!tipopago.equals(other.tipopago))
			return false;
		return true;
	}
	
	
	
}
