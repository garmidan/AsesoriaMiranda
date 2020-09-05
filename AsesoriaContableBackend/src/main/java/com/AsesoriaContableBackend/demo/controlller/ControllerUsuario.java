package com.AsesoriaContableBackend.demo.controlller;


import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.AsesoriaContableBackend.demo.dao.UsuarioDao;
import com.AsesoriaContableBackend.demo.entity.RolEntity;
import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;

@RestController
@RequestMapping("/")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT,
		RequestMethod.DELETE })
public class ControllerUsuario {

	@Autowired
	UsuarioDao usuarioDao;
	
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@GetMapping("listaUsuarios/{passwordToHash}")
	public ResponseEntity<List<UsuarioEntity>> listaUsuarios(@PathVariable String passwordToHash) {
		RolEntity rol = new RolEntity(Long.valueOf(1), "Administrador");
		UsuarioEntity user = new UsuarioEntity(Long.valueOf(0), "Yeferson David", "Murcia Miranda", "312789023", "09210212", "Planadas Tolima", "yeferson@gmail.com", encoder.encode(passwordToHash), rol);
		usuarioDao.save(user);
		return new ResponseEntity<List<UsuarioEntity>>(usuarioDao.findAll(),HttpStatus.OK);
	}
	
	@GetMapping("login/{usuario}/{clave}")
	public ResponseEntity<UsuarioEntity> login(@PathVariable String usuario, @PathVariable String clave){
		UsuarioEntity userLog = usuarioDao.findByCorreo(usuario);
		if (encoder.matches(clave, userLog.getClave())) {
		       System.out.println("Bienvenido usuario = "+userLog.getNombres());
		} else {
			userLog = new UsuarioEntity();
			 System.out.println("La contraseña no es correcta ");
		}
		return new ResponseEntity<UsuarioEntity>(userLog,HttpStatus.OK);
	}
}
