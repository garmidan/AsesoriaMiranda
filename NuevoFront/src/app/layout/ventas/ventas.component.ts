import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Marca } from '../../models/Marca';
import { Movimiento } from '../../models/Movimiento';
import { Rol } from '../../models/Rol';
import { Tipo } from '../../models/Tipo';
import { TipoMovimiento } from '../../models/TipoMovimiento';
import { Producto } from '../../models/Producto';
import { Usuario } from '../../models/Usuario';
import { UsuarioService } from '../../services/usuario.service';
import swal from 'sweetalert2';
import { Departamento } from '../../models/Departamento';
import { Municipio } from '../../models/Municipio';
import { TipoCliente } from '../../models/TipoCliente';
import { Cliente } from '../../models/Cliente';
import { TipoPago } from '../../models/TipoPago';
import { Factura } from '../../models/Factura';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-ventas',
  templateUrl: './ventas.component.html',
  styleUrls: ['./ventas.component.css']
})
export class VentasComponent implements OnInit {

  datosMovimientos: Movimiento[];
  datosVenta = [];
  recuperarToken: string = "";
  rol: Rol = new Rol(0, "");
  userDatos: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
  datosTipoMovimiento: TipoMovimiento[];
  tipoMovimiento: TipoMovimiento = new TipoMovimiento(0, "", "");
  marca: Marca = new Marca(0, "");
  seleccionmovimimiento: number = 0;
  cantidad:number;
  suma:number = 0;
  tipo: Tipo = new Tipo(0, "");
  producto: Producto = new Producto(0, 0, "", "", this.marca, this.tipo)
  productSeleccionado: Movimiento = new Movimiento(0, 0, new Date, 0, "N/A", "",
    this.producto, this.userDatos, this.tipoMovimiento,new Factura(0,""),"",new TipoPago(0,""),"");
  listaPorductosSeleccionados:Movimiento[] = [];
  cedula:string = "";
  departamento: Departamento = new Departamento(0,"","");
  municipio: Municipio = new Municipio(0,"","",this.departamento);
  tipoCliente: TipoCliente = new TipoCliente(0,"");
  datosCliente: Cliente = new Cliente(0,"","","","","","",this.tipoCliente,this.municipio);
  registerCliente: Cliente = new Cliente(0,"","","","","","",this.tipoCliente,this.municipio);
  datosTipoPago: TipoPago = new TipoPago(0,"");
  datTipoPago: TipoPago = new TipoPago(0,"");
  datosTipoCliente: TipoCliente = new TipoCliente(0,"");
  datosMunicipio: Municipio = new Municipio(0,"","",new Departamento(0,"",""));
  selecTipoPago: number = 0;
  numeroCuota: string = "";
  valorMensualSinNada: number = 0;
  total: number = 0;
  valorInteres:number = 0;
  interes:number = 1.2;
  subtotal: number = 0;
  constructor(private router: Router, private userService: UsuarioService) { }
  ngOnInit(): void {
    this.tokenAcceso();
  }

  

  tokenAcceso() {
    this.userService.recuperarToken().subscribe(
      response => {
        for (const key in response) {
          if (Object.prototype.hasOwnProperty.call(response, key)) {
            const element = response[key];
            this.recuperarToken = element;
            this.getMovimientosEntrada();
            this.getTipoPago();
            this.getTipoCliente();
            this.getMunicipio();
            this.userService.datosUsuario(this.recuperarToken).subscribe(
              response => {
                this.userDatos = response;
                this.userService.gettipomovimiento(this.recuperarToken).subscribe(
                  response => {
                    this.datosTipoMovimiento = response;
                  }
                );
              }
            );
          }
        }
      }
    );
  }

  getTipoPago(){
    this.userService.getTipoPago(this.recuperarToken).subscribe(
      response=>{
        this.datosTipoPago = response;
      }
    )
  }

  getMunicipio(){
    this.userService.getMunicipio(this.recuperarToken).subscribe(
      response=>{
        this.datosMunicipio = response;
      }
    )
  }

  getTipoCliente(){
    this.userService.getTipoCliente(this.recuperarToken).subscribe(
      response=>{
        this.datosTipoCliente = response;
      }
    )
  }

  getMovimientosEntrada(){
    this.userService.getMovimientosEntrada(this.recuperarToken,3).subscribe(
      response=>{
        this.datosMovimientos = response;
      }
    )
  }

  venta(datoseleccionadosMovimiento:Movimiento){
    this.productSeleccionado = datoseleccionadosMovimiento;
    console.log(this.productSeleccionado.producto.descripcion);
  }

