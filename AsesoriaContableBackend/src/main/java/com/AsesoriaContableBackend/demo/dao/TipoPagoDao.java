package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.TipoPagoEntity;


@Repository
public interface TipoPagoDao extends JpaRepository<TipoPagoEntity, Long>{

}
