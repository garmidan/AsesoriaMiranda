package com.AsesoriaContableBackend.demo;

import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@EnableBatchProcessing
public class AsesoriaContableBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(AsesoriaContableBackendApplication.class, args);
	}

}
