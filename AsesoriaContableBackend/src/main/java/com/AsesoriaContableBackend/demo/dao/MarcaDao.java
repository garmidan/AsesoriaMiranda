package com.AsesoriaContableBackend.demo.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.MarcaEntity;

@Repository
public interface MarcaDao extends JpaRepository<MarcaEntity, Long>{

	@Transactional
	@Query(value = "select * from marca order by idmarca desc limit 1", nativeQuery = true)
	public MarcaEntity ultimo();
}
