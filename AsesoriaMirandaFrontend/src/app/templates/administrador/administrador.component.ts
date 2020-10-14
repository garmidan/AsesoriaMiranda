import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Rol } from 'src/app/models/Rol';
import swal from 'sweetalert2';
import { Usuario } from 'src/app/models/Usuario';
import { UsuarioService } from 'src/app/services/usuario.service';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-administrador',
  templateUrl: './administrador.component.html',
  styleUrls: ['./administrador.component.css']
})
export class AdministradorComponent implements OnInit {
  rol:Rol = new Rol(0,"");
  usuarioDatos:Usuario = new Usuario(0,"","","","","","","","",0,this.rol);
  listaRol:Rol[]
  constructor(private router: Router, private userService:UsuarioService) { }

  ngOnInit(): void {
    this.validarSession();
    this.getRol();
  }

  validarSession() {
    if (localStorage.getItem("isLoggedIn") == "false") {
      this.router.navigate(['error-ruta']);
    }
  }

  getRol(){
    this.userService.getRol().subscribe(
     response => {
      this.listaRol = response;
     }
      );
  }

  registroUsuario(event){
    event.preventDefault();
    this.userService.registroUsuario(this.usuarioDatos).subscribe(
      response=>{
        if (response == 1) {
          swal.fire('Informacion !!', 'Registro Existoso', 'success');
        } else {
          swal.fire('Informacion !!', 'Ocurrio un error', 'warning');
        }
      }
    )
  }
}
