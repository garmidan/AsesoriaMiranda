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
@Table(name = "usuario",schema = "asesoriamiranda")
public class UsuarioEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idusuario",precision = 11)
	private Long idusuario;
	
	@Column(name = "nombres", precision = 50)
	private String nombres;
	
	@Column(name = "apellidos", precision = 50)
	private String apellidos;
	
	@Column(name = "celular", precision = 15)
	private String celular;
	
	@Column(name = "telefono", precision = 15)
	private  String telefono;
	
	@Column(name = "direccion", precision = 50)
	private String direccion;
	
	@Column(name = "correo", precision = 50)
	private String correo;
	
	@Column(name = "usuario", precision = 50)
	private String usuario;
	
	@Column(name = "clave", precision = 50)
	private String clave;
	
	@Column(name = "recupcontraseña", precision = 11)
	private Long recupcontraseña;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idrol", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private RolEntity rol;

	public UsuarioEntity() {
	}

	public UsuarioEntity(Long idusuario, String nombres, String apellidos, String celular, String telefono,
			String direccion, String correo, String usuario, String clave, Long recupcontraseña, RolEntity rol) {
		this.idusuario = idusuario;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.celular = celular;
		this.telefono = telefono;
		this.direccion = direccion;
		this.correo = correo;
		this.usuario = usuario;
		this.clave = clave;
		this.recupcontraseña = recupcontraseña;
		this.rol = rol;
	}


	public Long getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(Long idusuario) {
		this.idusuario = idusuario;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}
	
	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public Long getRecupcontraseña() {
		return recupcontraseña;
	}

	public void setRecupcontraseña(Long recupcontraseña) {
		this.recupcontraseña = recupcontraseña;
	}

	public RolEntity getRol() {
		return rol;
	}

	public void setRol(RolEntity rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "UsuarioEntity [idusuario=" + idusuario + ", nombres=" + nombres + ", apellidos=" + apellidos
				+ ", celular=" + celular + ", telefono=" + telefono + ", direccion=" + direccion + ", correo=" + correo
				+ ", usuario=" + usuario + ", clave=" + clave + ", recupcontraseña=" + recupcontraseña + ", rol=" + rol
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apellidos == null) ? 0 : apellidos.hashCode());
		result = prime * result + ((celular == null) ? 0 : celular.hashCode());
		result = prime * result + ((clave == null) ? 0 : clave.hashCode());
		result = prime * result + ((correo == null) ? 0 : correo.hashCode());
		result = prime * result + ((direccion == null) ? 0 : direccion.hashCode());
		result = prime * result + ((idusuario == null) ? 0 : idusuario.hashCode());
		result = prime * result + ((nombres == null) ? 0 : nombres.hashCode());
		result = prime * result + ((recupcontraseña == null) ? 0 : recupcontraseña.hashCode());
		result = prime * result + ((rol == null) ? 0 : rol.hashCode());
		result = prime * result + ((telefono == null) ? 0 : telefono.hashCode());
		result = prime * result + ((usuario == null) ? 0 : usuario.hashCode());
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
		UsuarioEntity other = (UsuarioEntity) obj;
		if (apellidos == null) {
			if (other.apellidos != null)
				return false;
		} else if (!apellidos.equals(other.apellidos))
			return false;
		if (celular == null) {
			if (other.celular != null)
				return false;
		} else if (!celular.equals(other.celular))
			return false;
		if (clave == null) {
			if (other.clave != null)
				return false;
		} else if (!clave.equals(other.clave))
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
		if (idusuario == null) {
			if (other.idusuario != null)
				return false;
		} else if (!idusuario.equals(other.idusuario))
			return false;
		if (nombres == null) {
			if (other.nombres != null)
				return false;
		} else if (!nombres.equals(other.nombres))
			return false;
		if (recupcontraseña == null) {
			if (other.recupcontraseña != null)
				return false;
		} else if (!recupcontraseña.equals(other.recupcontraseña))
			return false;
		if (rol == null) {
			if (other.rol != null)
				return false;
		} else if (!rol.equals(other.rol))
			return false;
		if (telefono == null) {
			if (other.telefono != null)
				return false;
		} else if (!telefono.equals(other.telefono))
			return false;
		if (usuario == null) {
			if (other.usuario != null)
				return false;
		} else if (!usuario.equals(other.usuario))
			return false;
		return true;
	}
	

}
