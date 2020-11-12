package com.AsesoriaContableBackend.demo.step;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.AsesoriaContableBackend.demo.clases.Cliente;
import com.AsesoriaContableBackend.demo.dao.ClienteDao;
import com.AsesoriaContableBackend.demo.dao.MunicipioRepository;
import com.AsesoriaContableBackend.demo.dao.TipoClienteDao;
import com.AsesoriaContableBackend.demo.entity.MunicipioEntity;
import com.AsesoriaContableBackend.demo.entity.TipoClienteEntity;

@Component
public class Procesor implements ItemProcessor<Cliente, Cliente>{

	@Autowired
	ClienteDao clienteDao;
	
	@Autowired
	TipoClienteDao tipoClienteDao;
	
	@Autowired
	MunicipioRepository municipioRepository;
	
	@Override
	public Cliente process(Cliente item) throws Exception {
		Cliente cl = new Cliente();
		MunicipioEntity municipio = municipioRepository.buscarMunicipio(item.getIdmunicipio());
		if (municipio != null) {
			cl.setIdmunicipio(String.valueOf(municipio.getIdmunicipio()));
			TipoClienteEntity tipoClienteEntity = tipoClienteDao.buscarTipocliente(item.getIdtipocliente());
			if (tipoClienteEntity != null) {
				cl.setIdtipocliente(String.valueOf(tipoClienteEntity.getIdtipocliente()));
				cl.setTelefono(item.getTelefono());
				cl.setCelular(item.getCelular());
				cl.setCorreo(item.getCorreo());
				cl.setNombresapellidosoempresa(item.getNombresapellidosoempresa());
				cl.setDireccion(item.getDireccion());
				cl.setNitocedula(item.getNitocedula());
			} else {
				System.out.println("Error al buscar el tipo de cliente");
			}
		} else {
			System.out.println("Error al buscar el municipio");
		}
		
		return cl;
	}

}
