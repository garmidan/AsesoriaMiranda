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
@Table(name = "movimiento" ,schema = "asesoriamiranda")
public class MovimientoEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idmovimiento" ,precision = 11)
	private Long idmovimiento;
	
	@Column(name = "cantidad")
	private Long cantidad;
	
	@Column(name = "fecha")
	private Date fecha;
	
	@Column(name = "precioentrada")
	private Double precioentrada;
	
	@Column(name = "preciosalida")
	private String preciosalida;
	
	@Column(name = "observacion")
	private String observacion;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idproducto", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private ProductoEntity producto;
	 
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idusuario", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private UsuarioEntity usuario;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idtipomovimiento", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private TipoMovimientoEntity tipomovimiento;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idfactura", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private FacturaEntity idfactura;
	
	@Column(name = "cliente")
	private String cliente;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "idtipopago", nullable = false)
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
	private TipoPagoEntity idtipopago;
	
	@Column(name = "cuotas")
	private String cuotas;
	
	public MovimientoEntity() {
	}

	public MovimientoEntity(Long idmovimiento, Long cantidad, Date fecha, Double precioentrada, String preciosalida,
			String observacion, ProductoEntity producto, UsuarioEntity usuario, TipoMovimientoEntity tipomovimiento,
			FacturaEntity idfactura, String cliente, TipoPagoEntity idtipopago, String cuotas) {
		this.idmovimiento = idmovimiento;
		this.cantidad = cantidad;
		this.fecha = fecha;
		this.precioentrada = precioentrada;
		this.preciosalida = preciosalida;
		this.observacion = observacion;
		this.producto = producto;
		this.usuario = usuario;
		this.tipomovimiento = tipomovimiento;
		this.idfactura = idfactura;
		this.cliente = cliente;
		this.idtipopago = idtipopago;
		this.cuotas = cuotas;
	}

	public Long getIdmovimiento() {
		return idmovimiento;
	}

	public void setIdmovimiento(Long idmovimiento) {
		this.idmovimiento = idmovimiento;
	}

	public Long getCantidad() {
		return cantidad;
	}

	public void setCantidad(Long cantidad) {
		this.cantidad = cantidad;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Double getPrecioentrada() {
		return precioentrada;
	}

	public void setPrecioentrada(Double precioentrada) {
		this.precioentrada = precioentrada;
	}

	public String getPreciosalida() {
		return preciosalida;
	}

	public void setPreciosalida(String preciosalida) {
		this.preciosalida = preciosalida;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public ProductoEntity getProducto() {
		return producto;
	}

	public void setProducto(ProductoEntity producto) {
		this.producto = producto;
	}

	public UsuarioEntity getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioEntity usuario) {
		this.usuario = usuario;
	}

	public TipoMovimientoEntity getTipomovimiento() {
		return tipomovimiento;
	}

	public void setTipomovimiento(TipoMovimientoEntity tipomovimiento) {
		this.tipomovimiento = tipomovimiento;
	}

	public FacturaEntity getIdfactura() {
		return idfactura;
	}

	public void setIdfactura(FacturaEntity idfactura) {
		this.idfactura = idfactura;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public TipoPagoEntity getIdtipopago() {
		return idtipopago;
	}

	public void setIdtipopago(TipoPagoEntity idtipopago) {
		this.idtipopago = idtipopago;
	}

	public String getCuotas() {
		return cuotas;
	}

	public void setCuotas(String cuotas) {
		this.cuotas = cuotas;
	}

	@Override
	public String toString() {
		return "MovimientoEntity [idmovimiento=" + idmovimiento + ", cantidad=" + cantidad + ", fecha=" + fecha
				+ ", precioentrada=" + precioentrada + ", preciosalida=" + preciosalida + ", observacion=" + observacion
				+ ", producto=" + producto + ", usuario=" + usuario + ", tipomovimiento=" + tipomovimiento
				+ ", idfactura=" + idfactura + ", cliente=" + cliente + ", idtipopago=" + idtipopago + ", cuotas="
				+ cuotas + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cantidad == null) ? 0 : cantidad.hashCode());
		result = prime * result + ((cliente == null) ? 0 : cliente.hashCode());
		result = prime * result + ((cuotas == null) ? 0 : cuotas.hashCode());
		result = prime * result + ((fecha == null) ? 0 : fecha.hashCode());
		result = prime * result + ((idfactura == null) ? 0 : idfactura.hashCode());
		result = prime * result + ((idmovimiento == null) ? 0 : idmovimiento.hashCode());
		result = prime * result + ((idtipopago == null) ? 0 : idtipopago.hashCode());
		result = prime * result + ((observacion == null) ? 0 : observacion.hashCode());
		result = prime * result + ((precioentrada == null) ? 0 : precioentrada.hashCode());
		result = prime * result + ((preciosalida == null) ? 0 : preciosalida.hashCode());
		result = prime * result + ((producto == null) ? 0 : producto.hashCode());
		result = prime * result + ((tipomovimiento == null) ? 0 : tipomovimiento.hashCode());
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
		MovimientoEntity other = (MovimientoEntity) obj;
		if (cantidad == null) {
			if (other.cantidad != null)
				return false;
		} else if (!cantidad.equals(other.cantidad))
			return false;
		if (cliente == null) {
			if (other.cliente != null)
				return false;
		} else if (!cliente.equals(other.cliente))
			return false;
		if (cuotas == null) {
			if (other.cuotas != null)
				return false;
		} else if (!cuotas.equals(other.cuotas))
			return false;
		if (fecha == null) {
			if (other.fecha != null)
				return false;
		} else if (!fecha.equals(other.fecha))
			return false;
		if (idfactura == null) {
			if (other.idfactura != null)
				return false;
		} else if (!idfactura.equals(other.idfactura))
			return false;
		if (idmovimiento == null) {
			if (other.idmovimiento != null)
				return false;
		} else if (!idmovimiento.equals(other.idmovimiento))
			return false;
		if (idtipopago == null) {
			if (other.idtipopago != null)
				return false;
		} else if (!idtipopago.equals(other.idtipopago))
			return false;
		if (observacion == null) {
			if (other.observacion != null)
				return false;
		} else if (!observacion.equals(other.observacion))
			return false;
		if (precioentrada == null) {
			if (other.precioentrada != null)
				return false;
		} else if (!precioentrada.equals(other.precioentrada))
			return false;
		if (preciosalida == null) {
			if (other.preciosalida != null)
				return false;
		} else if (!preciosalida.equals(other.preciosalida))
			return false;
		if (producto == null) {
			if (other.producto != null)
				return false;
		} else if (!producto.equals(other.producto))
			return false;
		if (tipomovimiento == null) {
			if (other.tipomovimiento != null)
				return false;
		} else if (!tipomovimiento.equals(other.tipomovimiento))
			return false;
		if (usuario == null) {
			if (other.usuario != null)
				return false;
		} else if (!usuario.equals(other.usuario))
			return false;
		return true;
	}

	
}
