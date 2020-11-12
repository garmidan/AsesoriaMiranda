package com.AsesoriaContableBackend.demo.clases;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.batch.item.database.ItemPreparedStatementSetter;

public class ParametrosClass implements ItemPreparedStatementSetter<Cliente>  {

	@Override
	public void setValues(Cliente item, PreparedStatement ps) throws SQLException {
		 ps.setString(1, item.getNombresapellidosoempresa());
		 ps.setString(2, item.getTelefono());
		 ps.setString(3, item.getCelular());
		 ps.setString(4, item.getCorreo());
		 ps.setString(5, item.getDireccion());
		 ps.setString(6, item.getNitocedula());
		 ps.setLong(7, Long.valueOf(item.getIdtipocliente()));
		 ps.setLong(8, Long.valueOf(item.getIdmunicipio()));
	}

}
