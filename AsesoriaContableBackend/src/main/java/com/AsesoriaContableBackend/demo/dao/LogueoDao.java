package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AsesoriaContableBackend.demo.entity.LogueoEntity;

public interface LogueoDao extends JpaRepository<LogueoEntity, Long>{

	@Query(value = "SELECT MAX(idlogueo) * FROM Tabla", nativeQuery = true)
	public LogueoEntity ultimoLogueo();
}


