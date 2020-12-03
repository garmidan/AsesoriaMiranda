import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Marca } from 'src/app/models/Marca';
import { Movimiento } from 'src/app/models/Movimiento';
import { Rol } from 'src/app/models/Rol';
import { Tipo } from 'src/app/models/Tipo';
import { TipoMovimiento } from 'src/app/models/TipoMovimiento';
import { Producto } from 'src/app/models/Producto';
import { Usuario } from 'src/app/models/Usuario';
import { UsuarioService } from 'src/app/services/usuario.service';
import swal from 'sweetalert2';
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
    this.producto, this.userDatos, this.tipoMovimiento);
  listaPorductosSeleccionados:Movimiento[] = [];
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
            this.userService.datosUsuario(this.recuperarToken).subscribe(
              response => {
                this.userDatos = response;
                this.userService.gettipomovimiento(this.recuperarToken).subscribe(
                  response => {
                    this.datosTipoMovimiento = response;
                    console.log(this.datosTipoMovimiento);
                  }
                );
              }
            );
          }
        }
      }
    );
  }

  getMovimientosEntrada(){
    this.userService.getMovimientosEntrada(this.recuperarToken,3).subscribe(
      response=>{
        this.datosMovimientos = response;
        console.log(this.datosMovimientos);
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

  finalizar(){
    this.userService.registermovimientosalida(this.listaPorductosSeleccionados,this.recuperarToken).subscribe(
      response=>{
        if (response >=1) {
          swal.fire('Informacion !!', 'Se finalizo correctamente!', 'success');
          this.getMovimientosEntrada();
          $("#productosseleccionados").hide();
        } else {
          swal.fire('Informacion !!', 'Problemas al finalizar el proceso!', 'warning');
        }
      });
  }


}
