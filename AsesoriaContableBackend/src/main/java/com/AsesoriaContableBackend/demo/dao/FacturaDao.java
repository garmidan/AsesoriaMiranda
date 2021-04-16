package com.AsesoriaContableBackend.demo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AsesoriaContableBackend.demo.entity.FacturaEntity;

public interface FacturaDao extends JpaRepository<FacturaEntity, Long>{

	@Transactional
	@Query(value = "select * from factura order by idfactura desc limit 1", nativeQuery = true)
	public FacturaEntity ultimo();
	
	@Query(value = "SELECT * FROM factura WHERE factura.codigo = ?1", nativeQuery = true)
	public FacturaEntity obtenerFactura(String codigo);
	
	@Query(value = "SELECT * FROM `factura` WHERE codigo != 'n/a'", nativeQuery = true)
	public List<FacturaEntity> findAllFactura();
	
}
