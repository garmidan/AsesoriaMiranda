package com.AsesoriaContableBackend.demo.clases;

public class Cliente {
	
	
								
	 private String nombresapellidosoempresa;
	 private String telefono;
	 private String celular;
	 private String correo;
	 private String direccion;
	 private String nitocedula;
	 private String idtipocliente;
	 private String idmunicipio;
	 
	public Cliente() {
	}

	public Cliente(String nombresapellidosoempresa, String telefono, String celular, String correo, String direccion,
			String nitocedula, String idtipocliente, String idmunicipio) {
		this.nombresapellidosoempresa = nombresapellidosoempresa;
		this.telefono = telefono;
		this.celular = celular;
		this.correo = correo;
		this.direccion = direccion;
		this.nitocedula = nitocedula;
		this.idtipocliente = idtipocliente;
		this.idmunicipio = idmunicipio;
	}

	public String getNombresapellidosoempresa() {
		return nombresapellidosoempresa;
	}

	public void setNombresapellidosoempresa(String nombresapellidosoempresa) {
		this.nombresapellidosoempresa = nombresapellidosoempresa;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getNitocedula() {
		return nitocedula;
	}

	public void setNitocedula(String nitocedula) {
		this.nitocedula = nitocedula;
	}

	public String getIdtipocliente() {
		return idtipocliente;
	}

	public void setIdtipocliente(String idtipocliente) {
		this.idtipocliente = idtipocliente;
	}

	public String getIdmunicipio() {
		return idmunicipio;
	}

	public void setIdmunicipio(String idmunicipio) {
		this.idmunicipio = idmunicipio;
	}

	@Override
	public String toString() {
		return "Cliente [nombresapellidosoempresa=" + nombresapellidosoempresa + ", telefono=" + telefono + ", celular="
				+ celular + ", correo=" + correo + ", direccion=" + direccion + ", nitocedula=" + nitocedula
				+ ", idtipocliente=" + idtipocliente + ", idmunicipio=" + idmunicipio + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((celular == null) ? 0 : celular.hashCode());
		result = prime * result + ((correo == null) ? 0 : correo.hashCode());
		result = prime * result + ((direccion == null) ? 0 : direccion.hashCode());
		result = prime * result + ((idmunicipio == null) ? 0 : idmunicipio.hashCode());
		result = prime * result + ((idtipocliente == null) ? 0 : idtipocliente.hashCode());
		result = prime * result + ((nitocedula == null) ? 0 : nitocedula.hashCode());
		result = prime * result + ((nombresapellidosoempresa == null) ? 0 : nombresapellidosoempresa.hashCode());
		result = prime * result + ((telefono == null) ? 0 : telefono.hashCode());
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
		Cliente other = (Cliente) obj;
		if (celular == null) {
			if (other.celular != null)
				return false;
		} else if (!celular.equals(other.celular))
			return false;
		if (correo == null) {
			if (other.correo != null)
				return false;
		} else if (!correo.equals(other.correo))
			return false;
		if (direccion == null) {
			if (other.direccion != null)
				return false;
		} else if (!direccion.equals(other.direccion))
			return false;
		if (idmunicipio == null) {
			if (other.idmunicipio != null)
				return false;
		} else if (!idmunicipio.equals(other.idmunicipio))
			return false;
		if (idtipocliente == null) {
			if (other.idtipocliente != null)
				return false;
		} else if (!idtipocliente.equals(other.idtipocliente))
			return false;
		if (nitocedula == null) {
			if (other.nitocedula != null)
				return false;
		} else if (!nitocedula.equals(other.nitocedula))
			return false;
		if (nombresapellidosoempresa == null) {
			if (other.nombresapellidosoempresa != null)
				return false;
		} else if (!nombresapellidosoempresa.equals(other.nombresapellidosoempresa))
			return false;
		if (telefono == null) {
			if (other.telefono != null)
				return false;
		} else if (!telefono.equals(other.telefono))
			return false;
		return true;
	}

	
}
