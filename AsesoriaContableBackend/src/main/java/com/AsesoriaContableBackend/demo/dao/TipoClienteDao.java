package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AsesoriaContableBackend.demo.entity.TipoClienteEntity;

public interface TipoClienteDao extends JpaRepository<TipoClienteEntity, Long>{
	
	@Query(value = "SELECT * FROM tipocliente WHERE tipo = ?1", nativeQuery = true)
	public TipoClienteEntity buscarTipocliente(String tipo);
}
