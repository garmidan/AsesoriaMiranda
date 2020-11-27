package com.AsesoriaContableBackend.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.MovimientoEntity;
@Repository
public interface MovimientoDao extends JpaRepository<MovimientoEntity, Long> {
	
	@Query(value = "SELECT * FROM movimiento WHERE movimiento.idtipomovimiento = ?1", nativeQuery = true)
	public List<MovimientoEntity> listaId(Long idtipomovimiento);
	
}
