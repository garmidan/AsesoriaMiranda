package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "marca", schema = "asesoriamiranda")
public class MarcaEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idmarca", precision = 11)
	private Long idmarca;
	
	@Column(name = "nombre", precision = 100)
	private String nombre;

	public MarcaEntity() {
	}

	public MarcaEntity(Long idmarca, String nombre) {
		this.idmarca = idmarca;
		this.nombre = nombre;
	}

	public Long getIdmarca() {
		return idmarca;
	}

	public void setIdmarca(Long idmarca) {
		this.idmarca = idmarca;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "MarcaEntity [idmarca=" + idmarca + ", nombre=" + nombre + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idmarca == null) ? 0 : idmarca.hashCode());
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
		MarcaEntity other = (MarcaEntity) obj;
		if (idmarca == null) {
			if (other.idmarca != null)
				return false;
		} else if (!idmarca.equals(other.idmarca))
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		return true;
	}
	
}
