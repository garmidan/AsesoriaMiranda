package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AsesoriaContableBackend.demo.entity.ClienteEntity;
@Repository
public interface ClienteDao extends JpaRepository<ClienteEntity, Long>{
	
	@Query(value = "SELECT * FROM cliente WHERE cliente.nitocedula = ?1", nativeQuery = true)
	public ClienteEntity obtenerCliente(String nitocedula);
}
