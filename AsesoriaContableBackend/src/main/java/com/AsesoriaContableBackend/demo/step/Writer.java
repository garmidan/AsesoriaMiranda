package com.AsesoriaContableBackend.demo.step;

import javax.sql.DataSource;

import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.BeanPropertyItemSqlParameterSourceProvider;
import org.springframework.batch.item.database.ItemPreparedStatementSetter;
import org.springframework.batch.item.database.JdbcBatchItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.AsesoriaContableBackend.demo.clases.Cliente;
import com.AsesoriaContableBackend.demo.clases.ParametrosClass;

@Component
public class Writer {

	private static final String QUERY_INSERT_STUDENT = "INSERT INTO rol (nombre) VALUES (?)";

	@Autowired
	NamedParameterJdbcTemplate jdbcTemplate;
	
	public ItemWriter<Cliente> csvFileDatabaseItemWriter(DataSource dataSource) {
		JdbcBatchItemWriter<Cliente> databaseItemWriter = new JdbcBatchItemWriter<>();
		databaseItemWriter.setDataSource(dataSource);
		databaseItemWriter.setJdbcTemplate(jdbcTemplate);
		databaseItemWriter.setSql(QUERY_INSERT_STUDENT);
		ItemPreparedStatementSetter<Cliente> valueSetter = 
                new ParametrosClass();
        databaseItemWriter.setItemPreparedStatementSetter(valueSetter);
		return databaseItemWriter;
	}

}
