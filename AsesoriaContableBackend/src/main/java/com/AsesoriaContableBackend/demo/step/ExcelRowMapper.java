package com.AsesoriaContableBackend.demo.step;
import org.springframework.batch.item.excel.RowMapper;
import org.springframework.batch.item.excel.support.rowset.RowSet;

import com.AsesoriaContableBackend.demo.clases.Cliente;
public class ExcelRowMapper implements RowMapper<Cliente>{

	@Override
	public Cliente mapRow(RowSet rs) throws Exception {
		Cliente cliente = new Cliente();
        cliente.setNombres(rs.getColumnValue(0));
        cliente.setApellidos(rs.getColumnValue(1));
        return cliente;
	}

}
