package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "factura", schema = "asesoriamiranda")
public class FacturaEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idfactura", precision = 11)
	private Long idfactura;
	
	@Column(name = "codigo")
	private String codigo;

	public FacturaEntity() {
	}

	public FacturaEntity(Long idfactura, String codigo) {
		this.idfactura = idfactura;
		this.codigo = codigo;
	}

	public Long getIdfactura() {
		return idfactura;
	}

	public void setIdfactura(Long idfactura) {
		this.idfactura = idfactura;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "FacturaEntity [idfactura=" + idfactura + ", codigo=" + codigo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		result = prime * result + ((idfactura == null) ? 0 : idfactura.hashCode());
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
		FacturaEntity other = (FacturaEntity) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		if (idfactura == null) {
			if (other.idfactura != null)
				return false;
		} else if (!idfactura.equals(other.idfactura))
			return false;
		return true;
	}
	
	
}
