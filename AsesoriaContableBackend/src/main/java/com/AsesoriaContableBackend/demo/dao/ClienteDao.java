package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AsesoriaContableBackend.demo.entity.ClienteEntity;

public interface ClienteDao extends JpaRepository<ClienteEntity, Long>{
	
	
}
