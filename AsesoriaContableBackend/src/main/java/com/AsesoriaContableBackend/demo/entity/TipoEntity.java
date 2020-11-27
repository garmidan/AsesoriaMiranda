package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipo", schema = "asesoriamiranda")
public class TipoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipo", precision = 11)
	private Long idtipo;
	
	@Column(name = "nombre", precision = 100)
	private String nombre;

	public TipoEntity() {
	}

	public TipoEntity(Long idtipo, String nombre) {
		this.idtipo = idtipo;
		this.nombre = nombre;
	}

	public Long getIdtipo() {
		return idtipo;
	}

	public void setIdtipo(Long idtipo) {
		this.idtipo = idtipo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "TipoEntity [idtipo=" + idtipo + ", nombre=" + nombre + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idtipo == null) ? 0 : idtipo.hashCode());
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
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
		TipoEntity other = (TipoEntity) obj;
		if (idtipo == null) {
			if (other.idtipo != null)
				return false;
		} else if (!idtipo.equals(other.idtipo))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		return true;
	}
	
	
}
