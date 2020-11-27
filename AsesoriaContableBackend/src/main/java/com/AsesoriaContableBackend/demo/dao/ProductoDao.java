package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.ProductoEntity;

@Repository
public interface ProductoDao extends JpaRepository<ProductoEntity, Long>{
	
	@Query(value = "SELECT * FROM producto WHERE producto.codigo = ?1", nativeQuery = true)
	public ProductoEntity obtenerProducto(String codigo);
}
