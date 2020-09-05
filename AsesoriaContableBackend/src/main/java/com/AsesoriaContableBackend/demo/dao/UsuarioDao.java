package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;

public interface UsuarioDao extends JpaRepository<UsuarioEntity, Long>{

	@Query(value = "SELECT * FROM usuario WHERE usuario.clave = ?1", nativeQuery = true)
	public UsuarioEntity login(String clave);
	
	UsuarioEntity findByCorreo(String correo);
	
}