  cantidadSeleccionada(){
    this.cantidad = $('#cantidad').val();
    if (this.cantidad > this.productSeleccionado.producto.cantidad) {
      swal.fire('Informacion !!', 'La cantidad solicitada no esta disponible!', 'warning');
    } else {
      var validar = 0;
      $('#productosseleccionados').show('slide');
      if (this.listaPorductosSeleccionados.length >=1) {
        this.listaPorductosSeleccionados.forEach(element => {
          if (this.productSeleccionado.idmovimiento === element.idmovimiento) {
            this.suma = Number(element.cantidad) + Number(this.cantidad);
            if (this.suma < this.productSeleccionado.producto.cantidad) {
              element.cantidad = this.suma;
            } else {
              swal.fire('Informacion !!', 'La cantidad solicitada no esta disponible!', 'warning');
            }
            validar = 1;
          } 
        });
        if (validar == 0) {
          validar = 1;
          this.productSeleccionado.cantidad = this.cantidad;
          this.productSeleccionado.preciosalida = this.productSeleccionado.precioentrada;
          this.productSeleccionado.observacion= "Venta de producto";
          this.listaPorductosSeleccionados.push(this.productSeleccionado);
          this.cantidad = 0;
        } 
      } else {
        this.productSeleccionado.preciosalida = this.productSeleccionado.precioentrada;
        this.productSeleccionado.cantidad = this.cantidad;
        this.productSeleccionado.observacion= "Venta de producto";
        this.listaPorductosSeleccionados.push(this.productSeleccionado);
        this.cantidad = 0;
      }
    }
  }

  finalizar(event){
    event.preventDefault();
    this.userService.registrarClienteMovimiento(this.registerCliente,this.recuperarToken).subscribe(
      response=>{
        if (response >=1) {
          if (this.datosCliente.nitocedula === "") {
            this.productSeleccionado.cliente = this.cedula;
          } else {
            this.productSeleccionado.cliente = this.datosCliente.nitocedula;
          }
          this.datTipoPago.idtipopago = this.selecTipoPago;
          this.productSeleccionado.idtipopago = this.datTipoPago;
          this.productSeleccionado.cuotas = this.numeroCuota;
          this.userService.registermovimientosalida(this.listaPorductosSeleccionados,this.recuperarToken).subscribe(
            response=>{
              if (response >=1) {
                swal.fire('Informacion !!', 'Se finalizo correctamente!', 'success');
                this.getMovimientosEntrada();
                $("#productosseleccionados").modal('hide');
              } else {
                swal.fire('Informacion !!', 'Problemas al finalizar el proceso!', 'warning');
              }
            });
        } else {
          swal.fire('Informacion !!', 'Problemas al finalizar el proceso!', 'warning');
        }
      });
  }

  validarCedula(){
    this.cedula = $("#cedul").val();
    if (this.cedula.length >= 6 && this.cedula.length <= 15) {
      $("#validar").hide();
      $("#tipPago").prop('disabled', false);
      this.userService.getvalidarCedulaoNit(this.recuperarToken,this.cedula).subscribe(
        response=>{
          if (response === null) {
            $("#siexiste").hide();
            $("#noexiste").show();
          } else {
            this.datosCliente = response;
            $("#siexiste").show();
            $("#noexiste").hide();
            $("#nomexiste").prop('disabled', true);
            $("#celuexiste").prop('disabled', true);
            $("#direexiste").prop('disabled', true);
            $("#munexiste").prop('disabled', true);
            console.log("Si existe");
          }
        });
    } else {
      $("#pagarMensual").hide();
      $("#formCredito").hide();
      $("#validar").show();
      $("#noexiste").hide();
      $("#siexiste").hide();
      $("#tipPago").prop('disabled', true);
    }
    
  }

  tipoPago(){
    this.selecTipoPago = $("#tipPago").val();
    if (this.selecTipoPago == 1) {
      $("#formCredito").show();
      this.listaPorductosSeleccionados.forEach(element => {
        this.subtotal = Number(element.cantidad) * Number(element.precioentrada)
        this.total = Number(this.total) + Number(this.subtotal) 
        this.total = Math.round(this.total);
      });
    }else{
      $("#formCredito").hide();
    }
  }

  numeroCuotas(){
    this.numeroCuota = $("#numCuotas").val();
    if (this.numeroCuota != "") {
    this.valorMensualSinNada = Number(this.total) / Number(this.numeroCuota);
    this.valorInteres = Number(this.total) * Number(this.interes) / 100;
    this.valorMensualSinNada = Number(this.valorMensualSinNada) + Number(this.valorInteres);
    this.valorMensualSinNada = Math.round(this.valorMensualSinNada);
    $("#pagarMensual").show();
    } else {
      $("#pagarMensual").hide();
    }
  }

}
