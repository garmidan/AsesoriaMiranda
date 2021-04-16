import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { UsuarioService } from '../../services/usuario.service';
import { TipoMovimiento } from '../../models/TipoMovimiento';
import { Marca } from '../../models/Marca';
import { Tipo } from '../../models/Tipo';
import { Movimiento } from '../../models/Movimiento';
import { Producto } from '../../models/Producto';
import { Usuario } from '../../models/Usuario';
import { Rol } from '../../models/Rol';
import swal from 'sweetalert2';
import { NgModel } from '@angular/forms';
import { Factura } from '../../models/Factura';
import { TipoPago } from '../../models/TipoPago';
import {jsPDF} from 'jspdf';
import autoTable from 'jspdf-autotable';
declare var jQuery: any;
declare var $: any;

@Component({
  selector: 'app-servicios',
  templateUrl: './servicios.component.html',
  styleUrls: ['./servicios.component.css']
})
export class ServiciosComponent implements OnInit {
  @ViewChild('table') content: ElementRef;
  dataTable: any;
  datosTipoMovimiento: TipoMovimiento[];
  datosMovimientos: Movimiento[];
  tipoMovimiento: TipoMovimiento = new TipoMovimiento(0, "", "");
  datosMarca: Marca[];

  datosProductos: Producto[];
  datosTipo: Tipo[];
  codigo: string = "";
  rol: Rol = new Rol(0, "");
  userDatos: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
  recuperarToken: string = "";
  marca: Marca = new Marca(0, "");
  seleccionmovimimiento: number = 0;
  tipo: Tipo = new Tipo(0, "");
  producto: Producto = new Producto(0, 0, "", "", this.marca, this.tipo)
  datosValidarCodigo: Producto = new Producto(0, 0, "", "", this.marca, this.tipo)
  registrarmovimiento: Movimiento = new Movimiento(0, 0, new Date, 0, "N/A", "",
    this.producto, this.userDatos, this.tipoMovimiento, new Factura(0, ""), "", new TipoPago(0, ""), "");
  constructor(private router: Router, private userService: UsuarioService) { }

  ngOnInit(): void {
    this.tokenAcceso();
    setTimeout(function () {
      $(function () {
        $(document).ready(function () {
          $('#tableServicios').DataTable();
        });
      });
    }, 200);
    this.idiomadatables();
  }

  datables() {
    setTimeout(function () {
      $(function () {
        $(document).ready(function () {
          $('#tableServicios').DataTable();
        });
      });
    }, 200);
  }

  idiomadatables() {
    setTimeout(function () {
      $('#tableServicios').DataTable({
        "language": {
          "sProcessing": "Procesando...",
          "sLengthMenu": "Mostrar _MENU_ registros",
          "sZeroRecords": "No se encontraron resultados",
          "sEmptyTable": "Ningún dato disponible en esta tabla",
          "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
          "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
          "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
          "sInfoPostFix": "",
          "sSearch": "Buscar:",
          "sUrl": "",
          "sInfoThousands": ",",
          "sLoadingRecords": "Cargando...",
          "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "Siguiente",
            "sPrevious": "Anterior"
          },
          "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
          }
        }
      });
    }, 200);
  }

  tokenAcceso() {
    this.userService.recuperarToken().subscribe(
      response => {
        for (const key in response) {
          if (Object.prototype.hasOwnProperty.call(response, key)) {
            const element = response[key];
            this.recuperarToken = element;
            this.getmarcaygettipo();
            this.getmovimientos();
            this.getproductos();
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

  getmarcaygettipo() {
    this.userService.getmarca(this.recuperarToken).subscribe(
      response => {
        this.datosMarca = response;
        this.userService.gettipo(this.recuperarToken).subscribe(
          response => {
            this.datosTipo = response;
          }
        )
      }
    )
  }

  servicio(tipo: string, idtipo: number) {
    this.seleccionmovimimiento = idtipo;
    if (tipo == "Entrada") {
      $("#compra").show();
    }
  }

  getmovimientos() {
    this.userService.getmovimiento(this.recuperarToken).subscribe(
      response => {
        this.datosMovimientos = response;
      }
    )
  }

  nuevaMarcaYoTipo() {
    console.log(this.registrarmovimiento.producto.tipo.idtipo);
    console.log(this.registrarmovimiento.producto.marca.idmarca);
    if (this.registrarmovimiento.producto.tipo.idtipo == 7089078790676) {
      $("#tip").show();
      $("#tipi").hide();
      if (this.registrarmovimiento.producto.marca.idmarca == 7089078790676) {
        $("#mar").show();
        $("#marcas").hide();
      }
    } else {
      if (this.registrarmovimiento.producto.marca.idmarca == 7089078790676) {
        $("#mar").show();
        $("#marcas").hide();
      }
    }

  }

  registermovimientoentrada(event) {
    event.preventDefault();
    this.registrarmovimiento.tipomovimiento.idtipomovimiento = this.seleccionmovimimiento;
    this.registrarmovimiento.usuario = this.userDatos;
    this.registrarmovimiento.cantidad = this.registrarmovimiento.producto.cantidad;
    console.log(this.registrarmovimiento);
    if (this.registrarmovimiento.usuario.idusuario >= 1) {
      this.userService.registermovimientoentrada(this.registrarmovimiento, this.recuperarToken).subscribe(
        response => {
          if (response >= 1) {
            swal.fire('Informacion !!', 'Peticion Exitosa', 'success');
            this.getmovimientos();
          } else {
            swal.fire('Informacion !!', 'Complete los campos', 'warning');
          }

        }, error => {
          console.error("Transacion fallida");
        }
      )
    } else {
      swal.fire('Informacion !!', 'Completa los campos Malárido', 'warning');
    }
  }

  getproductos() {
    this.userService.getproductos(this.recuperarToken).subscribe(
      response => {
        this.datosProductos = response;
      }
    )
  }

  validarCodigo() {
    this.codigo = $("#codigo").val();
    this.userService.validarCodigoExistente(this.recuperarToken, this.codigo).subscribe(
      response => {
        if (response != null) {
          this.datosValidarCodigo = response;
          $("#marcas").hide();
          $("#tipi").hide();
          $("#tipexiste").show();
          $("#marcaexiste").show();
          $("#marcaexisteinput").prop('disabled', true);
          $("#tipexisteinput").prop('disabled', true);
        } else {
          $("#marcas").show();
          $("#tipi").show();
          $("#tipexiste").hide();
          $("#marcaexiste").hide();
          $("#marcaexisteinput").prop('disabled', false);
          $("#tipexisteinput").prop('disabled', false);
        }
      }
    )
  }
}
