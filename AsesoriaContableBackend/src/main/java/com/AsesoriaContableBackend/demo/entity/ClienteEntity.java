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
@Table(name = "cliente", schema = "asesoriamiranda")
public class ClienteEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idcliente", precision = 11)
	private long idcliente;
	
	@Column(name = "nombresapellidosoempresa")
	private String nombresapellidosoempresa;
	@Column(name = "telefono")
	private String telefono;
	@Column(name = "celular")
	private String celular;
	@Column(name = "correo")
	private String correo;
	@Column(name = "direccion")
	private String direccion;
	@Column(name = "nitocedula")
	private String nitocedula;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idtipocliente", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private TipoClienteEntity tipocliente;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idmunicipio", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private MunicipioEntity municipio;

	public ClienteEntity() {
	}

	public ClienteEntity(long idcliente, String nombresapellidosoempresa, String telefono, String celular,
			String correo, String direccion, String nitocedula, TipoClienteEntity tipocliente,
			MunicipioEntity municipio) {
		this.idcliente = idcliente;
		this.nombresapellidosoempresa = nombresapellidosoempresa;
		this.telefono = telefono;
		this.celular = celular;
		this.correo = correo;
		this.direccion = direccion;
		this.nitocedula = nitocedula;
		this.tipocliente = tipocliente;
		this.municipio = municipio;
	}

	public long getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(long idcliente) {
		this.idcliente = idcliente;
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

	public TipoClienteEntity getTipocliente() {
		return tipocliente;
	}

	public void setTipocliente(TipoClienteEntity tipocliente) {
		this.tipocliente = tipocliente;
	}

	public MunicipioEntity getMunicipio() {
		return municipio;
	}

	public void setMunicipio(MunicipioEntity municipio) {
		this.municipio = municipio;
	}

	@Override
	public String toString() {
		return "ClienteEntity [idcliente=" + idcliente + ", nombresapellidosoempresa=" + nombresapellidosoempresa
				+ ", telefono=" + telefono + ", celular=" + celular + ", correo=" + correo + ", direccion=" + direccion
				+ ", nitocedula=" + nitocedula + ", tipocliente=" + tipocliente + ", municipio=" + municipio + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((celular == null) ? 0 : celular.hashCode());
		result = prime * result + ((correo == null) ? 0 : correo.hashCode());
		result = prime * result + ((direccion == null) ? 0 : direccion.hashCode());
		result = prime * result + (int) (idcliente ^ (idcliente >>> 32));
		result = prime * result + ((municipio == null) ? 0 : municipio.hashCode());
		result = prime * result + ((nitocedula == null) ? 0 : nitocedula.hashCode());
		result = prime * result + ((nombresapellidosoempresa == null) ? 0 : nombresapellidosoempresa.hashCode());
		result = prime * result + ((telefono == null) ? 0 : telefono.hashCode());
		result = prime * result + ((tipocliente == null) ? 0 : tipocliente.hashCode());
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
		ClienteEntity other = (ClienteEntity) obj;
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
		if (idcliente != other.idcliente)
			return false;
		if (municipio == null) {
			if (other.municipio != null)
				return false;
		} else if (!municipio.equals(other.municipio))
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
		if (tipocliente == null) {
			if (other.tipocliente != null)
				return false;
		} else if (!tipocliente.equals(other.tipocliente))
			return false;
		return true;
	}
	
	
}
