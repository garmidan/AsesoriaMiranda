import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { Global } from './Global';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  public url: string;

  constructor(
    private http: HttpClient, private router: Router
  ) {
    /*Url del backend*/
    this.url = Global.url;
  }

  /*Consumiendo Servicios*/
  login(usuario,clave): Observable<any> {
    let headers = new HttpHeaders().set('Content-Type', 'application/json');
    return this.http.get(this.url + 'login/' + usuario + '/'+clave, { headers: headers });
  }
}
