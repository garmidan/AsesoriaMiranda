package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.MarcaEntity;

@Repository
public interface MarcaDao extends JpaRepository<MarcaEntity, Long>{

}
