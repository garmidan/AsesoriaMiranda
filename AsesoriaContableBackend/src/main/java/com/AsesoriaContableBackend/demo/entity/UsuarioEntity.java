package com.AsesoriaContableBackend.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usuario",schema = "asesoriamiranda")
public class UsuarioEntity {
	
	@Id
	@GeneratedValue
	@Column(name = "idusuario",precision = 11)
	private Long idusuario;
	
}
