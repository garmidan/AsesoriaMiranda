import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { jsPDF } from 'jspdf';
import autoTable from 'jspdf-autotable';
import { Movimiento } from '../../models/Movimiento';
import { Factura } from '../../models/Factura';
import { UsuarioService } from '../../services/usuario.service';
import { style } from '@angular/animations';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-factura',
  templateUrl: './factura.component.html',
  styleUrls: ['./factura.component.css']
})
export class FacturaComponent implements OnInit {
  recuperarToken: string = "";
  facturaDatos: Factura = new Factura(0, "");
  factura: Movimiento[] = [];
  map  = new Map<string, string>();
  datos = [];
  hora= new Date().getHours();
  minutos= new Date().getMinutes();
  segundos= new Date().getSeconds();
  fecha = new Date();
  
  suma:number=0;
  total:number=0;
  cliente:string= "";
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
            this.userService.getFactura(this.recuperarToken).subscribe(
              response => {
                this.facturaDatos = response;
              }
            );

          }
        }
      }
    );
  }

  public SavePDF(idfactura): void {
    this.userService.getFacturaID(idfactura, this.recuperarToken).subscribe(
      response => {
        this.factura = response;
        const doc = new jsPDF();
        const columns = [['Cantidad', 'Precio Salida', 'Producto']];
        this.factura.forEach(element => {
            this.datos.push([element.cantidad,element.preciosalida,element.producto.tipo.nombre]);
            this.suma = Number(element.cantidad) * Number(element.preciosalida);
            this.total = Number(this.suma) + Number(this.total);
            this.cliente = element.cliente;
        });
        this.datos.push(["","","Total: "+this.total]);
        this.datos.push(["","","Iva:  13%"]);
        let day = this.fecha.getDate()
        let month = this.fecha.getMonth() + 1
        let year = this.fecha.getFullYear()
        this.datos.push(["Fecha y Hora: "+day+"/"+month+"/"+year+"  "+this.hora+":"+this.minutos+":"+this.segundos,""]);
        console.log(this.datos);
        const data = this.datos;
        autoTable(doc, {
          head: columns,
          margin:{top:70},
          body: data,
          didDrawPage: (dataArg) => {
            doc.setFontSize(18);
            doc.text("Asesoria Miranda C&F", 132, 10);
            doc.setFontSize(11);
            doc.text("Colombia, Planadas Tolima", 132, 15);
            doc.text("(+57) 312 789 20 19", 132, 20);
            doc.text("miltommiranda@asesoria.com", 132, 25);
            doc.text("www.asesoriamiranda.com", 132, 30);
            doc.line(14, 35, 195, 35);
            doc.text("Daniel Stiven Garcia Miranda", 14, 43);
            doc.text("Colombia, Bogota D.C", 14, 48);
            doc.text("(+57) 317 901 30 01", 14, 53);
            doc.text("garmidan15@gmail.com", 14, 58);
            doc.text('page',150,285);
          }
        });
        doc.save('table.pdf');
      }
    );
  }

}
