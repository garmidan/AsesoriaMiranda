package com.AsesoriaContableBackend.demo.step;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.stereotype.Component;

import com.AsesoriaContableBackend.demo.clases.Cliente;

@Component
public class Procesor implements ItemProcessor<Cliente, Cliente>{

	@Override
	public Cliente process(Cliente item) throws Exception {
		return item;
	}

}
