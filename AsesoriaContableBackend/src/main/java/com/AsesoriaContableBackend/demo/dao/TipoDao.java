package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.TipoEntity;

@Repository
public interface TipoDao extends JpaRepository<TipoEntity, Long> {

}
