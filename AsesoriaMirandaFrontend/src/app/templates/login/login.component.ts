import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/services/usuario.service';
import { Usuario } from 'src/app/models/Usuario';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  usuario: string = "";
  clave: string = "";
  public usuarioLogin: Usuario;

  constructor(private usuuarioService: UsuarioService) { }

  ngOnInit(): void {
  }


  public login(event) {
    event.preventDefault();
    if (this.usuario == null || this.usuario == "" || this.clave == null || this.clave == "") {
      
    } else {
      this.usuuarioService.login(this.usuario,this.clave).subscribe(
        response => {
          this.usuarioLogin = response;
          console.log(this.usuarioLogin)
        },
        error => {
          this.clave = null;
        }
      )
    }
  }

}
