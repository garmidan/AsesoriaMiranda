import { Component, OnInit } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';
import { Rol } from '../../../models/Rol';
import { Usuario } from '../../../models/Usuario';
import { UsuarioService } from '../../../services/usuario.service';

@Component({
    selector: 'app-header',
    templateUrl: './header.component.html',
    styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
    public pushRightClass: string;
    token: string = "";
    datosUser: Usuario = new Usuario(0,"","","","","","","","",0,new Rol(0,""));

    constructor(private translate: TranslateService, public router: Router,private usuuarioService: UsuarioService) {
        this.router.events.subscribe((val) => {
            if (val instanceof NavigationEnd && window.innerWidth <= 992 && this.isToggled()) {
                this.toggleSidebar();
            }
        });
    }

    ngOnInit() {
        this.pushRightClass = 'push-right';
        this.recuperarToken();
    }

    recuperarToken(){
        if (localStorage.getItem('isLoggedIn') == "true") {
            this.usuuarioService.recuperarToken().subscribe(
                response => {
                  for (const key in response) {
                    if (Object.prototype.hasOwnProperty.call(response, key)) {
                      const element = response[key];
                      this.token = element;
                      this.usuuarioService.datosUsuario(this.token).subscribe(
                        response => {
                          this.datosUser = response;
                        }
                      );
                    }
                  }
                }
              );
        }
    }

    isToggled(): boolean {
        const dom: Element = document.querySelector('body');
        return dom.classList.contains(this.pushRightClass);
    }

    toggleSidebar() {
        const dom: any = document.querySelector('body');
        dom.classList.toggle(this.pushRightClass);
    }

    rltAndLtr() {
        const dom: any = document.querySelector('body');
        dom.classList.toggle('rtl');
    }

    onLoggedout() {
        localStorage.removeItem('isLoggedIn');
    }

    changeLang(language: string) {
        this.translate.use(language);
    }
}
