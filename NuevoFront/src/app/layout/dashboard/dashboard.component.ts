import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Rol } from '../../models/Rol';
import swal from 'sweetalert2';
import { Usuario } from '../../models/Usuario';
import { UsuarioService } from '../../services/usuario.service';
declare var jQuery: any;
declare var $: any
@Component({
    selector: 'app-dashboard',
    templateUrl: './dashboard.component.html',
    styleUrls: ['./dashboard.component.scss'],
})
export class DashboardComponent implements OnInit {
    rol: Rol = new Rol(0, "");
    usuarioDatos: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
    informacionUsuario: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
    listaRol: Rol[];
    datosUser: Usuario = new Usuario(0, "", "", "", "", "", "", "", "", 0, this.rol);
    recuperarToken: string = "";
    nombreUser: string = "";
    constructor(private router: Router, private userService: UsuarioService) { }

    ngOnInit(): void {
        this.validarSession();
        this.getRol();
    }

    validarSession() {
        if (localStorage.getItem("isLoggedIn") == "false") {
            this.router.navigate(['']);
        }
    }


    getRol() {
        this.userService.recuperarToken().subscribe(
            response => {
                for (const key in response) {
                    if (Object.prototype.hasOwnProperty.call(response, key)) {
                        const element = response[key];
                        this.recuperarToken = element;
                        this.userService.getRol(this.recuperarToken).subscribe(
                            response => {
                                this.listaRol = response;
                            }
                        );
                    }
                }
            }
        );
    }



    registroUsuario(event) {
        event.preventDefault();
        console.log(this.recuperarToken);
        this.userService.registroUsuario(this.usuarioDatos, this.recuperarToken).subscribe(
            response => {
                console.log(this.recuperarToken);
                if (response == 1) {
                    swal.fire('Informacion !!', 'Registro Existoso', 'success');
                } else {
                    swal.fire('Informacion !!', 'Ocurrio un error', 'warning');
                }
            }
        )
    }
}
