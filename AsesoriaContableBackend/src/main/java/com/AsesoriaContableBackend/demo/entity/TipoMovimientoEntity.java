package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipomovimiento", schema = "asesoriamiranda")
public class TipoMovimientoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipomovimiento",precision = 11)
	private Long idtipomovimiento;
	
	@Column(name = "tipo", precision = 100)
	private String tipo;
	
	@Column(name = "valor", precision = 50)
	private String valor;

	public TipoMovimientoEntity() {
	}
	
	public TipoMovimientoEntity(Long idtipomovimiento, String tipo, String valor) {
		this.idtipomovimiento = idtipomovimiento;
		this.tipo = tipo;
		this.valor = valor;
	}

	public Long getIdtipomovimiento() {
		return idtipomovimiento;
	}

	public void setIdtipomovimiento(Long idtipomovimiento) {
		this.idtipomovimiento = idtipomovimiento;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	@Override
	public String toString() {
		return "TipoMovimientoEntity [idtipomovimiento=" + idtipomovimiento + ", tipo=" + tipo + ", valor=" + valor
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idtipomovimiento == null) ? 0 : idtipomovimiento.hashCode());
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
		result = prime * result + ((valor == null) ? 0 : valor.hashCode());
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
		TipoMovimientoEntity other = (TipoMovimientoEntity) obj;
		if (idtipomovimiento == null) {
			if (other.idtipomovimiento != null)
				return false;
		} else if (!idtipomovimiento.equals(other.idtipomovimiento))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		if (valor == null) {
			if (other.valor != null)
				return false;
		} else if (!valor.equals(other.valor))
			return false;
		return true;
	}

}
