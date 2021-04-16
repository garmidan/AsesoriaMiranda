package com.AsesoriaContableBackend.demo;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.AsesoriaContableBackend.demo.manejoerrores.CustomAccessDeniedHandler;
import com.AsesoriaContableBackend.demo.security.JWTAuthorizationFilter;
@SpringBootApplication
@EnableBatchProcessing

public class AsesoriaContableBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(AsesoriaContableBackendApplication.class, args);
	}
	
	@EnableWebSecurity
	@Configuration
	class WebSecurityConfig extends WebSecurityConfigurerAdapter{
		
		
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http.cors().and().csrf().disable()
				.addFilterAfter(new JWTAuthorizationFilter(), UsernamePasswordAuthenticationFilter.class)
				.authorizeRequests()
				.antMatchers(HttpMethod.POST, "/login").permitAll()
				.antMatchers(HttpMethod.GET, "/recuperarcontraseña/{correoOusuario}").permitAll()
				.antMatchers(HttpMethod.GET, "/recuperDatos").permitAll()
				.anyRequest().authenticated();
		}
		
		
		
		@Bean
		public BCryptPasswordEncoder passworEncoder() {
			BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
			return bCryptPasswordEncoder;
		}
		
		@Bean
		public AccessDeniedHandler accessDeniedHandler(){
		    return new CustomAccessDeniedHandler();
		}
		
	}


}
