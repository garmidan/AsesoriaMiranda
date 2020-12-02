package com.AsesoriaContableBackend.demo.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.AsesoriaContableBackend.demo.entity.TipoEntity;

@Repository
public interface TipoDao extends JpaRepository<TipoEntity, Long> {
	@Transactional
	@Query(value = "select * from tipo order by idtipo desc limit 1", nativeQuery = true)
	public TipoEntity ultimo();
}
