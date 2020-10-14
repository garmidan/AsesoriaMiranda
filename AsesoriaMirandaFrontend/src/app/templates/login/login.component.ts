import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/services/usuario.service';
import { Usuario } from 'src/app/models/Usuario';
import swal from 'sweetalert2';
import { Router } from '@angular/router';
import { Rol } from 'src/app/models/Rol';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  usuario: string = "";
  clave: string = "";
  recuadro: string = "";
  validarCorreo: number = 0;
  confirmarRecuadro: string = "";
  correoOusuario: string = "";
  claveCambiar1: string = "";
  claveCambiar2: string = "";
  pattern: string = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&*+=])(?=\\S+$).{8,}";
  public usuarioLogin: Usuario;

  constructor(private usuuarioService: UsuarioService, private router: Router) {
    this.usuarioLogin = new Usuario(0, "", "", "", "", "", "", "", "", 0, new Rol(0, ""));
  }

  ngOnInit(): void {
    localStorage.setItem('isLoggedIn', "false");
    this.confirmAleatorio();
  }


  public confirmAleatorio() {
    this.confirmarRecuadro = Math.random().toString(36).substring(7);
    $("#recuaid").on('paste', false);
    $("#passworid").on('paste', false);
    $("#passwordConfirmacion").on('paste', false);
  }

  

  public login(event) {
    event.preventDefault();
    if (this.usuario == null || this.usuario == "" || this.clave == null || this.clave == ""
      || this.recuadro == null || this.recuadro == "") {
      swal.fire('Informacion !!', 'Los campos son obligatorios', 'warning');
    } else {
      if (this.confirmarRecuadro == this.recuadro) {
        this.usuuarioService.login(this.usuario, this.clave).subscribe(
          response => {
            this.usuarioLogin = response;
            if (this.usuarioLogin != null) {
              if (this.usuarioLogin.recupcontraseña == 1) {
                $("#usua").hide('slow');
                $("#cambiocontraseña").show('slow');
              } else {
                if (this.usuarioLogin.rol.nombre == "Administrador") {
                  localStorage.setItem('isLoggedIn', "true");
                  this.router.navigate(['administrador']);
                } else {
                  localStorage.setItem('isLoggedIn', "true");
                  this.router.navigate(['administrado']);
                }
              }
            } else {
              swal.fire('Informacion !!', 'Confirme que los datos sean correctos', 'warning');
            }
          },
          error => {
            this.clave = null;
          }
        )
      } else {
        swal.fire('Informacion !!', 'Asegurese de que escriba igual a lo del recuadro', 'warning');
        this.recuadro = null;
        this.confirmarRecuadro = Math.random().toString(36).substring(7);
      }
    }
  }

  public cambiarClave(event) {
    event.preventDefault();
    if (this.claveCambiar1 == null || this.claveCambiar2 == null) {
      swal.fire('Informacion !!', 'Los campos son obligatorios', 'warning');
    } else {
      if (this.claveCambiar1 == this.claveCambiar2) {
        if (this.claveCambiar1.match(this.pattern)) {
          this.usuuarioService.cambiarContraseña(this.claveCambiar1, 0, this.usuarioLogin.idusuario).subscribe(
            response => {
              swal.fire('Informacion !!', 'Bienvenido se ha cambiado la clave exitosamente', 'success');
              if (this.usuarioLogin.rol.nombre == "Administrador") {
                localStorage.setItem('isLoggedIn', "true");
                this.router.navigate(['administrador']);
              } else {
                localStorage.setItem('isLoggedIn', "true");
                this.router.navigate(['administrado']);
              }

            }
          )
        } else {
          swal.fire('Informacion !!', 'La clave debe tener al menos 8 caracteres, Incluir(un numero,una letra mayuscula,una letra miniscula y un simbolo)', 'warning');
        }

      } else {
        swal.fire('Informacion !!', 'las contraseñas no coinciden', 'warning');
      }
    }
  }

  public recuperarClave(event) {
    event.preventDefault();
    if (this.correoOusuario == null) {
      swal.fire('Informacion !!', 'El campo es obligatorio', 'warning');
    } else {
      this.usuuarioService.recuperarContraseña(this.correoOusuario).subscribe(
        response => {
          this.validarCorreo = response;
          if (this.validarCorreo == 1) {
            swal.fire('Informacion !!', 'Se ha enviado una contraseña a su correo', 'success');
            setTimeout(this.mensaje, 1000);
          } else {
            swal.fire('Informacion !!', 'El correo/usuario no existe en nuestro sistema', 'warning');
          }
        }
      )
    }
  }

  mensaje() {
    location.reload();
  }

  public mensajeEntrada() {
    if (this.usuarioLogin.rol.nombre == "Administrador") {
      localStorage.setItem('isLoggedIn', "true");
      this.router.navigate(['administrador']);
    } else {
      localStorage.setItem('isLoggedIn', "true");
      this.router.navigate(['administrado']);
    }
  }
}
