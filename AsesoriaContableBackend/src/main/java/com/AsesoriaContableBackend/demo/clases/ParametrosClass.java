package com.AsesoriaContableBackend.demo.clases;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.batch.item.database.ItemPreparedStatementSetter;

public class ParametrosClass implements ItemPreparedStatementSetter<Cliente>  {

	@Override
	public void setValues(Cliente item, PreparedStatement ps) throws SQLException {
		 ps.setString(1, item.getNombres());
		
	}

}
