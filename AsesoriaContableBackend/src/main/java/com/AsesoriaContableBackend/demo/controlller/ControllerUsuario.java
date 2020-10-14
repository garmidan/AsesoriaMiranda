package com.AsesoriaContableBackend.demo.controlller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.io.FileUtils;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties.Lettuce.Cluster.Refresh;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import com.AsesoriaContableBackend.demo.clases.Cliente;
import com.AsesoriaContableBackend.demo.dao.RolDao;
import com.AsesoriaContableBackend.demo.dao.UsuarioDao;
import com.AsesoriaContableBackend.demo.email.EmailServiceImpl;
import com.AsesoriaContableBackend.demo.entity.RolEntity;
import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;
import com.AsesoriaContableBackend.demo.step.Procesor;
import com.AsesoriaContableBackend.demo.step.Reader;
import com.AsesoriaContableBackend.demo.step.Writer;

@RestController
@RequestMapping("/")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT,
		RequestMethod.DELETE })
public class ControllerUsuario {

	@Autowired
	UsuarioDao usuarioDao;
	
	@Autowired
	RolDao rolDao;
	
	@Autowired
	JobLauncher jobLauncher;
	
	private String archivoFile = "";
	
	private int salida = 0;

	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	JobBuilderFactory jobBuilderFactory;

	@Autowired
	StepBuilderFactory stepBuilderFactory;
	
	@Autowired 
	Reader reader;
	@Autowired 
	Writer writer;
	@Autowired 
	Procesor procesor;
	
	@Value("archivoFileNombre")
	private String archivoFileNombre;

	
	@Autowired
	DataSource dataSource;
	

	public ControllerUsuario(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@GetMapping("listaUsuarios")
	public ResponseEntity<List<UsuarioEntity>> listaUsuarios() {
		return new ResponseEntity<List<UsuarioEntity>>(usuarioDao.findAll(), HttpStatus.OK);
	}

	@GetMapping("login/{usuarioOcorreo}/{clave}")
	public UsuarioEntity login(@PathVariable String usuarioOcorreo, @PathVariable String clave) {
		UsuarioEntity userLog = usuarioDao.login(usuarioOcorreo, usuarioOcorreo);
		if (userLog != null) {
			if (encoder.matches(clave, userLog.getClave())) {
			} else {
				userLog = null;
			}
		}
		return userLog;
	
	}

	@PostMapping("register")
	public int registerUsuario(@RequestBody UsuarioEntity usuario) {
		int salida = 0;
		try {
			String clave = "" + (int) (Math.random() * 10000);
			String numerouser = "" + (int) (Math.random() * 100);
			String contraseñaEncriptada = encoder.encode(clave);
			usuario.setClave(contraseñaEncriptada);
			usuario.setRecupcontraseña(Long.valueOf(1));
			String usuari = usuario.getNombres().substring(0,3) + usuario.getApellidos().substring(0,3) +numerouser;
			usuario.setUsuario(usuari.toLowerCase());
			usuarioDao.save(usuario);
			EmailServiceImpl bienvenida = new EmailServiceImpl();
			bienvenida.sendBienvenido(usuario.getCorreo(), usuario.getNombres(), usuario.getUsuario(), clave);
			salida = 1;
		} catch (Exception e) {
			salida = 0;
		}
		return salida;
	}
	
	@PostMapping("registerRol")
	public int registerRol(@RequestBody RolEntity rol) {
		int salida = 0;
		try {
			rolDao.save(rol);
			salida = 1;
		} catch (Exception e) {
			System.out.println("No se pudo registrar el rol");
		}
		return salida;
	}
	
	@GetMapping("listaroles")
	public List<RolEntity> listaroles(){
		return rolDao.findAll();
	}

	@GetMapping("recuperarcontraseña/{correoOusuario}")
	public int recuperacontraseña(@PathVariable String correoOusuario) {
		int salida = 0;
		UsuarioEntity usuarioRecupContraseña = null;
		try {
			usuarioRecupContraseña = usuarioDao.login(correoOusuario, correoOusuario);
			if (usuarioRecupContraseña != null) {
				String nuevaClave = "" + (int) (Math.random() * 1000000);
				EmailServiceImpl emailService = new EmailServiceImpl();
				emailService.sendClaves(usuarioRecupContraseña.getCorreo(), usuarioRecupContraseña.getNombres(),
						"garmidan16@gmail.com", nuevaClave);
				String contraseñaEncriptadaRecuperar = encoder.encode(nuevaClave);
				usuarioDao.editContraseña(contraseñaEncriptadaRecuperar, Long.valueOf(1),
						usuarioRecupContraseña.getIdusuario());
				salida = 1;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return salida;
	}
	
	@GetMapping("cambiocontraseña/{contraseña}/{recupcontraseña}/{idusuario}")
	public void cambiarContraseña(@PathVariable String contraseña, @PathVariable Long recupcontraseña,
			@PathVariable Long idusuario) {
		try {
			String contraseñaEncriptada = encoder.encode(contraseña);
			usuarioDao.editContraseña(contraseñaEncriptada, recupcontraseña, idusuario);
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	@PostMapping("importArchivo")
	public int importArchivo(@RequestPart("file") MultipartFile file) throws IOException {
		try {
			if (!file.isEmpty()) {
				File archivo = new File("src/main/resources/ImportExcel/");
				if (archivo.exists()) {
					byte[] bytes = file.getBytes();
					archivoFile = file.getOriginalFilename();
					File validarArchivo = new File(archivo.getAbsolutePath()+"/"+archivoFile);
					if (validarArchivo.exists() || archivoFile.equalsIgnoreCase("name.xls")) {
						salida = 2;
					} else {
						Path path = Paths.get(archivo.getAbsolutePath(), archivoFile);
						Files.write(path, bytes);
						JobParameters jobParameters = new JobParametersBuilder().addLong("time", System.currentTimeMillis())
								.addString("nombrearchivito", file.getOriginalFilename()).toJobParameters();
						JobExecution jobExecution = jobLauncher.run(importJob(jobParameters.getString("nombrearchivito")), jobParameters);
						System.out.println(jobExecution.getStatus());
						salida = 1;
					}
					
				}
//			

			}
		} catch (Exception e) {
			System.out.println("error al registrar el archivo");
			salida = 0;
		}

		return salida;
	}
	

	@GetMapping("validarArchivo")
	public int validarArchivo() {
		return salida;
	}

	// Comienzo de proceso batch import
	
	
	@Autowired
	@Bean
	public Job importJob(@Value("url") String archivo) throws Exception {
		archivoFileNombre = archivo;
		return jobBuilderFactory.get("processJob")
				.incrementer(new RunIdIncrementer())
				.flow(stepImport()).end().build();
	}
	
	@Autowired
	@Bean
	public Step stepImport() throws Exception {
		return stepBuilderFactory.get("step").<Cliente, Cliente>chunk(1200)
				.reader(reader.reader(archivoFileNombre))
				.processor(procesor)
				.writer(writer.csvFileDatabaseItemWriter(dataSource)).build();
	}
	

	// Termino de proceso batch import
	
	
	@PostMapping("exporArchivo")
	public String exporArchivo() throws IOException {
		try {
			File copied = new File(
				      "src/main/resources/Plantilla/Name.xls");
			if (copied.exists()) {
				File original = new File(System.getProperty("user.home") + "/downloads");
				if (original.exists()) {
					FileUtils.copyFileToDirectory(copied, original);
				} else {
					System.out.println("Papi no encontro la segunda ruta");
				}
				
			}else {
				System.out.println("Papi no encontro la primera ruta");
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return archivoFile;
	}
	
	
	
}
