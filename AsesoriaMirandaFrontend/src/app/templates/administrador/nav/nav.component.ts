import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Rol } from 'src/app/models/Rol';
import { Usuario } from 'src/app/models/Usuario';
import { UsuarioService } from 'src/app/services/usuario.service';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.css']
})
export class NavComponent implements OnInit {
  
  rol: Rol = new Rol(0, "");
  recuperarToken: string = "";
  informacionUsuario: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
  constructor(private router: Router, private userService: UsuarioService) { }

  ngOnInit(): void {
    this.getRecuperarDatos();
  }

  getRecuperarDatos() {
    this.userService.recuperarToken().subscribe(
      response => {
        for (const key in response) {
          if (Object.prototype.hasOwnProperty.call(response, key)) {
            const element = response[key];
            this.recuperarToken = element;
            this.userService.datosUsuario(this.recuperarToken).subscribe(
              response => {
                this.informacionUsuario = response;
              }
            );
          }
        }
      }
    );
  }
}
