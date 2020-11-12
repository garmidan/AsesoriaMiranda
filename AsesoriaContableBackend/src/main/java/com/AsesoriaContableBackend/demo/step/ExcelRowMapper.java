package com.AsesoriaContableBackend.demo.step;
import org.springframework.batch.item.excel.RowMapper;
import org.springframework.batch.item.excel.support.rowset.RowSet;

import com.AsesoriaContableBackend.demo.clases.Cliente;
public class ExcelRowMapper implements RowMapper<Cliente>{

	@Override
	public Cliente mapRow(RowSet rs) throws Exception {
		Cliente cliente = new Cliente();
        cliente.setNombresapellidosoempresa(rs.getColumnValue(0));
        cliente.setTelefono(rs.getColumnValue(1));
        cliente.setCelular(rs.getColumnValue(2));
        cliente.setCorreo(rs.getColumnValue(3));
        cliente.setDireccion(rs.getColumnValue(4));
        cliente.setNitocedula(rs.getColumnValue(5));
        cliente.setIdtipocliente(rs.getColumnValue(6));
        cliente.setIdmunicipio(rs.getColumnValue(7));
        return cliente;
	}

}
