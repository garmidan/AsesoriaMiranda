package com.AsesoriaContableBackend.demo.entity;

import java.util.Date;

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
@Table(name = "logueo", schema = "asesoriamiranda")
public class LogueoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idlogueo", precision = 11)
	private Long idlogueo;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idusuario", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private UsuarioEntity usuario;
	
	@Column(name = "fechaingreso")
	private Date fechaingreso;
	
	@Column(name = "token")
	private String token;
	
	@Column(name = "password")
	private String password;

	public LogueoEntity() {
	}

	public LogueoEntity(Long idlogueo, UsuarioEntity usuario, Date fechaingreso, String token, String password) {
		this.idlogueo = idlogueo;
		this.usuario = usuario;
		this.fechaingreso = fechaingreso;
		this.token = token;
		this.password = password;
	}



	public Long getIdlogueo() {
		return idlogueo;
	}

	public void setIdlogueo(Long idlogueo) {
		this.idlogueo = idlogueo;
	}

	public UsuarioEntity getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioEntity usuario) {
		this.usuario = usuario;
	}

	public Date getFechaingreso() {
		return fechaingreso;
	}

	public void setFechaingreso(Date fechaingreso) {
		this.fechaingreso = fechaingreso;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "LogueoEntity [idlogueo=" + idlogueo + ", usuario=" + usuario + ", fechaingreso=" + fechaingreso
				+ ", token=" + token + ", password=" + password + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fechaingreso == null) ? 0 : fechaingreso.hashCode());
		result = prime * result + ((idlogueo == null) ? 0 : idlogueo.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((token == null) ? 0 : token.hashCode());
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
		LogueoEntity other = (LogueoEntity) obj;
		if (fechaingreso == null) {
			if (other.fechaingreso != null)
				return false;
		} else if (!fechaingreso.equals(other.fechaingreso))
			return false;
		if (idlogueo == null) {
			if (other.idlogueo != null)
				return false;
		} else if (!idlogueo.equals(other.idlogueo))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (token == null) {
			if (other.token != null)
				return false;
		} else if (!token.equals(other.token))
			return false;
		if (usuario == null) {
			if (other.usuario != null)
				return false;
		} else if (!usuario.equals(other.usuario))
			return false;
		return true;
	}

	
}
