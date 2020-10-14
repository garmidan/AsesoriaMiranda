package com.AsesoriaContableBackend.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;

public interface UsuarioDao extends JpaRepository<UsuarioEntity, Long>{

	@Query(value = "SELECT * FROM usuario WHERE usuario.correo = ?1 OR usuario.usuario = ?2", nativeQuery = true)
	public UsuarioEntity login(String correo, String usuario);
	
	@Transactional
	@Modifying
	@Query(value = "UPDATE usuario SET usuario.clave = ?1 , usuario.recupcontraseña = ?2 WHERE usuario.idusuario = ?3", nativeQuery = true)
	public int editContraseña(String clave,Long recupcontraseña, Long idusuario);
}
