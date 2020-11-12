package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "departamento", schema = "asesoriamiranda")
public class DepartamentoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "iddepartamento", precision = 11)
	private Long iddepartamento;
	
	@Column(name = "departamento")
	private String 	departamento;
	
	@Column(name = "codigopostal")
	private String codigopostal;

	public DepartamentoEntity() {
	}

	public DepartamentoEntity(Long iddepartamento, String departamento, String codigopostal) {
		this.iddepartamento = iddepartamento;
		this.departamento = departamento;
		this.codigopostal = codigopostal;
	}

	public Long getIddepartamento() {
		return iddepartamento;
	}

	public void setIddepartamento(Long iddepartamento) {
		this.iddepartamento = iddepartamento;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getCodigopostal() {
		return codigopostal;
	}

	public void setCodigopostal(String codigopostal) {
		this.codigopostal = codigopostal;
	}

	@Override
	public String toString() {
		return "DepartamentoEntity [iddepartamento=" + iddepartamento + ", departamento=" + departamento
				+ ", codigopostal=" + codigopostal + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigopostal == null) ? 0 : codigopostal.hashCode());
		result = prime * result + ((departamento == null) ? 0 : departamento.hashCode());
		result = prime * result + ((iddepartamento == null) ? 0 : iddepartamento.hashCode());
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
		DepartamentoEntity other = (DepartamentoEntity) obj;
		if (codigopostal == null) {
			if (other.codigopostal != null)
				return false;
		} else if (!codigopostal.equals(other.codigopostal))
			return false;
		if (departamento == null) {
			if (other.departamento != null)
				return false;
		} else if (!departamento.equals(other.departamento))
			return false;
		if (iddepartamento == null) {
			if (other.iddepartamento != null)
				return false;
		} else if (!iddepartamento.equals(other.iddepartamento))
			return false;
		return true;
	}
	
	
}
