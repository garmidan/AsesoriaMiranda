package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AsesoriaContableBackend.demo.entity.MunicipioEntity;

public interface MunicipioRepository extends JpaRepository<MunicipioEntity, Long>{

	@Query(value = "SELECT * FROM municipio WHERE nombremunicipio = ?1", nativeQuery = true)
	public MunicipioEntity buscarMunicipio(String tipo);
}
