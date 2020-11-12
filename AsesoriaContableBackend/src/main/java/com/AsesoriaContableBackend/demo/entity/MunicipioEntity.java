package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "municipio", schema = "asesoriamiranda")
public class MunicipioEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idmunicipio", precision = 11)
	private Long idmunicipio;
	
	@Column(name = "nombremunicipio")
	private String nombremunicipio;
	
	@Column(name = "codigopostal")
	private String codigopostal;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "iddepartamento", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private DepartamentoEntity departamento;

	public MunicipioEntity() {
	}

	public MunicipioEntity(Long idmunicipio, String nombremunicipio, String codigopostal, DepartamentoEntity departamento) {
		this.idmunicipio = idmunicipio;
		this.nombremunicipio = nombremunicipio;
		this.codigopostal = codigopostal;
		this.departamento = departamento;
	}

	public Long getIdmunicipio() {
		return idmunicipio;
	}

	public void setIdmunicipio(Long idmunicipio) {
		this.idmunicipio = idmunicipio;
	}

	public String getNombreMunicipio() {
		return nombremunicipio;
	}

	public void setNombreMunicipio(String nombremunicipio) {
		this.nombremunicipio = nombremunicipio;
	}

	public String getCodigopostal() {
		return codigopostal;
	}

	public void setCodigopostal(String codigopostal) {
		this.codigopostal = codigopostal;
	}

	public DepartamentoEntity getDepartamento() {
		return departamento;
	}

	public void setDepartamento(DepartamentoEntity departamento) {
		this.departamento = departamento;
	}

	@Override
	public String toString() {
		return "MunicipioEntity [idmunicipio=" + idmunicipio + ", nombremunicipio=" + nombremunicipio
				+ ", codigopostal=" + codigopostal + ", departamento=" + departamento + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigopostal == null) ? 0 : codigopostal.hashCode());
		result = prime * result + ((departamento == null) ? 0 : departamento.hashCode());
		result = prime * result + ((idmunicipio == null) ? 0 : idmunicipio.hashCode());
		result = prime * result + ((nombremunicipio == null) ? 0 : nombremunicipio.hashCode());
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
		MunicipioEntity other = (MunicipioEntity) obj;
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
		if (idmunicipio == null) {
			if (other.idmunicipio != null)
				return false;
		} else if (!idmunicipio.equals(other.idmunicipio))
			return false;
		if (nombremunicipio == null) {
			if (other.nombremunicipio != null)
				return false;
		} else if (!nombremunicipio.equals(other.nombremunicipio))
			return false;
		return true;
	}

	
	
}
