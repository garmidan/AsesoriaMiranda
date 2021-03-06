package com.AsesoriaContableBackend.demo.controlller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import javax.sql.DataSource;

import org.apache.commons.io.FileUtils;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
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
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
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
import org.springframework.web.server.ResponseStatusException;

import com.AsesoriaContableBackend.demo.clases.Cliente;
import com.AsesoriaContableBackend.demo.clases.Inicio;
import com.AsesoriaContableBackend.demo.dao.ClienteDao;
import com.AsesoriaContableBackend.demo.dao.FacturaDao;
import com.AsesoriaContableBackend.demo.dao.MarcaDao;
import com.AsesoriaContableBackend.demo.dao.MovimientoDao;
import com.AsesoriaContableBackend.demo.dao.MunicipioRepository;
import com.AsesoriaContableBackend.demo.dao.ProductoDao;
import com.AsesoriaContableBackend.demo.dao.RolDao;
import com.AsesoriaContableBackend.demo.dao.TipoClienteDao;
import com.AsesoriaContableBackend.demo.dao.TipoDao;
import com.AsesoriaContableBackend.demo.dao.TipoMovimientoDao;
import com.AsesoriaContableBackend.demo.dao.TipoPagoDao;
import com.AsesoriaContableBackend.demo.dao.UsuarioDao;
import com.AsesoriaContableBackend.demo.email.EmailServiceImpl;
import com.AsesoriaContableBackend.demo.entity.ClienteEntity;
import com.AsesoriaContableBackend.demo.entity.DepartamentoEntity;
import com.AsesoriaContableBackend.demo.entity.FacturaEntity;
import com.AsesoriaContableBackend.demo.entity.MarcaEntity;
import com.AsesoriaContableBackend.demo.entity.MovimientoEntity;
import com.AsesoriaContableBackend.demo.entity.MunicipioEntity;
import com.AsesoriaContableBackend.demo.entity.ProductoEntity;
import com.AsesoriaContableBackend.demo.entity.RolEntity;
import com.AsesoriaContableBackend.demo.entity.TipoClienteEntity;
import com.AsesoriaContableBackend.demo.entity.TipoEntity;
import com.AsesoriaContableBackend.demo.entity.TipoMovimientoEntity;
import com.AsesoriaContableBackend.demo.entity.TipoPagoEntity;
import com.AsesoriaContableBackend.demo.entity.UsuarioEntity;
import com.AsesoriaContableBackend.demo.manejoerrores.ActorNotFoundException;
import com.AsesoriaContableBackend.demo.step.Procesor;
import com.AsesoriaContableBackend.demo.step.Reader;
import com.AsesoriaContableBackend.demo.step.Writer;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

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
	TipoMovimientoDao tipoMovimientoDao;
	
	@Autowired
	MovimientoDao movimientoDao;
	
	@Autowired
	ProductoDao productoDao;
	
	@Autowired
	ClienteDao clienteDao;
	
	@Autowired
	TipoDao tipoDao;
	
	@Autowired
	MarcaDao marcaDao;
	
	@Autowired
	MunicipioRepository municipioRepository;
	
	@Autowired
	TipoClienteDao tipoClienteDao;
	
	@Autowired
	TipoPagoDao tipoPagoDao;
	
	@Autowired
	FacturaDao facturaDao;
	
	@Autowired
	JobLauncher jobLauncher;
		
	private String archivoFile = "";
	
	private int salida = 0;
	
	private UsuarioEntity recuperDatos = new UsuarioEntity();
	
	private String recuperarToken = null;

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

	@GetMapping("accessDenied")
	public ResponseEntity<String> accessDenied(){
		String mensaje = "Acceso denegado";
		return new ResponseEntity<String>(mensaje, HttpStatus.OK);
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
						usuarioRecupContraseña.getCorreo(), nuevaClave);
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
			@PathVariable Long idusuario){
		try {
			String contraseñaEncriptada = encoder.encode(contraseña);
			usuarioDao.editContraseña(contraseñaEncriptada, recupcontraseña, idusuario);
	    } catch (ActorNotFoundException ex) {
	    	 throw new ResponseStatusException(
	    	          HttpStatus.NOT_FOUND, "Actor Not Found", ex);
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
	public Job importJob(@Value("url") String archivo) throws Exception {
		archivoFileNombre = archivo;
		return jobBuilderFactory.get("processJob")
				.incrementer(new RunIdIncrementer())
				.flow(stepImport()).end().build();
	}
	
	@Autowired
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
	
	
//	Parte token validar sesion
	@PostMapping("login")
	public ResponseEntity<UsuarioEntity> login(@RequestBody Inicio sesion) {
		UsuarioEntity userLog = usuarioDao.login(sesion.getUsername(), sesion.getUsername());
		HttpHeaders responseHeaders = new HttpHeaders();
		if (userLog != null) {
			if (encoder.matches(sesion.getClave(), userLog.getClave())) {
				recuperDatos = userLog;
				String token = getJWTToken(sesion.getUsername());
				recuperarToken =token;
			    responseHeaders.set("Authorization", 
			      token);
			} else {
				userLog = new UsuarioEntity();
			}
		}else {
			userLog = new UsuarioEntity();
		}
		return ResponseEntity.ok()
			      .body(userLog);
	
	}

	@GetMapping("datosUsuario")
	public ResponseEntity<UsuarioEntity> datosUsuario(){
		return new ResponseEntity<UsuarioEntity>(recuperDatos, HttpStatus.OK);
	}
	
	private String getJWTToken(String username) {
		String secretKey = "1234";
		List<GrantedAuthority> grantedAuthorities = AuthorityUtils
				.commaSeparatedStringToAuthorityList("ROLE_USER");
		
		String token = Jwts
				.builder()
				.setId("softtekJWT")
				.setSubject(username)
				.claim("authorities",
						grantedAuthorities.stream()
								.map(GrantedAuthority::getAuthority)
								.collect(Collectors.toList()))
				.setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis() + 600000))
				.signWith(SignatureAlgorithm.HS512,
						secretKey.getBytes()).compact();

		return "Bearer " + token;
	}
	
	@GetMapping("recuperDatos")
	public ResponseEntity<String> recuperarToken() throws JSONException{
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("token", recuperarToken);
		return ResponseEntity.ok()
			      .body(jsonObject.toString());
	}
	
