import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import swal from 'sweetalert2';
import { UsuarioService } from '../../services/usuario.service';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {

  selectedFiles: FileList;
  progress: { percentage: number } = { percentage: 0 };
  currentFileUpload: File;
  constructor(private router: Router, private userService:UsuarioService) { }

  ngOnInit(): void {
    this.validarSession();
  }

  validarSession() {
    if (localStorage.getItem("isLoggedIn") == "false") {
      this.router.navigate(['error-ruta']);
    }
  }

  upload(event) {
      $("#cargarBoton").prop("disabled", event.length == 0);
      this.selectedFiles = event.target.files;
      this.progress.percentage = 0;
      this.currentFileUpload = this.selectedFiles.item(0);
  }

  cargarArchivo(event) {
    this.userService.importArchivo(this.currentFileUpload).subscribe(event => {
      if (event.type === HttpEventType.UploadProgress) {
        this.progress.percentage = Math.round(100 * event.loaded / event.total);
      } else if (event instanceof HttpResponse) {
        this.userService.validarArchivo().subscribe(
          response =>{
            if (response == 2 || response == 0) {
              swal.fire('Informacion !!', 'Debe Cambiar el nombre del archivo', 'warning');
            }else{
              swal.fire('Informacion !!', 'Archivo cargado correctamente', 'success');
            }
          }
        )

      }
      this.selectedFiles = undefined;
    }
    );
  }

  exportPlantilla(event){
    event.preventDefault();
    this.userService.exportPlantilla().subscribe(
      response=>{
        swal.fire('Informacion !!', 'Archivo descargado correctamente (Busque en descargas nombre = Name) recuerde no cambiar el formato de la plantilla ni corregir el encabezado solo ingrese los datos guardarlos, cambiar nombre archivo y carguelo de nuevo', 'success');
      }
    )
  }
}
