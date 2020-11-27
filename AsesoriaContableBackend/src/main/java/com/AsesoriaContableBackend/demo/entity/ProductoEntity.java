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
@Table(name = "producto" ,schema = "asesoriamiranda")
public class ProductoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idproducto" ,precision = 11)
	private Long idproducto;
	
	@Column(name = "cantidad")
	private Long cantidad;
	
	@Column(name = "codigo")
	private String codigo;
	
	@Column(name = "descripcion")
	private String descripcion;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idmarca", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private MarcaEntity marca;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idtipo", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private TipoEntity tipo;

	public ProductoEntity() {
	}

	public ProductoEntity(Long idproducto, Long cantidad, String codigo, String descripcion, MarcaEntity marca,
			TipoEntity tipo) {
		this.idproducto = idproducto;
		this.cantidad = cantidad;
		this.codigo = codigo;
		this.descripcion = descripcion;
		this.marca = marca;
		this.tipo = tipo;
	}

	public Long getIdproducto() {
		return idproducto;
	}

	public void setIdproducto(Long idproducto) {
		this.idproducto = idproducto;
	}

	public Long getCantidad() {
		return cantidad;
	}

	public void setCantidad(Long cantidad) {
		this.cantidad = cantidad;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public MarcaEntity getMarca() {
		return marca;
	}

	public void setMarca(MarcaEntity marca) {
		this.marca = marca;
	}

	public TipoEntity getTipo() {
		return tipo;
	}

	public void setTipo(TipoEntity tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "ProductoEntity [idproducto=" + idproducto + ", cantidad=" + cantidad + ", codigo=" + codigo
				+ ", descripcion=" + descripcion + ", marca=" + marca + ", tipo=" + tipo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cantidad == null) ? 0 : cantidad.hashCode());
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		result = prime * result + ((descripcion == null) ? 0 : descripcion.hashCode());
		result = prime * result + ((idproducto == null) ? 0 : idproducto.hashCode());
		result = prime * result + ((marca == null) ? 0 : marca.hashCode());
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
		ProductoEntity other = (ProductoEntity) obj;
		if (cantidad == null) {
			if (other.cantidad != null)
				return false;
		} else if (!cantidad.equals(other.cantidad))
			return false;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		if (descripcion == null) {
			if (other.descripcion != null)
				return false;
		} else if (!descripcion.equals(other.descripcion))
			return false;
		if (idproducto == null) {
			if (other.idproducto != null)
				return false;
		} else if (!idproducto.equals(other.idproducto))
			return false;
		if (marca == null) {
			if (other.marca != null)
				return false;
		} else if (!marca.equals(other.marca))
			return false;
		if (tipo == null) {
			if (other.tipo != null)
				return false;
		} else if (!tipo.equals(other.tipo))
			return false;
		return true;
	}
	
	
}