//	Movimiento entrada y salida
	
	@GetMapping("gettipomovimiento")
	public ResponseEntity<List<TipoMovimientoEntity>> getTipoMovimiento(){
		return new ResponseEntity<List<TipoMovimientoEntity>>(tipoMovimientoDao.findAll(), HttpStatus.OK);
	}
	
	//Parte de registro movimientos
	
	@PostMapping("registermovimientoentrada")
	public int registerproductoentrada(@RequestBody MovimientoEntity movimientoEntity){
		int salida = 0;
		try {
			MarcaEntity mar = new MarcaEntity();
			TipoEntity tip = new TipoEntity();
			TipoPagoEntity tipoPagoEntity = new TipoPagoEntity();
			FacturaEntity facturaEntity = new FacturaEntity();
			if (movimientoEntity.getProducto().getMarca().getNombre() != "") {
				mar.setIdmarca(Long.valueOf(0));
				mar.setNombre(movimientoEntity.getProducto().getMarca().getNombre());
				marcaDao.save(mar);
			}
			if (movimientoEntity.getProducto().getTipo().getNombre() != "") {
				tip.setIdtipo(Long.valueOf(0));
				tip.setNombre(movimientoEntity.getProducto().getTipo().getNombre());
				tipoDao.save(tip);
			}
			ProductoEntity pro = new ProductoEntity();
			pro.setCantidad(movimientoEntity.getProducto().getCantidad());
			pro.setCodigo(movimientoEntity.getProducto().getCodigo());
			pro.setDescripcion(movimientoEntity.getProducto().getDescripcion());
			pro.setIdproducto(movimientoEntity.getProducto().getIdproducto());
			pro.setTipo(movimientoEntity.getProducto().getTipo());
			pro.setMarca(movimientoEntity.getProducto().getMarca());
			tipoPagoEntity.setIdtipopago(3);
			movimientoEntity.setIdtipopago(tipoPagoEntity);
			facturaEntity.setIdfactura(Long.valueOf(13));
			movimientoEntity.setIdfactura(facturaEntity);
			movimientoEntity.setCliente("N/A");
			movimientoEntity.setCuotas("N/A");
			if (mar.getNombre() != "" && mar.getNombre() != null) {
				mar = marcaDao.ultimo();
				pro.setMarca(mar);
				
			}
			if (tip.getNombre() != "" && tip.getNombre() != null) {
				tip = tipoDao.ultimo();
				pro.setTipo(tip);
			}
			movimientoEntity.setProducto(pro);
			ProductoEntity validarCodigoUnico = productoDao.obtenerProducto(movimientoEntity.getProducto().getCodigo());
			if (validarCodigoUnico == null || validarCodigoUnico.getIdproducto() <=0) {
				productoDao.save(movimientoEntity.getProducto());
				ProductoEntity obtenerProducto = productoDao.obtenerProducto(movimientoEntity.getProducto().getCodigo());
				movimientoEntity.setProducto(obtenerProducto);
				System.out.println(movimientoEntity);
				movimientoDao.save(movimientoEntity);
				salida = 1;
			} else {
				Long sumaCant = validarCodigoUnico.getCantidad() + movimientoEntity.getCantidad();
				movimientoEntity.setProducto(validarCodigoUnico);
				productoDao.editCantidad(String.valueOf(sumaCant), validarCodigoUnico.getIdproducto());
				System.out.println(movimientoEntity);
				movimientoDao.save(movimientoEntity);
				salida = 1;
			}
			
		} catch (Exception e) {
			System.out.println("Error");
		}
		return salida;
	}
	
	@PostMapping("registrosMovimientosSalida")
	public int registrosMovimientosSalida(@RequestBody List<MovimientoEntity> listMovimientos) {
		int salida = 0;
		String codigoFactura = "" + (int) (Math.random() * 100000000);
		FacturaEntity factEntity = new FacturaEntity();
		factEntity.setCodigo(codigoFactura);
		facturaDao.save(factEntity);
		FacturaEntity factUltimo = facturaDao.ultimo();
		for (MovimientoEntity movimientoEntity : listMovimientos) {
			TipoMovimientoEntity tipoMovimientoEntity = new TipoMovimientoEntity();
			tipoMovimientoEntity.setIdtipomovimiento(Long.valueOf(4));
			movimientoEntity.setIdmovimiento(Long.valueOf(0));
			movimientoEntity.setTipomovimiento(tipoMovimientoEntity);
			movimientoEntity.setIdfactura(factUltimo);
			Long resta = movimientoEntity.getProducto().getCantidad() - movimientoEntity.getCantidad();
			productoDao.editCantidad(String.valueOf(resta), movimientoEntity.getProducto().getIdproducto());
			movimientoDao.save(movimientoEntity);
			salida = 1;
		}
		return salida;
	}
	
	@PostMapping("registrarClienteMovimiento")
	public int registrarClienteMovimiento(@RequestBody ClienteEntity clienteEntity) {
		clienteDao.save(clienteEntity);
		int salida = 1;
		return salida;
	}
	
	@GetMapping("getproductos")
	public ResponseEntity<List<ProductoEntity>> getproductos(){
		return new ResponseEntity<List<ProductoEntity>>(productoDao.findAll(), HttpStatus.OK);
	}
	
	@GetMapping("getmovimientos") 
	public ResponseEntity<List<MovimientoEntity>> getmovimientos(){
		return new ResponseEntity<List<MovimientoEntity>>(movimientoDao.findAll(), HttpStatus.OK);
	}
	
	@GetMapping("getMovimientosEntrada/{idtipomovimiento}")
	public List<MovimientoEntity> getMovimientosEntrada(@PathVariable Long idtipomovimiento){
		List<MovimientoEntity> listaSalida = new ArrayList<MovimientoEntity>();
		List<MovimientoEntity> listaRep = new ArrayList<MovimientoEntity>();
		Long idTipMovimiento = idtipomovimiento;
		for (MovimientoEntity datos : movimientoDao.listaId(idTipMovimiento)) {
			if (listaSalida.isEmpty() && listaRep.isEmpty()) {
				listaRep.add(datos);
				listaSalida.add(datos);
			} else {
				for (MovimientoEntity datos2 : listaRep) {
					if (!datos2.getProducto().getCodigo().equals(datos.getProducto().getCodigo())) {
						listaSalida.add(datos);
					}
				}
			}
		}
		return listaSalida;
	}

	@GetMapping("gettipo") 
	public ResponseEntity<List<TipoEntity>> gettipo(){
		return new ResponseEntity<List<TipoEntity>>(tipoDao.findAll(), HttpStatus.OK);
	}
	
	@GetMapping("getmarca") 
	public ResponseEntity<List<MarcaEntity>> getmarca(){
		return new ResponseEntity<List<MarcaEntity>>(marcaDao.findAll(), HttpStatus.OK);
	}
	
	@GetMapping("validarCodigoExistente/{codigo}")
	public ResponseEntity<ProductoEntity> validarCodigoExistente(@PathVariable String codigo){
		ProductoEntity datos = productoDao.obtenerProducto(codigo);
		return new ResponseEntity<ProductoEntity>(datos, HttpStatus.OK);
	}
	
	@GetMapping("getCliente/{cedulaonit}")
	public ResponseEntity<ClienteEntity> getCliente(@PathVariable String cedulaonit){
		ClienteEntity clienteEntity = clienteDao.obtenerCliente(cedulaonit);
		return new ResponseEntity<ClienteEntity>(clienteEntity, HttpStatus.OK);
	}
	
	@GetMapping("getMunicipio")
	public ResponseEntity<List<MunicipioEntity>> getMunicipio(){
		List<MunicipioEntity> municipioEntity = municipioRepository.findAll();
		return new ResponseEntity<List<MunicipioEntity>>(municipioEntity, HttpStatus.OK);
	}
	
	@GetMapping("getTipoCliente")
	public ResponseEntity<List<TipoClienteEntity>> getTipoCliente(){
		List<TipoClienteEntity> tipoList = tipoClienteDao.findAll();
		return new ResponseEntity<List<TipoClienteEntity>>(tipoList, HttpStatus.OK);
	}
	
	@GetMapping("getTipoPago")
	public ResponseEntity<List<TipoPagoEntity>> getTipoPago(){
		List<TipoPagoEntity> tipoList = tipoPagoDao.findAll();
		return new ResponseEntity<List<TipoPagoEntity>>(tipoList, HttpStatus.OK);
	}
	
	@GetMapping("getFactura")
	public ResponseEntity<List<FacturaEntity>> getFactura(){
		List<FacturaEntity> facturaList = facturaDao.findAllFactura();
		return new ResponseEntity<List<FacturaEntity>>(facturaList, HttpStatus.OK);
	}
	
	@GetMapping("getFacturaID/{codigo}")
	public ResponseEntity<List<MovimientoEntity>> getFacturaID(@PathVariable Long codigo){
		List<MovimientoEntity> movimientoEntity = movimientoDao.movimientoID(codigo);
		return new ResponseEntity<List<MovimientoEntity>>(movimientoEntity, HttpStatus.OK);
	}
}
