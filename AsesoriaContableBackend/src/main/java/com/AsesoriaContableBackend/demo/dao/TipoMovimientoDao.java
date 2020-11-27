package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.TipoMovimientoEntity;

@Repository
public interface TipoMovimientoDao extends JpaRepository<TipoMovimientoEntity, Long>{

}
