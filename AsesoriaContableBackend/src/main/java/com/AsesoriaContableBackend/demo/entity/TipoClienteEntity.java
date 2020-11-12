package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipocliente",schema = "asesoriamiranda")
public class TipoClienteEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipocliente",precision = 11)
	private Long idtipocliente;
	
	@Column(name = "tipo", precision = 50)
	private String tipo;

	public TipoClienteEntity() {
	}

	public TipoClienteEntity(Long idtipocliente, String tipo) {
		this.idtipocliente = idtipocliente;
		this.tipo = tipo;
	}

	public Long getIdtipocliente() {
		return idtipocliente;
	}

	public void setIdtipocliente(Long idtipocliente) {
		this.idtipocliente = idtipocliente;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "TipoClienteEntity [idtipocliente=" + idtipocliente + ", tipo=" + tipo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idtipocliente == null) ? 0 : idtipocliente.hashCode());
		result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
		TipoClienteEntity other = (TipoClienteEntity) obj;
		if (idtipocliente == null) {
			if (other.idtipocliente != null)
				return false;
		} else if (!idtipocliente.equals(other.idtipocliente))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}
	
	
}
