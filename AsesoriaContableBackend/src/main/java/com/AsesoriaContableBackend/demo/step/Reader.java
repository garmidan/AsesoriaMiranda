package com.AsesoriaContableBackend.demo.step;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.excel.RowMapper;
import org.springframework.batch.item.excel.poi.PoiItemReader;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;
import org.springframework.batch.item.ItemReader;
import com.AsesoriaContableBackend.demo.clases.Cliente;

@Component
public class Reader {
	private static final Logger LOGGER = LoggerFactory.getLogger(Reader.class);
	

	public ItemReader<Cliente> reader(@Value("archivo")String archivo){
		
		File file = new File("src/main/resources/ImportExcel/" + archivo);
	    PoiItemReader<Cliente> reader = new PoiItemReader<Cliente>();
		if (file.exists()) {
			try {
				//Set input file location
			    reader.setResource(new FileSystemResource(file.getAbsolutePath()));
			    reader.setLinesToSkip(1);
			    reader.setRowMapper(excelRowMapper());
			} catch (Exception e) {
				System.out.println("Se modifico un campo");
			}
		  
		}
	    return reader;
	}
	
	private RowMapper<Cliente> excelRowMapper() {
	       return new ExcelRowMapper();
	   }
}
