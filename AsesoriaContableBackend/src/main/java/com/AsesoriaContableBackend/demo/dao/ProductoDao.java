package com.AsesoriaContableBackend.demo.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.ProductoEntity;

@Repository
public interface ProductoDao extends JpaRepository<ProductoEntity, Long>{
	
	@Query(value = "SELECT * FROM producto WHERE producto.codigo = ?1", nativeQuery = true)
	public ProductoEntity obtenerProducto(String codigo);
	
	@Modifying
	@Transactional
	@Query(value = "UPDATE producto SET cantidad = ?1 WHERE producto.idproducto = ?2", nativeQuery = true)
	public int editCantidad(String cantidad, Long idproducto);
}
