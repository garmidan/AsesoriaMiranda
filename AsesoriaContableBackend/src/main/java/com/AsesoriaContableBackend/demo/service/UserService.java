package com.AsesoriaContableBackend.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.AsesoriaContableBackend.demo.dao.UsuarioDao;
import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;

@Service("userDetailsService")
public class UserService implements UserDetailsService{
	
	@Autowired 
	private UsuarioDao repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UsuarioEntity us = repo.findByCorreo(username);
		List<GrantedAuthority> rol = new ArrayList<>();
		rol.add(new SimpleGrantedAuthority(us.getRol().getNombre()));
		UserDetails userDet = new User(us.getCorreo(), us.getClave(), rol);
		return userDet;
	}

	
}
